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
dense_202/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_202/kernel
u
$dense_202/kernel/Read/ReadVariableOpReadVariableOpdense_202/kernel*
_output_shapes

:
*
dtype0
t
dense_202/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_202/bias
m
"dense_202/bias/Read/ReadVariableOpReadVariableOpdense_202/bias*
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
lstm_606/lstm_cell_606/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_606/lstm_cell_606/kernel
?
1lstm_606/lstm_cell_606/kernel/Read/ReadVariableOpReadVariableOplstm_606/lstm_cell_606/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_606/lstm_cell_606/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_606/lstm_cell_606/recurrent_kernel
?
;lstm_606/lstm_cell_606/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_606/lstm_cell_606/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_606/lstm_cell_606/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_606/lstm_cell_606/bias
?
/lstm_606/lstm_cell_606/bias/Read/ReadVariableOpReadVariableOplstm_606/lstm_cell_606/bias*
_output_shapes	
:?*
dtype0
?
lstm_607/lstm_cell_607/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_607/lstm_cell_607/kernel
?
1lstm_607/lstm_cell_607/kernel/Read/ReadVariableOpReadVariableOplstm_607/lstm_cell_607/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_607/lstm_cell_607/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_607/lstm_cell_607/recurrent_kernel
?
;lstm_607/lstm_cell_607/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_607/lstm_cell_607/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_607/lstm_cell_607/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_607/lstm_cell_607/bias
?
/lstm_607/lstm_cell_607/bias/Read/ReadVariableOpReadVariableOplstm_607/lstm_cell_607/bias*
_output_shapes	
:?*
dtype0
?
lstm_608/lstm_cell_608/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_608/lstm_cell_608/kernel
?
1lstm_608/lstm_cell_608/kernel/Read/ReadVariableOpReadVariableOplstm_608/lstm_cell_608/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_608/lstm_cell_608/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_608/lstm_cell_608/recurrent_kernel
?
;lstm_608/lstm_cell_608/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_608/lstm_cell_608/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_608/lstm_cell_608/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_608/lstm_cell_608/bias
?
/lstm_608/lstm_cell_608/bias/Read/ReadVariableOpReadVariableOplstm_608/lstm_cell_608/bias*
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
Adam/dense_202/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_202/kernel/m
?
+Adam/dense_202/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_202/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_202/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_202/bias/m
{
)Adam/dense_202/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_202/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_606/lstm_cell_606/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_606/lstm_cell_606/kernel/m
?
8Adam/lstm_606/lstm_cell_606/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_606/lstm_cell_606/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_606/lstm_cell_606/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_606/lstm_cell_606/recurrent_kernel/m
?
BAdam/lstm_606/lstm_cell_606/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_606/lstm_cell_606/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_606/lstm_cell_606/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_606/lstm_cell_606/bias/m
?
6Adam/lstm_606/lstm_cell_606/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_606/lstm_cell_606/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_607/lstm_cell_607/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_607/lstm_cell_607/kernel/m
?
8Adam/lstm_607/lstm_cell_607/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_607/lstm_cell_607/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_607/lstm_cell_607/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_607/lstm_cell_607/recurrent_kernel/m
?
BAdam/lstm_607/lstm_cell_607/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_607/lstm_cell_607/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_607/lstm_cell_607/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_607/lstm_cell_607/bias/m
?
6Adam/lstm_607/lstm_cell_607/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_607/lstm_cell_607/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_608/lstm_cell_608/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_608/lstm_cell_608/kernel/m
?
8Adam/lstm_608/lstm_cell_608/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_608/lstm_cell_608/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_608/lstm_cell_608/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_608/lstm_cell_608/recurrent_kernel/m
?
BAdam/lstm_608/lstm_cell_608/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_608/lstm_cell_608/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_608/lstm_cell_608/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_608/lstm_cell_608/bias/m
?
6Adam/lstm_608/lstm_cell_608/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_608/lstm_cell_608/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_202/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_202/kernel/v
?
+Adam/dense_202/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_202/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_202/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_202/bias/v
{
)Adam/dense_202/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_202/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_606/lstm_cell_606/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_606/lstm_cell_606/kernel/v
?
8Adam/lstm_606/lstm_cell_606/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_606/lstm_cell_606/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_606/lstm_cell_606/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_606/lstm_cell_606/recurrent_kernel/v
?
BAdam/lstm_606/lstm_cell_606/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_606/lstm_cell_606/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_606/lstm_cell_606/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_606/lstm_cell_606/bias/v
?
6Adam/lstm_606/lstm_cell_606/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_606/lstm_cell_606/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_607/lstm_cell_607/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_607/lstm_cell_607/kernel/v
?
8Adam/lstm_607/lstm_cell_607/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_607/lstm_cell_607/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_607/lstm_cell_607/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_607/lstm_cell_607/recurrent_kernel/v
?
BAdam/lstm_607/lstm_cell_607/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_607/lstm_cell_607/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_607/lstm_cell_607/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_607/lstm_cell_607/bias/v
?
6Adam/lstm_607/lstm_cell_607/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_607/lstm_cell_607/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_608/lstm_cell_608/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_608/lstm_cell_608/kernel/v
?
8Adam/lstm_608/lstm_cell_608/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_608/lstm_cell_608/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_608/lstm_cell_608/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_608/lstm_cell_608/recurrent_kernel/v
?
BAdam/lstm_608/lstm_cell_608/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_608/lstm_cell_608/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_608/lstm_cell_608/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_608/lstm_cell_608/bias/v
?
6Adam/lstm_608/lstm_cell_608/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_608/lstm_cell_608/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?A
value?AB?A B?A
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

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?
 
 
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
 
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
 
 

-0
.1
/2

-0
.1
/2
 
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 
 

00
11
22

00
11
22
 
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
 
 

30
41
52

30
41
52
 
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_202/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_202/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
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
VARIABLE_VALUElstm_606/lstm_cell_606/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_606/lstm_cell_606/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_606/lstm_cell_606/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_607/lstm_cell_607/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_607/lstm_cell_607/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_607/lstm_cell_607/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_608/lstm_cell_608/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_608/lstm_cell_608/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_608/lstm_cell_608/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

d0
 
 
 
 

-0
.1
/2

-0
.1
/2
 
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
 
 

0
 
 
 
 
 

00
11
22

00
11
22
 
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 

30
41
52

30
41
52
 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ttotal
	ucount
v	variables
w	keras_api
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
t0
u1

v	variables
}
VARIABLE_VALUEAdam/dense_202/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_202/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_606/lstm_cell_606/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_606/lstm_cell_606/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_606/lstm_cell_606/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_607/lstm_cell_607/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_607/lstm_cell_607/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_607/lstm_cell_607/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_608/lstm_cell_608/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_608/lstm_cell_608/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_608/lstm_cell_608/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_202/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_202/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_606/lstm_cell_606/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_606/lstm_cell_606/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_606/lstm_cell_606/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_607/lstm_cell_607/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_607/lstm_cell_607/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_607/lstm_cell_607/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_608/lstm_cell_608/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_608/lstm_cell_608/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_608/lstm_cell_608/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_606_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_606_inputlstm_606/lstm_cell_606/kernel'lstm_606/lstm_cell_606/recurrent_kernellstm_606/lstm_cell_606/biaslstm_607/lstm_cell_607/kernel'lstm_607/lstm_cell_607/recurrent_kernellstm_607/lstm_cell_607/biaslstm_608/lstm_cell_608/kernel'lstm_608/lstm_cell_608/recurrent_kernellstm_608/lstm_cell_608/biasdense_202/kerneldense_202/bias*
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
%__inference_signature_wrapper_4225264
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_202/kernel/Read/ReadVariableOp"dense_202/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_606/lstm_cell_606/kernel/Read/ReadVariableOp;lstm_606/lstm_cell_606/recurrent_kernel/Read/ReadVariableOp/lstm_606/lstm_cell_606/bias/Read/ReadVariableOp1lstm_607/lstm_cell_607/kernel/Read/ReadVariableOp;lstm_607/lstm_cell_607/recurrent_kernel/Read/ReadVariableOp/lstm_607/lstm_cell_607/bias/Read/ReadVariableOp1lstm_608/lstm_cell_608/kernel/Read/ReadVariableOp;lstm_608/lstm_cell_608/recurrent_kernel/Read/ReadVariableOp/lstm_608/lstm_cell_608/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_202/kernel/m/Read/ReadVariableOp)Adam/dense_202/bias/m/Read/ReadVariableOp8Adam/lstm_606/lstm_cell_606/kernel/m/Read/ReadVariableOpBAdam/lstm_606/lstm_cell_606/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_606/lstm_cell_606/bias/m/Read/ReadVariableOp8Adam/lstm_607/lstm_cell_607/kernel/m/Read/ReadVariableOpBAdam/lstm_607/lstm_cell_607/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_607/lstm_cell_607/bias/m/Read/ReadVariableOp8Adam/lstm_608/lstm_cell_608/kernel/m/Read/ReadVariableOpBAdam/lstm_608/lstm_cell_608/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_608/lstm_cell_608/bias/m/Read/ReadVariableOp+Adam/dense_202/kernel/v/Read/ReadVariableOp)Adam/dense_202/bias/v/Read/ReadVariableOp8Adam/lstm_606/lstm_cell_606/kernel/v/Read/ReadVariableOpBAdam/lstm_606/lstm_cell_606/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_606/lstm_cell_606/bias/v/Read/ReadVariableOp8Adam/lstm_607/lstm_cell_607/kernel/v/Read/ReadVariableOpBAdam/lstm_607/lstm_cell_607/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_607/lstm_cell_607/bias/v/Read/ReadVariableOp8Adam/lstm_608/lstm_cell_608/kernel/v/Read/ReadVariableOpBAdam/lstm_608/lstm_cell_608/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_608/lstm_cell_608/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4228476
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_202/kerneldense_202/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_606/lstm_cell_606/kernel'lstm_606/lstm_cell_606/recurrent_kernellstm_606/lstm_cell_606/biaslstm_607/lstm_cell_607/kernel'lstm_607/lstm_cell_607/recurrent_kernellstm_607/lstm_cell_607/biaslstm_608/lstm_cell_608/kernel'lstm_608/lstm_cell_608/recurrent_kernellstm_608/lstm_cell_608/biastotalcountAdam/dense_202/kernel/mAdam/dense_202/bias/m$Adam/lstm_606/lstm_cell_606/kernel/m.Adam/lstm_606/lstm_cell_606/recurrent_kernel/m"Adam/lstm_606/lstm_cell_606/bias/m$Adam/lstm_607/lstm_cell_607/kernel/m.Adam/lstm_607/lstm_cell_607/recurrent_kernel/m"Adam/lstm_607/lstm_cell_607/bias/m$Adam/lstm_608/lstm_cell_608/kernel/m.Adam/lstm_608/lstm_cell_608/recurrent_kernel/m"Adam/lstm_608/lstm_cell_608/bias/mAdam/dense_202/kernel/vAdam/dense_202/bias/v$Adam/lstm_606/lstm_cell_606/kernel/v.Adam/lstm_606/lstm_cell_606/recurrent_kernel/v"Adam/lstm_606/lstm_cell_606/bias/v$Adam/lstm_607/lstm_cell_607/kernel/v.Adam/lstm_607/lstm_cell_607/recurrent_kernel/v"Adam/lstm_607/lstm_cell_607/bias/v$Adam/lstm_608/lstm_cell_608/kernel/v.Adam/lstm_608/lstm_cell_608/recurrent_kernel/v"Adam/lstm_608/lstm_cell_608/bias/v*4
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
#__inference__traced_restore_4228606??+
?
?
*__inference_lstm_606_layer_call_fn_4226216

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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4225049s
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
while_cond_4224799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4224799___redundant_placeholder05
1while_while_cond_4224799___redundant_placeholder15
1while_while_cond_4224799___redundant_placeholder25
1while_while_cond_4224799___redundant_placeholder3
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
while_cond_4224964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4224964___redundant_placeholder05
1while_while_cond_4224964___redundant_placeholder15
1while_while_cond_4224964___redundant_placeholder25
1while_while_cond_4224964___redundant_placeholder3
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
while_body_4226418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_696_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_696_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_696_matmul_readvariableop_resource:	?G
4while_lstm_cell_696_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_696_biasadd_readvariableop_resource:	???*while/lstm_cell_696/BiasAdd/ReadVariableOp?)while/lstm_cell_696/MatMul/ReadVariableOp?+while/lstm_cell_696/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_696/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_696/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_696/addAddV2$while/lstm_cell_696/MatMul:product:0&while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_696/BiasAddBiasAddwhile/lstm_cell_696/add:z:02while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_696/splitSplit,while/lstm_cell_696/split/split_dim:output:0$while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_696/SigmoidSigmoid"while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_1Sigmoid"while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mulMul!while/lstm_cell_696/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_696/ReluRelu"while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_1Mulwhile/lstm_cell_696/Sigmoid:y:0&while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/add_1AddV2while/lstm_cell_696/mul:z:0while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_2Sigmoid"while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_696/Relu_1Reluwhile/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_2Mul!while/lstm_cell_696/Sigmoid_2:y:0(while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_696/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_696/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_696/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_696/BiasAdd/ReadVariableOp*^while/lstm_cell_696/MatMul/ReadVariableOp,^while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_696_biasadd_readvariableop_resource5while_lstm_cell_696_biasadd_readvariableop_resource_0"n
4while_lstm_cell_696_matmul_1_readvariableop_resource6while_lstm_cell_696_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_696_matmul_readvariableop_resource4while_lstm_cell_696_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_696/BiasAdd/ReadVariableOp*while/lstm_cell_696/BiasAdd/ReadVariableOp2V
)while/lstm_cell_696/MatMul/ReadVariableOp)while/lstm_cell_696/MatMul/ReadVariableOp2Z
+while/lstm_cell_696/MatMul_1/ReadVariableOp+while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4227034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_697_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_697_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_697_matmul_readvariableop_resource:	d?G
4while_lstm_cell_697_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_697_biasadd_readvariableop_resource:	???*while/lstm_cell_697/BiasAdd/ReadVariableOp?)while/lstm_cell_697/MatMul/ReadVariableOp?+while/lstm_cell_697/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_697/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_697/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_697/addAddV2$while/lstm_cell_697/MatMul:product:0&while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_697/BiasAddBiasAddwhile/lstm_cell_697/add:z:02while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_697/splitSplit,while/lstm_cell_697/split/split_dim:output:0$while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_697/SigmoidSigmoid"while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_1Sigmoid"while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mulMul!while/lstm_cell_697/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_697/ReluRelu"while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_1Mulwhile/lstm_cell_697/Sigmoid:y:0&while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/add_1AddV2while/lstm_cell_697/mul:z:0while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_2Sigmoid"while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_697/Relu_1Reluwhile/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_2Mul!while/lstm_cell_697/Sigmoid_2:y:0(while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_697/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_697/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_697/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_697/BiasAdd/ReadVariableOp*^while/lstm_cell_697/MatMul/ReadVariableOp,^while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_697_biasadd_readvariableop_resource5while_lstm_cell_697_biasadd_readvariableop_resource_0"n
4while_lstm_cell_697_matmul_1_readvariableop_resource6while_lstm_cell_697_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_697_matmul_readvariableop_resource4while_lstm_cell_697_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_697/BiasAdd/ReadVariableOp*while/lstm_cell_697/BiasAdd/ReadVariableOp2V
)while/lstm_cell_697/MatMul/ReadVariableOp)while/lstm_cell_697/MatMul/ReadVariableOp2Z
+while/lstm_cell_697/MatMul_1/ReadVariableOp+while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4227935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4227935___redundant_placeholder05
1while_while_cond_4227935___redundant_placeholder15
1while_while_cond_4227935___redundant_placeholder25
1while_while_cond_4227935___redundant_placeholder3
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227404

inputs?
,lstm_cell_697_matmul_readvariableop_resource:	d?A
.lstm_cell_697_matmul_1_readvariableop_resource:	2?<
-lstm_cell_697_biasadd_readvariableop_resource:	?
identity??$lstm_cell_697/BiasAdd/ReadVariableOp?#lstm_cell_697/MatMul/ReadVariableOp?%lstm_cell_697/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_697/MatMul/ReadVariableOpReadVariableOp,lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_697/MatMulMatMulstrided_slice_2:output:0+lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_697/MatMul_1MatMulzeros:output:0-lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_697/addAddV2lstm_cell_697/MatMul:product:0 lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_697/BiasAddBiasAddlstm_cell_697/add:z:0,lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_697/splitSplit&lstm_cell_697/split/split_dim:output:0lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_697/SigmoidSigmoidlstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_1Sigmoidlstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_697/mulMullstm_cell_697/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_697/ReluRelulstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_1Mullstm_cell_697/Sigmoid:y:0 lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_697/add_1AddV2lstm_cell_697/mul:z:0lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_2Sigmoidlstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_697/Relu_1Relulstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_2Mullstm_cell_697/Sigmoid_2:y:0"lstm_cell_697/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_697_matmul_readvariableop_resource.lstm_cell_697_matmul_1_readvariableop_resource-lstm_cell_697_biasadd_readvariableop_resource*
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
while_body_4227320*
condR
while_cond_4227319*K
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
NoOpNoOp%^lstm_cell_697/BiasAdd/ReadVariableOp$^lstm_cell_697/MatMul/ReadVariableOp&^lstm_cell_697/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_697/BiasAdd/ReadVariableOp$lstm_cell_697/BiasAdd/ReadVariableOp2J
#lstm_cell_697/MatMul/ReadVariableOp#lstm_cell_697/MatMul/ReadVariableOp2N
%lstm_cell_697/MatMul_1/ReadVariableOp%lstm_cell_697/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4227650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_698_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_698_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_698_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_698_matmul_readvariableop_resource:2(F
4while_lstm_cell_698_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_698_biasadd_readvariableop_resource:(??*while/lstm_cell_698/BiasAdd/ReadVariableOp?)while/lstm_cell_698/MatMul/ReadVariableOp?+while/lstm_cell_698/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_698/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_698/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_698/addAddV2$while/lstm_cell_698/MatMul:product:0&while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_698/BiasAddBiasAddwhile/lstm_cell_698/add:z:02while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_698/splitSplit,while/lstm_cell_698/split/split_dim:output:0$while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_698/SigmoidSigmoid"while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_1Sigmoid"while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mulMul!while/lstm_cell_698/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_698/ReluRelu"while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_1Mulwhile/lstm_cell_698/Sigmoid:y:0&while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/add_1AddV2while/lstm_cell_698/mul:z:0while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_2Sigmoid"while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_698/Relu_1Reluwhile/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_2Mul!while/lstm_cell_698/Sigmoid_2:y:0(while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_698/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_698/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_698/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_698/BiasAdd/ReadVariableOp*^while/lstm_cell_698/MatMul/ReadVariableOp,^while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_698_biasadd_readvariableop_resource5while_lstm_cell_698_biasadd_readvariableop_resource_0"n
4while_lstm_cell_698_matmul_1_readvariableop_resource6while_lstm_cell_698_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_698_matmul_readvariableop_resource4while_lstm_cell_698_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_698/BiasAdd/ReadVariableOp*while/lstm_cell_698/BiasAdd/ReadVariableOp2V
)while/lstm_cell_698/MatMul/ReadVariableOp)while/lstm_cell_698/MatMul/ReadVariableOp2Z
+while/lstm_cell_698/MatMul_1/ReadVariableOp+while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_202_layer_call_and_return_conditional_losses_4224521

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
?
?
*__inference_lstm_608_layer_call_fn_4227448

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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224719o
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
*__inference_lstm_606_layer_call_fn_4226183
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4223154|
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4228301

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
*__inference_lstm_607_layer_call_fn_4226832

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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4224884s
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
while_cond_4223275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4223275___redundant_placeholder05
1while_while_cond_4223275___redundant_placeholder15
1while_while_cond_4223275___redundant_placeholder25
1while_while_cond_4223275___redundant_placeholder3
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226502
inputs_0?
,lstm_cell_696_matmul_readvariableop_resource:	?A
.lstm_cell_696_matmul_1_readvariableop_resource:	d?<
-lstm_cell_696_biasadd_readvariableop_resource:	?
identity??$lstm_cell_696/BiasAdd/ReadVariableOp?#lstm_cell_696/MatMul/ReadVariableOp?%lstm_cell_696/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_696/MatMul/ReadVariableOpReadVariableOp,lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_696/MatMulMatMulstrided_slice_2:output:0+lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_696/MatMul_1MatMulzeros:output:0-lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_696/addAddV2lstm_cell_696/MatMul:product:0 lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_696/BiasAddBiasAddlstm_cell_696/add:z:0,lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_696/splitSplit&lstm_cell_696/split/split_dim:output:0lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_696/SigmoidSigmoidlstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_1Sigmoidlstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_696/mulMullstm_cell_696/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_696/ReluRelulstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_1Mullstm_cell_696/Sigmoid:y:0 lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_696/add_1AddV2lstm_cell_696/mul:z:0lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_2Sigmoidlstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_696/Relu_1Relulstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_2Mullstm_cell_696/Sigmoid_2:y:0"lstm_cell_696/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_696_matmul_readvariableop_resource.lstm_cell_696_matmul_1_readvariableop_resource-lstm_cell_696_biasadd_readvariableop_resource*
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
while_body_4226418*
condR
while_cond_4226417*K
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
NoOpNoOp%^lstm_cell_696/BiasAdd/ReadVariableOp$^lstm_cell_696/MatMul/ReadVariableOp&^lstm_cell_696/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_696/BiasAdd/ReadVariableOp$lstm_cell_696/BiasAdd/ReadVariableOp2J
#lstm_cell_696/MatMul/ReadVariableOp#lstm_cell_696/MatMul/ReadVariableOp2N
%lstm_cell_696/MatMul_1/ReadVariableOp%lstm_cell_696/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_608_layer_call_fn_4227437

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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224503o
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
while_body_4227177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_697_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_697_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_697_matmul_readvariableop_resource:	d?G
4while_lstm_cell_697_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_697_biasadd_readvariableop_resource:	???*while/lstm_cell_697/BiasAdd/ReadVariableOp?)while/lstm_cell_697/MatMul/ReadVariableOp?+while/lstm_cell_697/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_697/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_697/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_697/addAddV2$while/lstm_cell_697/MatMul:product:0&while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_697/BiasAddBiasAddwhile/lstm_cell_697/add:z:02while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_697/splitSplit,while/lstm_cell_697/split/split_dim:output:0$while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_697/SigmoidSigmoid"while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_1Sigmoid"while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mulMul!while/lstm_cell_697/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_697/ReluRelu"while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_1Mulwhile/lstm_cell_697/Sigmoid:y:0&while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/add_1AddV2while/lstm_cell_697/mul:z:0while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_2Sigmoid"while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_697/Relu_1Reluwhile/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_2Mul!while/lstm_cell_697/Sigmoid_2:y:0(while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_697/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_697/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_697/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_697/BiasAdd/ReadVariableOp*^while/lstm_cell_697/MatMul/ReadVariableOp,^while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_697_biasadd_readvariableop_resource5while_lstm_cell_697_biasadd_readvariableop_resource_0"n
4while_lstm_cell_697_matmul_1_readvariableop_resource6while_lstm_cell_697_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_697_matmul_readvariableop_resource4while_lstm_cell_697_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_697/BiasAdd/ReadVariableOp*while/lstm_cell_697/BiasAdd/ReadVariableOp2V
)while/lstm_cell_697/MatMul/ReadVariableOp)while/lstm_cell_697/MatMul/ReadVariableOp2Z
+while/lstm_cell_697/MatMul_1/ReadVariableOp+while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_606_while_cond_4225376.
*lstm_606_while_lstm_606_while_loop_counter4
0lstm_606_while_lstm_606_while_maximum_iterations
lstm_606_while_placeholder 
lstm_606_while_placeholder_1 
lstm_606_while_placeholder_2 
lstm_606_while_placeholder_30
,lstm_606_while_less_lstm_606_strided_slice_1G
Clstm_606_while_lstm_606_while_cond_4225376___redundant_placeholder0G
Clstm_606_while_lstm_606_while_cond_4225376___redundant_placeholder1G
Clstm_606_while_lstm_606_while_cond_4225376___redundant_placeholder2G
Clstm_606_while_lstm_606_while_cond_4225376___redundant_placeholder3
lstm_606_while_identity
?
lstm_606/while/LessLesslstm_606_while_placeholder,lstm_606_while_less_lstm_606_strided_slice_1*
T0*
_output_shapes
: ]
lstm_606/while/IdentityIdentitylstm_606/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_606_while_identity lstm_606/while/Identity:output:0*(
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4223771

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
while_cond_4227792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4227792___redundant_placeholder05
1while_while_cond_4227792___redundant_placeholder15
1while_while_cond_4227792___redundant_placeholder25
1while_while_cond_4227792___redundant_placeholder3
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4226172

inputsH
5lstm_606_lstm_cell_696_matmul_readvariableop_resource:	?J
7lstm_606_lstm_cell_696_matmul_1_readvariableop_resource:	d?E
6lstm_606_lstm_cell_696_biasadd_readvariableop_resource:	?H
5lstm_607_lstm_cell_697_matmul_readvariableop_resource:	d?J
7lstm_607_lstm_cell_697_matmul_1_readvariableop_resource:	2?E
6lstm_607_lstm_cell_697_biasadd_readvariableop_resource:	?G
5lstm_608_lstm_cell_698_matmul_readvariableop_resource:2(I
7lstm_608_lstm_cell_698_matmul_1_readvariableop_resource:
(D
6lstm_608_lstm_cell_698_biasadd_readvariableop_resource:(:
(dense_202_matmul_readvariableop_resource:
7
)dense_202_biasadd_readvariableop_resource:
identity?? dense_202/BiasAdd/ReadVariableOp?dense_202/MatMul/ReadVariableOp?-lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp?,lstm_606/lstm_cell_696/MatMul/ReadVariableOp?.lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp?lstm_606/while?-lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp?,lstm_607/lstm_cell_697/MatMul/ReadVariableOp?.lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp?lstm_607/while?-lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp?,lstm_608/lstm_cell_698/MatMul/ReadVariableOp?.lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp?lstm_608/whileD
lstm_606/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_606/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_606/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_606/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_606/strided_sliceStridedSlicelstm_606/Shape:output:0%lstm_606/strided_slice/stack:output:0'lstm_606/strided_slice/stack_1:output:0'lstm_606/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_606/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_606/zeros/packedPacklstm_606/strided_slice:output:0 lstm_606/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_606/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_606/zerosFilllstm_606/zeros/packed:output:0lstm_606/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_606/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_606/zeros_1/packedPacklstm_606/strided_slice:output:0"lstm_606/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_606/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_606/zeros_1Fill lstm_606/zeros_1/packed:output:0lstm_606/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_606/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_606/transpose	Transposeinputs lstm_606/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_606/Shape_1Shapelstm_606/transpose:y:0*
T0*
_output_shapes
:h
lstm_606/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_606/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_606/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_606/strided_slice_1StridedSlicelstm_606/Shape_1:output:0'lstm_606/strided_slice_1/stack:output:0)lstm_606/strided_slice_1/stack_1:output:0)lstm_606/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_606/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_606/TensorArrayV2TensorListReserve-lstm_606/TensorArrayV2/element_shape:output:0!lstm_606/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_606/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_606/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_606/transpose:y:0Glstm_606/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_606/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_606/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_606/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_606/strided_slice_2StridedSlicelstm_606/transpose:y:0'lstm_606/strided_slice_2/stack:output:0)lstm_606/strided_slice_2/stack_1:output:0)lstm_606/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_606/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp5lstm_606_lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_606/lstm_cell_696/MatMulMatMul!lstm_606/strided_slice_2:output:04lstm_606/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_606/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp7lstm_606_lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_606/lstm_cell_696/MatMul_1MatMullstm_606/zeros:output:06lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_606/lstm_cell_696/addAddV2'lstm_606/lstm_cell_696/MatMul:product:0)lstm_606/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_606/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp6lstm_606_lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_606/lstm_cell_696/BiasAddBiasAddlstm_606/lstm_cell_696/add:z:05lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_606/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_606/lstm_cell_696/splitSplit/lstm_606/lstm_cell_696/split/split_dim:output:0'lstm_606/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_606/lstm_cell_696/SigmoidSigmoid%lstm_606/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_606/lstm_cell_696/Sigmoid_1Sigmoid%lstm_606/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_606/lstm_cell_696/mulMul$lstm_606/lstm_cell_696/Sigmoid_1:y:0lstm_606/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_606/lstm_cell_696/ReluRelu%lstm_606/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_606/lstm_cell_696/mul_1Mul"lstm_606/lstm_cell_696/Sigmoid:y:0)lstm_606/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_606/lstm_cell_696/add_1AddV2lstm_606/lstm_cell_696/mul:z:0 lstm_606/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_606/lstm_cell_696/Sigmoid_2Sigmoid%lstm_606/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_606/lstm_cell_696/Relu_1Relu lstm_606/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_606/lstm_cell_696/mul_2Mul$lstm_606/lstm_cell_696/Sigmoid_2:y:0+lstm_606/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_606/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_606/TensorArrayV2_1TensorListReserve/lstm_606/TensorArrayV2_1/element_shape:output:0!lstm_606/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_606/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_606/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_606/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_606/whileWhile$lstm_606/while/loop_counter:output:0*lstm_606/while/maximum_iterations:output:0lstm_606/time:output:0!lstm_606/TensorArrayV2_1:handle:0lstm_606/zeros:output:0lstm_606/zeros_1:output:0!lstm_606/strided_slice_1:output:0@lstm_606/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_606_lstm_cell_696_matmul_readvariableop_resource7lstm_606_lstm_cell_696_matmul_1_readvariableop_resource6lstm_606_lstm_cell_696_biasadd_readvariableop_resource*
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
lstm_606_while_body_4225804*'
condR
lstm_606_while_cond_4225803*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_606/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_606/TensorArrayV2Stack/TensorListStackTensorListStacklstm_606/while:output:3Blstm_606/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_606/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_606/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_606/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_606/strided_slice_3StridedSlice4lstm_606/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_606/strided_slice_3/stack:output:0)lstm_606/strided_slice_3/stack_1:output:0)lstm_606/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_606/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_606/transpose_1	Transpose4lstm_606/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_606/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_606/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_607/ShapeShapelstm_606/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_607/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_607/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_607/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_607/strided_sliceStridedSlicelstm_607/Shape:output:0%lstm_607/strided_slice/stack:output:0'lstm_607/strided_slice/stack_1:output:0'lstm_607/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_607/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_607/zeros/packedPacklstm_607/strided_slice:output:0 lstm_607/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_607/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_607/zerosFilllstm_607/zeros/packed:output:0lstm_607/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_607/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_607/zeros_1/packedPacklstm_607/strided_slice:output:0"lstm_607/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_607/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_607/zeros_1Fill lstm_607/zeros_1/packed:output:0lstm_607/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_607/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_607/transpose	Transposelstm_606/transpose_1:y:0 lstm_607/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_607/Shape_1Shapelstm_607/transpose:y:0*
T0*
_output_shapes
:h
lstm_607/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_607/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_607/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_607/strided_slice_1StridedSlicelstm_607/Shape_1:output:0'lstm_607/strided_slice_1/stack:output:0)lstm_607/strided_slice_1/stack_1:output:0)lstm_607/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_607/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_607/TensorArrayV2TensorListReserve-lstm_607/TensorArrayV2/element_shape:output:0!lstm_607/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_607/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_607/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_607/transpose:y:0Glstm_607/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_607/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_607/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_607/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_607/strided_slice_2StridedSlicelstm_607/transpose:y:0'lstm_607/strided_slice_2/stack:output:0)lstm_607/strided_slice_2/stack_1:output:0)lstm_607/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_607/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp5lstm_607_lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_607/lstm_cell_697/MatMulMatMul!lstm_607/strided_slice_2:output:04lstm_607/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_607/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp7lstm_607_lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_607/lstm_cell_697/MatMul_1MatMullstm_607/zeros:output:06lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_607/lstm_cell_697/addAddV2'lstm_607/lstm_cell_697/MatMul:product:0)lstm_607/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_607/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp6lstm_607_lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_607/lstm_cell_697/BiasAddBiasAddlstm_607/lstm_cell_697/add:z:05lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_607/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_607/lstm_cell_697/splitSplit/lstm_607/lstm_cell_697/split/split_dim:output:0'lstm_607/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_607/lstm_cell_697/SigmoidSigmoid%lstm_607/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_607/lstm_cell_697/Sigmoid_1Sigmoid%lstm_607/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_607/lstm_cell_697/mulMul$lstm_607/lstm_cell_697/Sigmoid_1:y:0lstm_607/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_607/lstm_cell_697/ReluRelu%lstm_607/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_607/lstm_cell_697/mul_1Mul"lstm_607/lstm_cell_697/Sigmoid:y:0)lstm_607/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_607/lstm_cell_697/add_1AddV2lstm_607/lstm_cell_697/mul:z:0 lstm_607/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_607/lstm_cell_697/Sigmoid_2Sigmoid%lstm_607/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_607/lstm_cell_697/Relu_1Relu lstm_607/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_607/lstm_cell_697/mul_2Mul$lstm_607/lstm_cell_697/Sigmoid_2:y:0+lstm_607/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_607/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_607/TensorArrayV2_1TensorListReserve/lstm_607/TensorArrayV2_1/element_shape:output:0!lstm_607/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_607/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_607/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_607/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_607/whileWhile$lstm_607/while/loop_counter:output:0*lstm_607/while/maximum_iterations:output:0lstm_607/time:output:0!lstm_607/TensorArrayV2_1:handle:0lstm_607/zeros:output:0lstm_607/zeros_1:output:0!lstm_607/strided_slice_1:output:0@lstm_607/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_607_lstm_cell_697_matmul_readvariableop_resource7lstm_607_lstm_cell_697_matmul_1_readvariableop_resource6lstm_607_lstm_cell_697_biasadd_readvariableop_resource*
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
lstm_607_while_body_4225943*'
condR
lstm_607_while_cond_4225942*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_607/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_607/TensorArrayV2Stack/TensorListStackTensorListStacklstm_607/while:output:3Blstm_607/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_607/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_607/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_607/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_607/strided_slice_3StridedSlice4lstm_607/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_607/strided_slice_3/stack:output:0)lstm_607/strided_slice_3/stack_1:output:0)lstm_607/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_607/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_607/transpose_1	Transpose4lstm_607/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_607/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_607/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_608/ShapeShapelstm_607/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_608/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_608/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_608/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_608/strided_sliceStridedSlicelstm_608/Shape:output:0%lstm_608/strided_slice/stack:output:0'lstm_608/strided_slice/stack_1:output:0'lstm_608/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_608/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_608/zeros/packedPacklstm_608/strided_slice:output:0 lstm_608/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_608/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_608/zerosFilllstm_608/zeros/packed:output:0lstm_608/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_608/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_608/zeros_1/packedPacklstm_608/strided_slice:output:0"lstm_608/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_608/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_608/zeros_1Fill lstm_608/zeros_1/packed:output:0lstm_608/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_608/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_608/transpose	Transposelstm_607/transpose_1:y:0 lstm_608/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_608/Shape_1Shapelstm_608/transpose:y:0*
T0*
_output_shapes
:h
lstm_608/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_608/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_608/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_608/strided_slice_1StridedSlicelstm_608/Shape_1:output:0'lstm_608/strided_slice_1/stack:output:0)lstm_608/strided_slice_1/stack_1:output:0)lstm_608/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_608/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_608/TensorArrayV2TensorListReserve-lstm_608/TensorArrayV2/element_shape:output:0!lstm_608/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_608/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_608/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_608/transpose:y:0Glstm_608/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_608/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_608/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_608/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_608/strided_slice_2StridedSlicelstm_608/transpose:y:0'lstm_608/strided_slice_2/stack:output:0)lstm_608/strided_slice_2/stack_1:output:0)lstm_608/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_608/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp5lstm_608_lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_608/lstm_cell_698/MatMulMatMul!lstm_608/strided_slice_2:output:04lstm_608/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_608/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp7lstm_608_lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_608/lstm_cell_698/MatMul_1MatMullstm_608/zeros:output:06lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_608/lstm_cell_698/addAddV2'lstm_608/lstm_cell_698/MatMul:product:0)lstm_608/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_608/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp6lstm_608_lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_608/lstm_cell_698/BiasAddBiasAddlstm_608/lstm_cell_698/add:z:05lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_608/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_608/lstm_cell_698/splitSplit/lstm_608/lstm_cell_698/split/split_dim:output:0'lstm_608/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_608/lstm_cell_698/SigmoidSigmoid%lstm_608/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_608/lstm_cell_698/Sigmoid_1Sigmoid%lstm_608/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_608/lstm_cell_698/mulMul$lstm_608/lstm_cell_698/Sigmoid_1:y:0lstm_608/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_608/lstm_cell_698/ReluRelu%lstm_608/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_608/lstm_cell_698/mul_1Mul"lstm_608/lstm_cell_698/Sigmoid:y:0)lstm_608/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_608/lstm_cell_698/add_1AddV2lstm_608/lstm_cell_698/mul:z:0 lstm_608/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_608/lstm_cell_698/Sigmoid_2Sigmoid%lstm_608/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_608/lstm_cell_698/Relu_1Relu lstm_608/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_608/lstm_cell_698/mul_2Mul$lstm_608/lstm_cell_698/Sigmoid_2:y:0+lstm_608/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_608/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_608/TensorArrayV2_1TensorListReserve/lstm_608/TensorArrayV2_1/element_shape:output:0!lstm_608/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_608/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_608/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_608/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_608/whileWhile$lstm_608/while/loop_counter:output:0*lstm_608/while/maximum_iterations:output:0lstm_608/time:output:0!lstm_608/TensorArrayV2_1:handle:0lstm_608/zeros:output:0lstm_608/zeros_1:output:0!lstm_608/strided_slice_1:output:0@lstm_608/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_608_lstm_cell_698_matmul_readvariableop_resource7lstm_608_lstm_cell_698_matmul_1_readvariableop_resource6lstm_608_lstm_cell_698_biasadd_readvariableop_resource*
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
lstm_608_while_body_4226082*'
condR
lstm_608_while_cond_4226081*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_608/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_608/TensorArrayV2Stack/TensorListStackTensorListStacklstm_608/while:output:3Blstm_608/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_608/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_608/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_608/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_608/strided_slice_3StridedSlice4lstm_608/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_608/strided_slice_3/stack:output:0)lstm_608/strided_slice_3/stack_1:output:0)lstm_608/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_608/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_608/transpose_1	Transpose4lstm_608/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_608/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_608/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_202/MatMul/ReadVariableOpReadVariableOp(dense_202_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_202/MatMulMatMul!lstm_608/strided_slice_3:output:0'dense_202/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_202/BiasAdd/ReadVariableOpReadVariableOp)dense_202_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_202/BiasAddBiasAdddense_202/MatMul:product:0(dense_202/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_202/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_202/BiasAdd/ReadVariableOp ^dense_202/MatMul/ReadVariableOp.^lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp-^lstm_606/lstm_cell_696/MatMul/ReadVariableOp/^lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp^lstm_606/while.^lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp-^lstm_607/lstm_cell_697/MatMul/ReadVariableOp/^lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp^lstm_607/while.^lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp-^lstm_608/lstm_cell_698/MatMul/ReadVariableOp/^lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp^lstm_608/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_202/BiasAdd/ReadVariableOp dense_202/BiasAdd/ReadVariableOp2B
dense_202/MatMul/ReadVariableOpdense_202/MatMul/ReadVariableOp2^
-lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp-lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp2\
,lstm_606/lstm_cell_696/MatMul/ReadVariableOp,lstm_606/lstm_cell_696/MatMul/ReadVariableOp2`
.lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp.lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp2 
lstm_606/whilelstm_606/while2^
-lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp-lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp2\
,lstm_607/lstm_cell_697/MatMul/ReadVariableOp,lstm_607/lstm_cell_697/MatMul/ReadVariableOp2`
.lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp.lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp2 
lstm_607/whilelstm_607/while2^
-lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp-lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp2\
,lstm_608/lstm_cell_698/MatMul/ReadVariableOp,lstm_608/lstm_cell_698/MatMul/ReadVariableOp2`
.lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp.lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp2 
lstm_608/whilelstm_608/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*sequential_202_lstm_608_while_cond_4222913L
Hsequential_202_lstm_608_while_sequential_202_lstm_608_while_loop_counterR
Nsequential_202_lstm_608_while_sequential_202_lstm_608_while_maximum_iterations-
)sequential_202_lstm_608_while_placeholder/
+sequential_202_lstm_608_while_placeholder_1/
+sequential_202_lstm_608_while_placeholder_2/
+sequential_202_lstm_608_while_placeholder_3N
Jsequential_202_lstm_608_while_less_sequential_202_lstm_608_strided_slice_1e
asequential_202_lstm_608_while_sequential_202_lstm_608_while_cond_4222913___redundant_placeholder0e
asequential_202_lstm_608_while_sequential_202_lstm_608_while_cond_4222913___redundant_placeholder1e
asequential_202_lstm_608_while_sequential_202_lstm_608_while_cond_4222913___redundant_placeholder2e
asequential_202_lstm_608_while_sequential_202_lstm_608_while_cond_4222913___redundant_placeholder3*
&sequential_202_lstm_608_while_identity
?
"sequential_202/lstm_608/while/LessLess)sequential_202_lstm_608_while_placeholderJsequential_202_lstm_608_while_less_sequential_202_lstm_608_strided_slice_1*
T0*
_output_shapes
: {
&sequential_202/lstm_608/while/IdentityIdentity&sequential_202/lstm_608/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_202_lstm_608_while_identity/sequential_202/lstm_608/while/Identity:output:0*(
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
while_cond_4227506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4227506___redundant_placeholder05
1while_while_cond_4227506___redundant_placeholder15
1while_while_cond_4227506___redundant_placeholder25
1while_while_cond_4227506___redundant_placeholder3
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
while_body_4223976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_698_4224000_0:2(/
while_lstm_cell_698_4224002_0:
(+
while_lstm_cell_698_4224004_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_698_4224000:2(-
while_lstm_cell_698_4224002:
()
while_lstm_cell_698_4224004:(??+while/lstm_cell_698/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_698/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_698_4224000_0while_lstm_cell_698_4224002_0while_lstm_cell_698_4224004_0*
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4223917?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_698/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_698/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_698/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_698/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_698_4224000while_lstm_cell_698_4224000_0"<
while_lstm_cell_698_4224002while_lstm_cell_698_4224002_0"<
while_lstm_cell_698_4224004while_lstm_cell_698_4224004_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_698/StatefulPartitionedCall+while/lstm_cell_698/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4223626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_697_4223650_0:	d?0
while_lstm_cell_697_4223652_0:	2?,
while_lstm_cell_697_4223654_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_697_4223650:	d?.
while_lstm_cell_697_4223652:	2?*
while_lstm_cell_697_4223654:	???+while/lstm_cell_697/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_697/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_697_4223650_0while_lstm_cell_697_4223652_0while_lstm_cell_697_4223654_0*
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4223567?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_697/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_697/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_697/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_697/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_697_4223650while_lstm_cell_697_4223650_0"<
while_lstm_cell_697_4223652while_lstm_cell_697_4223652_0"<
while_lstm_cell_697_4223654while_lstm_cell_697_4223654_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_697/StatefulPartitionedCall+while/lstm_cell_697/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4223276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_696_4223300_0:	?0
while_lstm_cell_696_4223302_0:	d?,
while_lstm_cell_696_4223304_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_696_4223300:	?.
while_lstm_cell_696_4223302:	d?*
while_lstm_cell_696_4223304:	???+while/lstm_cell_696/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_696/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_696_4223300_0while_lstm_cell_696_4223302_0while_lstm_cell_696_4223304_0*
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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4223217?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_696/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_696/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_696/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_696/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_696_4223300while_lstm_cell_696_4223300_0"<
while_lstm_cell_696_4223302while_lstm_cell_696_4223302_0"<
while_lstm_cell_696_4223304while_lstm_cell_696_4223304_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_696/StatefulPartitionedCall+while/lstm_cell_696/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4226561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_696_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_696_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_696_matmul_readvariableop_resource:	?G
4while_lstm_cell_696_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_696_biasadd_readvariableop_resource:	???*while/lstm_cell_696/BiasAdd/ReadVariableOp?)while/lstm_cell_696/MatMul/ReadVariableOp?+while/lstm_cell_696/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_696/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_696/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_696/addAddV2$while/lstm_cell_696/MatMul:product:0&while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_696/BiasAddBiasAddwhile/lstm_cell_696/add:z:02while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_696/splitSplit,while/lstm_cell_696/split/split_dim:output:0$while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_696/SigmoidSigmoid"while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_1Sigmoid"while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mulMul!while/lstm_cell_696/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_696/ReluRelu"while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_1Mulwhile/lstm_cell_696/Sigmoid:y:0&while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/add_1AddV2while/lstm_cell_696/mul:z:0while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_2Sigmoid"while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_696/Relu_1Reluwhile/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_2Mul!while/lstm_cell_696/Sigmoid_2:y:0(while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_696/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_696/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_696/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_696/BiasAdd/ReadVariableOp*^while/lstm_cell_696/MatMul/ReadVariableOp,^while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_696_biasadd_readvariableop_resource5while_lstm_cell_696_biasadd_readvariableop_resource_0"n
4while_lstm_cell_696_matmul_1_readvariableop_resource6while_lstm_cell_696_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_696_matmul_readvariableop_resource4while_lstm_cell_696_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_696/BiasAdd/ReadVariableOp*while/lstm_cell_696/BiasAdd/ReadVariableOp2V
)while/lstm_cell_696/MatMul/ReadVariableOp)while/lstm_cell_696/MatMul/ReadVariableOp2Z
+while/lstm_cell_696/MatMul_1/ReadVariableOp+while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_202_layer_call_fn_4225169
lstm_606_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_606_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225117o
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
_user_specified_namelstm_606_input
?

?
lstm_607_while_cond_4225515.
*lstm_607_while_lstm_607_while_loop_counter4
0lstm_607_while_lstm_607_while_maximum_iterations
lstm_607_while_placeholder 
lstm_607_while_placeholder_1 
lstm_607_while_placeholder_2 
lstm_607_while_placeholder_30
,lstm_607_while_less_lstm_607_strided_slice_1G
Clstm_607_while_lstm_607_while_cond_4225515___redundant_placeholder0G
Clstm_607_while_lstm_607_while_cond_4225515___redundant_placeholder1G
Clstm_607_while_lstm_607_while_cond_4225515___redundant_placeholder2G
Clstm_607_while_lstm_607_while_cond_4225515___redundant_placeholder3
lstm_607_while_identity
?
lstm_607/while/LessLesslstm_607_while_placeholder,lstm_607_while_less_lstm_607_strided_slice_1*
T0*
_output_shapes
: ]
lstm_607/while/IdentityIdentitylstm_607/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_607_while_identity lstm_607/while/Identity:output:0*(
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
while_cond_4227176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4227176___redundant_placeholder05
1while_while_cond_4227176___redundant_placeholder15
1while_while_cond_4227176___redundant_placeholder25
1while_while_cond_4227176___redundant_placeholder3
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227734
inputs_0>
,lstm_cell_698_matmul_readvariableop_resource:2(@
.lstm_cell_698_matmul_1_readvariableop_resource:
(;
-lstm_cell_698_biasadd_readvariableop_resource:(
identity??$lstm_cell_698/BiasAdd/ReadVariableOp?#lstm_cell_698/MatMul/ReadVariableOp?%lstm_cell_698/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_698/MatMul/ReadVariableOpReadVariableOp,lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_698/MatMulMatMulstrided_slice_2:output:0+lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_698/MatMul_1MatMulzeros:output:0-lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_698/addAddV2lstm_cell_698/MatMul:product:0 lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_698/BiasAddBiasAddlstm_cell_698/add:z:0,lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_698/splitSplit&lstm_cell_698/split/split_dim:output:0lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_698/SigmoidSigmoidlstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_1Sigmoidlstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_698/mulMullstm_cell_698/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_698/ReluRelulstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_1Mullstm_cell_698/Sigmoid:y:0 lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_698/add_1AddV2lstm_cell_698/mul:z:0lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_2Sigmoidlstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_698/Relu_1Relulstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_2Mullstm_cell_698/Sigmoid_2:y:0"lstm_cell_698/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_698_matmul_readvariableop_resource.lstm_cell_698_matmul_1_readvariableop_resource-lstm_cell_698_biasadd_readvariableop_resource*
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
while_body_4227650*
condR
while_cond_4227649*K
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
NoOpNoOp%^lstm_cell_698/BiasAdd/ReadVariableOp$^lstm_cell_698/MatMul/ReadVariableOp&^lstm_cell_698/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_698/BiasAdd/ReadVariableOp$lstm_cell_698/BiasAdd/ReadVariableOp2J
#lstm_cell_698/MatMul/ReadVariableOp#lstm_cell_698/MatMul/ReadVariableOp2N
%lstm_cell_698/MatMul_1/ReadVariableOp%lstm_cell_698/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4223917

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

lstm_606_while_body_4225377.
*lstm_606_while_lstm_606_while_loop_counter4
0lstm_606_while_lstm_606_while_maximum_iterations
lstm_606_while_placeholder 
lstm_606_while_placeholder_1 
lstm_606_while_placeholder_2 
lstm_606_while_placeholder_3-
)lstm_606_while_lstm_606_strided_slice_1_0i
elstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0:	?R
?lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?M
>lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0:	?
lstm_606_while_identity
lstm_606_while_identity_1
lstm_606_while_identity_2
lstm_606_while_identity_3
lstm_606_while_identity_4
lstm_606_while_identity_5+
'lstm_606_while_lstm_606_strided_slice_1g
clstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensorN
;lstm_606_while_lstm_cell_696_matmul_readvariableop_resource:	?P
=lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource:	d?K
<lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource:	???3lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp?2lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp?4lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp?
@lstm_606/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_606/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensor_0lstm_606_while_placeholderIlstm_606/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_606/while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp=lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_606/while/lstm_cell_696/MatMulMatMul9lstm_606/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp?lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_606/while/lstm_cell_696/MatMul_1MatMullstm_606_while_placeholder_2<lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_606/while/lstm_cell_696/addAddV2-lstm_606/while/lstm_cell_696/MatMul:product:0/lstm_606/while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp>lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_606/while/lstm_cell_696/BiasAddBiasAdd$lstm_606/while/lstm_cell_696/add:z:0;lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_606/while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_606/while/lstm_cell_696/splitSplit5lstm_606/while/lstm_cell_696/split/split_dim:output:0-lstm_606/while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_606/while/lstm_cell_696/SigmoidSigmoid+lstm_606/while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_606/while/lstm_cell_696/Sigmoid_1Sigmoid+lstm_606/while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_606/while/lstm_cell_696/mulMul*lstm_606/while/lstm_cell_696/Sigmoid_1:y:0lstm_606_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_606/while/lstm_cell_696/ReluRelu+lstm_606/while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_606/while/lstm_cell_696/mul_1Mul(lstm_606/while/lstm_cell_696/Sigmoid:y:0/lstm_606/while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_606/while/lstm_cell_696/add_1AddV2$lstm_606/while/lstm_cell_696/mul:z:0&lstm_606/while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_606/while/lstm_cell_696/Sigmoid_2Sigmoid+lstm_606/while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_606/while/lstm_cell_696/Relu_1Relu&lstm_606/while/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_606/while/lstm_cell_696/mul_2Mul*lstm_606/while/lstm_cell_696/Sigmoid_2:y:01lstm_606/while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_606/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_606_while_placeholder_1lstm_606_while_placeholder&lstm_606/while/lstm_cell_696/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_606/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_606/while/addAddV2lstm_606_while_placeholderlstm_606/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_606/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_606/while/add_1AddV2*lstm_606_while_lstm_606_while_loop_counterlstm_606/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_606/while/IdentityIdentitylstm_606/while/add_1:z:0^lstm_606/while/NoOp*
T0*
_output_shapes
: ?
lstm_606/while/Identity_1Identity0lstm_606_while_lstm_606_while_maximum_iterations^lstm_606/while/NoOp*
T0*
_output_shapes
: t
lstm_606/while/Identity_2Identitylstm_606/while/add:z:0^lstm_606/while/NoOp*
T0*
_output_shapes
: ?
lstm_606/while/Identity_3IdentityClstm_606/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_606/while/NoOp*
T0*
_output_shapes
: ?
lstm_606/while/Identity_4Identity&lstm_606/while/lstm_cell_696/mul_2:z:0^lstm_606/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_606/while/Identity_5Identity&lstm_606/while/lstm_cell_696/add_1:z:0^lstm_606/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_606/while/NoOpNoOp4^lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp3^lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp5^lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_606_while_identity lstm_606/while/Identity:output:0"?
lstm_606_while_identity_1"lstm_606/while/Identity_1:output:0"?
lstm_606_while_identity_2"lstm_606/while/Identity_2:output:0"?
lstm_606_while_identity_3"lstm_606/while/Identity_3:output:0"?
lstm_606_while_identity_4"lstm_606/while/Identity_4:output:0"?
lstm_606_while_identity_5"lstm_606/while/Identity_5:output:0"T
'lstm_606_while_lstm_606_strided_slice_1)lstm_606_while_lstm_606_strided_slice_1_0"~
<lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource>lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0"?
=lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource?lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0"|
;lstm_606_while_lstm_cell_696_matmul_readvariableop_resource=lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0"?
clstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensorelstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp3lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp2h
2lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp2lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp2l
4lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp4lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4223071

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
while_body_4224800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_697_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_697_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_697_matmul_readvariableop_resource:	d?G
4while_lstm_cell_697_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_697_biasadd_readvariableop_resource:	???*while/lstm_cell_697/BiasAdd/ReadVariableOp?)while/lstm_cell_697/MatMul/ReadVariableOp?+while/lstm_cell_697/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_697/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_697/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_697/addAddV2$while/lstm_cell_697/MatMul:product:0&while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_697/BiasAddBiasAddwhile/lstm_cell_697/add:z:02while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_697/splitSplit,while/lstm_cell_697/split/split_dim:output:0$while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_697/SigmoidSigmoid"while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_1Sigmoid"while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mulMul!while/lstm_cell_697/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_697/ReluRelu"while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_1Mulwhile/lstm_cell_697/Sigmoid:y:0&while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/add_1AddV2while/lstm_cell_697/mul:z:0while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_2Sigmoid"while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_697/Relu_1Reluwhile/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_2Mul!while/lstm_cell_697/Sigmoid_2:y:0(while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_697/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_697/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_697/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_697/BiasAdd/ReadVariableOp*^while/lstm_cell_697/MatMul/ReadVariableOp,^while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_697_biasadd_readvariableop_resource5while_lstm_cell_697_biasadd_readvariableop_resource_0"n
4while_lstm_cell_697_matmul_1_readvariableop_resource6while_lstm_cell_697_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_697_matmul_readvariableop_resource4while_lstm_cell_697_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_697/BiasAdd/ReadVariableOp*while/lstm_cell_697/BiasAdd/ReadVariableOp2V
)while/lstm_cell_697/MatMul/ReadVariableOp)while/lstm_cell_697/MatMul/ReadVariableOp2Z
+while/lstm_cell_697/MatMul_1/ReadVariableOp+while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225229
lstm_606_input#
lstm_606_4225202:	?#
lstm_606_4225204:	d?
lstm_606_4225206:	?#
lstm_607_4225209:	d?#
lstm_607_4225211:	2?
lstm_607_4225213:	?"
lstm_608_4225216:2("
lstm_608_4225218:
(
lstm_608_4225220:(#
dense_202_4225223:

dense_202_4225225:
identity??!dense_202/StatefulPartitionedCall? lstm_606/StatefulPartitionedCall? lstm_607/StatefulPartitionedCall? lstm_608/StatefulPartitionedCall?
 lstm_606/StatefulPartitionedCallStatefulPartitionedCalllstm_606_inputlstm_606_4225202lstm_606_4225204lstm_606_4225206*
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4225049?
 lstm_607/StatefulPartitionedCallStatefulPartitionedCall)lstm_606/StatefulPartitionedCall:output:0lstm_607_4225209lstm_607_4225211lstm_607_4225213*
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4224884?
 lstm_608/StatefulPartitionedCallStatefulPartitionedCall)lstm_607/StatefulPartitionedCall:output:0lstm_608_4225216lstm_608_4225218lstm_608_4225220*
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224719?
!dense_202/StatefulPartitionedCallStatefulPartitionedCall)lstm_608/StatefulPartitionedCall:output:0dense_202_4225223dense_202_4225225*
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
F__inference_dense_202_layer_call_and_return_conditional_losses_4224521y
IdentityIdentity*dense_202/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_202/StatefulPartitionedCall!^lstm_606/StatefulPartitionedCall!^lstm_607/StatefulPartitionedCall!^lstm_608/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_202/StatefulPartitionedCall!dense_202/StatefulPartitionedCall2D
 lstm_606/StatefulPartitionedCall lstm_606/StatefulPartitionedCall2D
 lstm_607/StatefulPartitionedCall lstm_607/StatefulPartitionedCall2D
 lstm_608/StatefulPartitionedCall lstm_608/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_606_input
?8
?
while_body_4224635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_698_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_698_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_698_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_698_matmul_readvariableop_resource:2(F
4while_lstm_cell_698_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_698_biasadd_readvariableop_resource:(??*while/lstm_cell_698/BiasAdd/ReadVariableOp?)while/lstm_cell_698/MatMul/ReadVariableOp?+while/lstm_cell_698/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_698/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_698/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_698/addAddV2$while/lstm_cell_698/MatMul:product:0&while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_698/BiasAddBiasAddwhile/lstm_cell_698/add:z:02while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_698/splitSplit,while/lstm_cell_698/split/split_dim:output:0$while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_698/SigmoidSigmoid"while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_1Sigmoid"while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mulMul!while/lstm_cell_698/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_698/ReluRelu"while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_1Mulwhile/lstm_cell_698/Sigmoid:y:0&while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/add_1AddV2while/lstm_cell_698/mul:z:0while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_2Sigmoid"while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_698/Relu_1Reluwhile/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_2Mul!while/lstm_cell_698/Sigmoid_2:y:0(while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_698/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_698/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_698/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_698/BiasAdd/ReadVariableOp*^while/lstm_cell_698/MatMul/ReadVariableOp,^while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_698_biasadd_readvariableop_resource5while_lstm_cell_698_biasadd_readvariableop_resource_0"n
4while_lstm_cell_698_matmul_1_readvariableop_resource6while_lstm_cell_698_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_698_matmul_readvariableop_resource4while_lstm_cell_698_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_698/BiasAdd/ReadVariableOp*while/lstm_cell_698/BiasAdd/ReadVariableOp2V
)while/lstm_cell_698/MatMul/ReadVariableOp)while/lstm_cell_698/MatMul/ReadVariableOp2Z
+while/lstm_cell_698/MatMul_1/ReadVariableOp+while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227591
inputs_0>
,lstm_cell_698_matmul_readvariableop_resource:2(@
.lstm_cell_698_matmul_1_readvariableop_resource:
(;
-lstm_cell_698_biasadd_readvariableop_resource:(
identity??$lstm_cell_698/BiasAdd/ReadVariableOp?#lstm_cell_698/MatMul/ReadVariableOp?%lstm_cell_698/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_698/MatMul/ReadVariableOpReadVariableOp,lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_698/MatMulMatMulstrided_slice_2:output:0+lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_698/MatMul_1MatMulzeros:output:0-lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_698/addAddV2lstm_cell_698/MatMul:product:0 lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_698/BiasAddBiasAddlstm_cell_698/add:z:0,lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_698/splitSplit&lstm_cell_698/split/split_dim:output:0lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_698/SigmoidSigmoidlstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_1Sigmoidlstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_698/mulMullstm_cell_698/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_698/ReluRelulstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_1Mullstm_cell_698/Sigmoid:y:0 lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_698/add_1AddV2lstm_cell_698/mul:z:0lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_2Sigmoidlstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_698/Relu_1Relulstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_2Mullstm_cell_698/Sigmoid_2:y:0"lstm_cell_698/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_698_matmul_readvariableop_resource.lstm_cell_698_matmul_1_readvariableop_resource-lstm_cell_698_biasadd_readvariableop_resource*
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
while_body_4227507*
condR
while_cond_4227506*K
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
NoOpNoOp%^lstm_cell_698/BiasAdd/ReadVariableOp$^lstm_cell_698/MatMul/ReadVariableOp&^lstm_cell_698/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_698/BiasAdd/ReadVariableOp$lstm_cell_698/BiasAdd/ReadVariableOp2J
#lstm_cell_698/MatMul/ReadVariableOp#lstm_cell_698/MatMul/ReadVariableOp2N
%lstm_cell_698/MatMul_1/ReadVariableOp%lstm_cell_698/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_4227033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4227033___redundant_placeholder05
1while_while_cond_4227033___redundant_placeholder15
1while_while_cond_4227033___redundant_placeholder25
1while_while_cond_4227033___redundant_placeholder3
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225117

inputs#
lstm_606_4225090:	?#
lstm_606_4225092:	d?
lstm_606_4225094:	?#
lstm_607_4225097:	d?#
lstm_607_4225099:	2?
lstm_607_4225101:	?"
lstm_608_4225104:2("
lstm_608_4225106:
(
lstm_608_4225108:(#
dense_202_4225111:

dense_202_4225113:
identity??!dense_202/StatefulPartitionedCall? lstm_606/StatefulPartitionedCall? lstm_607/StatefulPartitionedCall? lstm_608/StatefulPartitionedCall?
 lstm_606/StatefulPartitionedCallStatefulPartitionedCallinputslstm_606_4225090lstm_606_4225092lstm_606_4225094*
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4225049?
 lstm_607/StatefulPartitionedCallStatefulPartitionedCall)lstm_606/StatefulPartitionedCall:output:0lstm_607_4225097lstm_607_4225099lstm_607_4225101*
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4224884?
 lstm_608/StatefulPartitionedCallStatefulPartitionedCall)lstm_607/StatefulPartitionedCall:output:0lstm_608_4225104lstm_608_4225106lstm_608_4225108*
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224719?
!dense_202/StatefulPartitionedCallStatefulPartitionedCall)lstm_608/StatefulPartitionedCall:output:0dense_202_4225111dense_202_4225113*
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
F__inference_dense_202_layer_call_and_return_conditional_losses_4224521y
IdentityIdentity*dense_202/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_202/StatefulPartitionedCall!^lstm_606/StatefulPartitionedCall!^lstm_607/StatefulPartitionedCall!^lstm_608/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_202/StatefulPartitionedCall!dense_202/StatefulPartitionedCall2D
 lstm_606/StatefulPartitionedCall lstm_606/StatefulPartitionedCall2D
 lstm_607/StatefulPartitionedCall lstm_607/StatefulPartitionedCall2D
 lstm_608/StatefulPartitionedCall lstm_608/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?T
?
*sequential_202_lstm_608_while_body_4222914L
Hsequential_202_lstm_608_while_sequential_202_lstm_608_while_loop_counterR
Nsequential_202_lstm_608_while_sequential_202_lstm_608_while_maximum_iterations-
)sequential_202_lstm_608_while_placeholder/
+sequential_202_lstm_608_while_placeholder_1/
+sequential_202_lstm_608_while_placeholder_2/
+sequential_202_lstm_608_while_placeholder_3K
Gsequential_202_lstm_608_while_sequential_202_lstm_608_strided_slice_1_0?
?sequential_202_lstm_608_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_608_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_202_lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0:2(`
Nsequential_202_lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0:
([
Msequential_202_lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0:(*
&sequential_202_lstm_608_while_identity,
(sequential_202_lstm_608_while_identity_1,
(sequential_202_lstm_608_while_identity_2,
(sequential_202_lstm_608_while_identity_3,
(sequential_202_lstm_608_while_identity_4,
(sequential_202_lstm_608_while_identity_5I
Esequential_202_lstm_608_while_sequential_202_lstm_608_strided_slice_1?
?sequential_202_lstm_608_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_608_tensorarrayunstack_tensorlistfromtensor\
Jsequential_202_lstm_608_while_lstm_cell_698_matmul_readvariableop_resource:2(^
Lsequential_202_lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource:
(Y
Ksequential_202_lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource:(??Bsequential_202/lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp?Asequential_202/lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp?Csequential_202/lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp?
Osequential_202/lstm_608/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_202/lstm_608/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_202_lstm_608_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_608_tensorarrayunstack_tensorlistfromtensor_0)sequential_202_lstm_608_while_placeholderXsequential_202/lstm_608/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_202/lstm_608/while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOpLsequential_202_lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_202/lstm_608/while/lstm_cell_698/MatMulMatMulHsequential_202/lstm_608/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_202/lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_202/lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOpNsequential_202_lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_202/lstm_608/while/lstm_cell_698/MatMul_1MatMul+sequential_202_lstm_608_while_placeholder_2Ksequential_202/lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_202/lstm_608/while/lstm_cell_698/addAddV2<sequential_202/lstm_608/while/lstm_cell_698/MatMul:product:0>sequential_202/lstm_608/while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_202/lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOpMsequential_202_lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_202/lstm_608/while/lstm_cell_698/BiasAddBiasAdd3sequential_202/lstm_608/while/lstm_cell_698/add:z:0Jsequential_202/lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_202/lstm_608/while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_202/lstm_608/while/lstm_cell_698/splitSplitDsequential_202/lstm_608/while/lstm_cell_698/split/split_dim:output:0<sequential_202/lstm_608/while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_202/lstm_608/while/lstm_cell_698/SigmoidSigmoid:sequential_202/lstm_608/while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_202/lstm_608/while/lstm_cell_698/Sigmoid_1Sigmoid:sequential_202/lstm_608/while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_202/lstm_608/while/lstm_cell_698/mulMul9sequential_202/lstm_608/while/lstm_cell_698/Sigmoid_1:y:0+sequential_202_lstm_608_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_202/lstm_608/while/lstm_cell_698/ReluRelu:sequential_202/lstm_608/while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_202/lstm_608/while/lstm_cell_698/mul_1Mul7sequential_202/lstm_608/while/lstm_cell_698/Sigmoid:y:0>sequential_202/lstm_608/while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_202/lstm_608/while/lstm_cell_698/add_1AddV23sequential_202/lstm_608/while/lstm_cell_698/mul:z:05sequential_202/lstm_608/while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_202/lstm_608/while/lstm_cell_698/Sigmoid_2Sigmoid:sequential_202/lstm_608/while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_202/lstm_608/while/lstm_cell_698/Relu_1Relu5sequential_202/lstm_608/while/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_202/lstm_608/while/lstm_cell_698/mul_2Mul9sequential_202/lstm_608/while/lstm_cell_698/Sigmoid_2:y:0@sequential_202/lstm_608/while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_202/lstm_608/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_202_lstm_608_while_placeholder_1)sequential_202_lstm_608_while_placeholder5sequential_202/lstm_608/while/lstm_cell_698/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_202/lstm_608/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_202/lstm_608/while/addAddV2)sequential_202_lstm_608_while_placeholder,sequential_202/lstm_608/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_202/lstm_608/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_202/lstm_608/while/add_1AddV2Hsequential_202_lstm_608_while_sequential_202_lstm_608_while_loop_counter.sequential_202/lstm_608/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_202/lstm_608/while/IdentityIdentity'sequential_202/lstm_608/while/add_1:z:0#^sequential_202/lstm_608/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_608/while/Identity_1IdentityNsequential_202_lstm_608_while_sequential_202_lstm_608_while_maximum_iterations#^sequential_202/lstm_608/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_608/while/Identity_2Identity%sequential_202/lstm_608/while/add:z:0#^sequential_202/lstm_608/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_608/while/Identity_3IdentityRsequential_202/lstm_608/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_202/lstm_608/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_608/while/Identity_4Identity5sequential_202/lstm_608/while/lstm_cell_698/mul_2:z:0#^sequential_202/lstm_608/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_202/lstm_608/while/Identity_5Identity5sequential_202/lstm_608/while/lstm_cell_698/add_1:z:0#^sequential_202/lstm_608/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_202/lstm_608/while/NoOpNoOpC^sequential_202/lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOpB^sequential_202/lstm_608/while/lstm_cell_698/MatMul/ReadVariableOpD^sequential_202/lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_202_lstm_608_while_identity/sequential_202/lstm_608/while/Identity:output:0"]
(sequential_202_lstm_608_while_identity_11sequential_202/lstm_608/while/Identity_1:output:0"]
(sequential_202_lstm_608_while_identity_21sequential_202/lstm_608/while/Identity_2:output:0"]
(sequential_202_lstm_608_while_identity_31sequential_202/lstm_608/while/Identity_3:output:0"]
(sequential_202_lstm_608_while_identity_41sequential_202/lstm_608/while/Identity_4:output:0"]
(sequential_202_lstm_608_while_identity_51sequential_202/lstm_608/while/Identity_5:output:0"?
Ksequential_202_lstm_608_while_lstm_cell_698_biasadd_readvariableop_resourceMsequential_202_lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0"?
Lsequential_202_lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resourceNsequential_202_lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0"?
Jsequential_202_lstm_608_while_lstm_cell_698_matmul_readvariableop_resourceLsequential_202_lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0"?
Esequential_202_lstm_608_while_sequential_202_lstm_608_strided_slice_1Gsequential_202_lstm_608_while_sequential_202_lstm_608_strided_slice_1_0"?
?sequential_202_lstm_608_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_608_tensorarrayunstack_tensorlistfromtensor?sequential_202_lstm_608_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_608_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_202/lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOpBsequential_202/lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp2?
Asequential_202/lstm_608/while/lstm_cell_698/MatMul/ReadVariableOpAsequential_202/lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp2?
Csequential_202/lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOpCsequential_202/lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_608_layer_call_fn_4227426
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224045o
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
/__inference_lstm_cell_696_layer_call_fn_4228073

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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4223217o
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
/__inference_lstm_cell_698_layer_call_fn_4228269

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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4223917o
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
while_cond_4224118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4224118___redundant_placeholder05
1while_while_cond_4224118___redundant_placeholder15
1while_while_cond_4224118___redundant_placeholder25
1while_while_cond_4224118___redundant_placeholder3
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
lstm_607_while_cond_4225942.
*lstm_607_while_lstm_607_while_loop_counter4
0lstm_607_while_lstm_607_while_maximum_iterations
lstm_607_while_placeholder 
lstm_607_while_placeholder_1 
lstm_607_while_placeholder_2 
lstm_607_while_placeholder_30
,lstm_607_while_less_lstm_607_strided_slice_1G
Clstm_607_while_lstm_607_while_cond_4225942___redundant_placeholder0G
Clstm_607_while_lstm_607_while_cond_4225942___redundant_placeholder1G
Clstm_607_while_lstm_607_while_cond_4225942___redundant_placeholder2G
Clstm_607_while_lstm_607_while_cond_4225942___redundant_placeholder3
lstm_607_while_identity
?
lstm_607/while/LessLesslstm_607_while_placeholder,lstm_607_while_less_lstm_607_strided_slice_1*
T0*
_output_shapes
: ]
lstm_607/while/IdentityIdentitylstm_607/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_607_while_identity lstm_607/while/Identity:output:0*(
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
*__inference_lstm_606_layer_call_fn_4226205

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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4224203s
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
?
*sequential_202_lstm_606_while_cond_4222635L
Hsequential_202_lstm_606_while_sequential_202_lstm_606_while_loop_counterR
Nsequential_202_lstm_606_while_sequential_202_lstm_606_while_maximum_iterations-
)sequential_202_lstm_606_while_placeholder/
+sequential_202_lstm_606_while_placeholder_1/
+sequential_202_lstm_606_while_placeholder_2/
+sequential_202_lstm_606_while_placeholder_3N
Jsequential_202_lstm_606_while_less_sequential_202_lstm_606_strided_slice_1e
asequential_202_lstm_606_while_sequential_202_lstm_606_while_cond_4222635___redundant_placeholder0e
asequential_202_lstm_606_while_sequential_202_lstm_606_while_cond_4222635___redundant_placeholder1e
asequential_202_lstm_606_while_sequential_202_lstm_606_while_cond_4222635___redundant_placeholder2e
asequential_202_lstm_606_while_sequential_202_lstm_606_while_cond_4222635___redundant_placeholder3*
&sequential_202_lstm_606_while_identity
?
"sequential_202/lstm_606/while/LessLess)sequential_202_lstm_606_while_placeholderJsequential_202_lstm_606_while_less_sequential_202_lstm_606_strided_slice_1*
T0*
_output_shapes
: {
&sequential_202/lstm_606/while/IdentityIdentity&sequential_202/lstm_606/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_202_lstm_606_while_identity/sequential_202/lstm_606/while/Identity:output:0*(
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
while_body_4223435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_697_4223459_0:	d?0
while_lstm_cell_697_4223461_0:	2?,
while_lstm_cell_697_4223463_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_697_4223459:	d?.
while_lstm_cell_697_4223461:	2?*
while_lstm_cell_697_4223463:	???+while/lstm_cell_697/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_697/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_697_4223459_0while_lstm_cell_697_4223461_0while_lstm_cell_697_4223463_0*
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4223421?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_697/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_697/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_697/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_697/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_697_4223459while_lstm_cell_697_4223459_0"<
while_lstm_cell_697_4223461while_lstm_cell_697_4223461_0"<
while_lstm_cell_697_4223463while_lstm_cell_697_4223463_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_697/StatefulPartitionedCall+while/lstm_cell_697/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4227936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_698_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_698_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_698_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_698_matmul_readvariableop_resource:2(F
4while_lstm_cell_698_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_698_biasadd_readvariableop_resource:(??*while/lstm_cell_698/BiasAdd/ReadVariableOp?)while/lstm_cell_698/MatMul/ReadVariableOp?+while/lstm_cell_698/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_698/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_698/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_698/addAddV2$while/lstm_cell_698/MatMul:product:0&while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_698/BiasAddBiasAddwhile/lstm_cell_698/add:z:02while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_698/splitSplit,while/lstm_cell_698/split/split_dim:output:0$while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_698/SigmoidSigmoid"while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_1Sigmoid"while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mulMul!while/lstm_cell_698/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_698/ReluRelu"while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_1Mulwhile/lstm_cell_698/Sigmoid:y:0&while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/add_1AddV2while/lstm_cell_698/mul:z:0while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_2Sigmoid"while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_698/Relu_1Reluwhile/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_2Mul!while/lstm_cell_698/Sigmoid_2:y:0(while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_698/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_698/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_698/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_698/BiasAdd/ReadVariableOp*^while/lstm_cell_698/MatMul/ReadVariableOp,^while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_698_biasadd_readvariableop_resource5while_lstm_cell_698_biasadd_readvariableop_resource_0"n
4while_lstm_cell_698_matmul_1_readvariableop_resource6while_lstm_cell_698_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_698_matmul_readvariableop_resource4while_lstm_cell_698_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_698/BiasAdd/ReadVariableOp*while/lstm_cell_698/BiasAdd/ReadVariableOp2V
)while/lstm_cell_698/MatMul/ReadVariableOp)while/lstm_cell_698/MatMul/ReadVariableOp2Z
+while/lstm_cell_698/MatMul_1/ReadVariableOp+while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4224203

inputs?
,lstm_cell_696_matmul_readvariableop_resource:	?A
.lstm_cell_696_matmul_1_readvariableop_resource:	d?<
-lstm_cell_696_biasadd_readvariableop_resource:	?
identity??$lstm_cell_696/BiasAdd/ReadVariableOp?#lstm_cell_696/MatMul/ReadVariableOp?%lstm_cell_696/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_696/MatMul/ReadVariableOpReadVariableOp,lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_696/MatMulMatMulstrided_slice_2:output:0+lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_696/MatMul_1MatMulzeros:output:0-lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_696/addAddV2lstm_cell_696/MatMul:product:0 lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_696/BiasAddBiasAddlstm_cell_696/add:z:0,lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_696/splitSplit&lstm_cell_696/split/split_dim:output:0lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_696/SigmoidSigmoidlstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_1Sigmoidlstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_696/mulMullstm_cell_696/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_696/ReluRelulstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_1Mullstm_cell_696/Sigmoid:y:0 lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_696/add_1AddV2lstm_cell_696/mul:z:0lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_2Sigmoidlstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_696/Relu_1Relulstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_2Mullstm_cell_696/Sigmoid_2:y:0"lstm_cell_696/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_696_matmul_readvariableop_resource.lstm_cell_696_matmul_1_readvariableop_resource-lstm_cell_696_biasadd_readvariableop_resource*
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
while_body_4224119*
condR
while_cond_4224118*K
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
NoOpNoOp%^lstm_cell_696/BiasAdd/ReadVariableOp$^lstm_cell_696/MatMul/ReadVariableOp&^lstm_cell_696/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_696/BiasAdd/ReadVariableOp$lstm_cell_696/BiasAdd/ReadVariableOp2J
#lstm_cell_696/MatMul/ReadVariableOp#lstm_cell_696/MatMul/ReadVariableOp2N
%lstm_cell_696/MatMul_1/ReadVariableOp%lstm_cell_696/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4226274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4226274___redundant_placeholder05
1while_while_cond_4226274___redundant_placeholder15
1while_while_cond_4226274___redundant_placeholder25
1while_while_cond_4226274___redundant_placeholder3
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4228020

inputs>
,lstm_cell_698_matmul_readvariableop_resource:2(@
.lstm_cell_698_matmul_1_readvariableop_resource:
(;
-lstm_cell_698_biasadd_readvariableop_resource:(
identity??$lstm_cell_698/BiasAdd/ReadVariableOp?#lstm_cell_698/MatMul/ReadVariableOp?%lstm_cell_698/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_698/MatMul/ReadVariableOpReadVariableOp,lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_698/MatMulMatMulstrided_slice_2:output:0+lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_698/MatMul_1MatMulzeros:output:0-lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_698/addAddV2lstm_cell_698/MatMul:product:0 lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_698/BiasAddBiasAddlstm_cell_698/add:z:0,lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_698/splitSplit&lstm_cell_698/split/split_dim:output:0lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_698/SigmoidSigmoidlstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_1Sigmoidlstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_698/mulMullstm_cell_698/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_698/ReluRelulstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_1Mullstm_cell_698/Sigmoid:y:0 lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_698/add_1AddV2lstm_cell_698/mul:z:0lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_2Sigmoidlstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_698/Relu_1Relulstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_2Mullstm_cell_698/Sigmoid_2:y:0"lstm_cell_698/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_698_matmul_readvariableop_resource.lstm_cell_698_matmul_1_readvariableop_resource-lstm_cell_698_biasadd_readvariableop_resource*
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
while_body_4227936*
condR
while_cond_4227935*K
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
NoOpNoOp%^lstm_cell_698/BiasAdd/ReadVariableOp$^lstm_cell_698/MatMul/ReadVariableOp&^lstm_cell_698/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_698/BiasAdd/ReadVariableOp$lstm_cell_698/BiasAdd/ReadVariableOp2J
#lstm_cell_698/MatMul/ReadVariableOp#lstm_cell_698/MatMul/ReadVariableOp2N
%lstm_cell_698/MatMul_1/ReadVariableOp%lstm_cell_698/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4228333

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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224503

inputs>
,lstm_cell_698_matmul_readvariableop_resource:2(@
.lstm_cell_698_matmul_1_readvariableop_resource:
(;
-lstm_cell_698_biasadd_readvariableop_resource:(
identity??$lstm_cell_698/BiasAdd/ReadVariableOp?#lstm_cell_698/MatMul/ReadVariableOp?%lstm_cell_698/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_698/MatMul/ReadVariableOpReadVariableOp,lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_698/MatMulMatMulstrided_slice_2:output:0+lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_698/MatMul_1MatMulzeros:output:0-lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_698/addAddV2lstm_cell_698/MatMul:product:0 lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_698/BiasAddBiasAddlstm_cell_698/add:z:0,lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_698/splitSplit&lstm_cell_698/split/split_dim:output:0lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_698/SigmoidSigmoidlstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_1Sigmoidlstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_698/mulMullstm_cell_698/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_698/ReluRelulstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_1Mullstm_cell_698/Sigmoid:y:0 lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_698/add_1AddV2lstm_cell_698/mul:z:0lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_2Sigmoidlstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_698/Relu_1Relulstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_2Mullstm_cell_698/Sigmoid_2:y:0"lstm_cell_698/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_698_matmul_readvariableop_resource.lstm_cell_698_matmul_1_readvariableop_resource-lstm_cell_698_biasadd_readvariableop_resource*
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
while_body_4224419*
condR
while_cond_4224418*K
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
NoOpNoOp%^lstm_cell_698/BiasAdd/ReadVariableOp$^lstm_cell_698/MatMul/ReadVariableOp&^lstm_cell_698/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_698/BiasAdd/ReadVariableOp$lstm_cell_698/BiasAdd/ReadVariableOp2J
#lstm_cell_698/MatMul/ReadVariableOp#lstm_cell_698/MatMul/ReadVariableOp2N
%lstm_cell_698/MatMul_1/ReadVariableOp%lstm_cell_698/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_608_while_cond_4226081.
*lstm_608_while_lstm_608_while_loop_counter4
0lstm_608_while_lstm_608_while_maximum_iterations
lstm_608_while_placeholder 
lstm_608_while_placeholder_1 
lstm_608_while_placeholder_2 
lstm_608_while_placeholder_30
,lstm_608_while_less_lstm_608_strided_slice_1G
Clstm_608_while_lstm_608_while_cond_4226081___redundant_placeholder0G
Clstm_608_while_lstm_608_while_cond_4226081___redundant_placeholder1G
Clstm_608_while_lstm_608_while_cond_4226081___redundant_placeholder2G
Clstm_608_while_lstm_608_while_cond_4226081___redundant_placeholder3
lstm_608_while_identity
?
lstm_608/while/LessLesslstm_608_while_placeholder,lstm_608_while_less_lstm_608_strided_slice_1*
T0*
_output_shapes
: ]
lstm_608/while/IdentityIdentitylstm_608/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_608_while_identity lstm_608/while/Identity:output:0*(
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

lstm_607_while_body_4225943.
*lstm_607_while_lstm_607_while_loop_counter4
0lstm_607_while_lstm_607_while_maximum_iterations
lstm_607_while_placeholder 
lstm_607_while_placeholder_1 
lstm_607_while_placeholder_2 
lstm_607_while_placeholder_3-
)lstm_607_while_lstm_607_strided_slice_1_0i
elstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0:	d?R
?lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?M
>lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0:	?
lstm_607_while_identity
lstm_607_while_identity_1
lstm_607_while_identity_2
lstm_607_while_identity_3
lstm_607_while_identity_4
lstm_607_while_identity_5+
'lstm_607_while_lstm_607_strided_slice_1g
clstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensorN
;lstm_607_while_lstm_cell_697_matmul_readvariableop_resource:	d?P
=lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource:	2?K
<lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource:	???3lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp?2lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp?4lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp?
@lstm_607/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_607/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensor_0lstm_607_while_placeholderIlstm_607/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_607/while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp=lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_607/while/lstm_cell_697/MatMulMatMul9lstm_607/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp?lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_607/while/lstm_cell_697/MatMul_1MatMullstm_607_while_placeholder_2<lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_607/while/lstm_cell_697/addAddV2-lstm_607/while/lstm_cell_697/MatMul:product:0/lstm_607/while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp>lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_607/while/lstm_cell_697/BiasAddBiasAdd$lstm_607/while/lstm_cell_697/add:z:0;lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_607/while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_607/while/lstm_cell_697/splitSplit5lstm_607/while/lstm_cell_697/split/split_dim:output:0-lstm_607/while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_607/while/lstm_cell_697/SigmoidSigmoid+lstm_607/while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_607/while/lstm_cell_697/Sigmoid_1Sigmoid+lstm_607/while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_607/while/lstm_cell_697/mulMul*lstm_607/while/lstm_cell_697/Sigmoid_1:y:0lstm_607_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_607/while/lstm_cell_697/ReluRelu+lstm_607/while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_607/while/lstm_cell_697/mul_1Mul(lstm_607/while/lstm_cell_697/Sigmoid:y:0/lstm_607/while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_607/while/lstm_cell_697/add_1AddV2$lstm_607/while/lstm_cell_697/mul:z:0&lstm_607/while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_607/while/lstm_cell_697/Sigmoid_2Sigmoid+lstm_607/while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_607/while/lstm_cell_697/Relu_1Relu&lstm_607/while/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_607/while/lstm_cell_697/mul_2Mul*lstm_607/while/lstm_cell_697/Sigmoid_2:y:01lstm_607/while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_607/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_607_while_placeholder_1lstm_607_while_placeholder&lstm_607/while/lstm_cell_697/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_607/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_607/while/addAddV2lstm_607_while_placeholderlstm_607/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_607/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_607/while/add_1AddV2*lstm_607_while_lstm_607_while_loop_counterlstm_607/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_607/while/IdentityIdentitylstm_607/while/add_1:z:0^lstm_607/while/NoOp*
T0*
_output_shapes
: ?
lstm_607/while/Identity_1Identity0lstm_607_while_lstm_607_while_maximum_iterations^lstm_607/while/NoOp*
T0*
_output_shapes
: t
lstm_607/while/Identity_2Identitylstm_607/while/add:z:0^lstm_607/while/NoOp*
T0*
_output_shapes
: ?
lstm_607/while/Identity_3IdentityClstm_607/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_607/while/NoOp*
T0*
_output_shapes
: ?
lstm_607/while/Identity_4Identity&lstm_607/while/lstm_cell_697/mul_2:z:0^lstm_607/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_607/while/Identity_5Identity&lstm_607/while/lstm_cell_697/add_1:z:0^lstm_607/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_607/while/NoOpNoOp4^lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp3^lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp5^lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_607_while_identity lstm_607/while/Identity:output:0"?
lstm_607_while_identity_1"lstm_607/while/Identity_1:output:0"?
lstm_607_while_identity_2"lstm_607/while/Identity_2:output:0"?
lstm_607_while_identity_3"lstm_607/while/Identity_3:output:0"?
lstm_607_while_identity_4"lstm_607/while/Identity_4:output:0"?
lstm_607_while_identity_5"lstm_607/while/Identity_5:output:0"T
'lstm_607_while_lstm_607_strided_slice_1)lstm_607_while_lstm_607_strided_slice_1_0"~
<lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource>lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0"?
=lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource?lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0"|
;lstm_607_while_lstm_cell_697_matmul_readvariableop_resource=lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0"?
clstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensorelstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp3lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp2h
2lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp2lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp2l
4lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp4lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4223784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4223784___redundant_placeholder05
1while_while_cond_4223784___redundant_placeholder15
1while_while_cond_4223784___redundant_placeholder25
1while_while_cond_4223784___redundant_placeholder3
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
lstm_608_while_cond_4225654.
*lstm_608_while_lstm_608_while_loop_counter4
0lstm_608_while_lstm_608_while_maximum_iterations
lstm_608_while_placeholder 
lstm_608_while_placeholder_1 
lstm_608_while_placeholder_2 
lstm_608_while_placeholder_30
,lstm_608_while_less_lstm_608_strided_slice_1G
Clstm_608_while_lstm_608_while_cond_4225654___redundant_placeholder0G
Clstm_608_while_lstm_608_while_cond_4225654___redundant_placeholder1G
Clstm_608_while_lstm_608_while_cond_4225654___redundant_placeholder2G
Clstm_608_while_lstm_608_while_cond_4225654___redundant_placeholder3
lstm_608_while_identity
?
lstm_608/while/LessLesslstm_608_while_placeholder,lstm_608_while_less_lstm_608_strided_slice_1*
T0*
_output_shapes
: ]
lstm_608/while/IdentityIdentitylstm_608/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_608_while_identity lstm_608/while/Identity:output:0*(
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
while_body_4224119
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_696_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_696_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_696_matmul_readvariableop_resource:	?G
4while_lstm_cell_696_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_696_biasadd_readvariableop_resource:	???*while/lstm_cell_696/BiasAdd/ReadVariableOp?)while/lstm_cell_696/MatMul/ReadVariableOp?+while/lstm_cell_696/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_696/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_696/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_696/addAddV2$while/lstm_cell_696/MatMul:product:0&while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_696/BiasAddBiasAddwhile/lstm_cell_696/add:z:02while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_696/splitSplit,while/lstm_cell_696/split/split_dim:output:0$while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_696/SigmoidSigmoid"while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_1Sigmoid"while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mulMul!while/lstm_cell_696/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_696/ReluRelu"while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_1Mulwhile/lstm_cell_696/Sigmoid:y:0&while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/add_1AddV2while/lstm_cell_696/mul:z:0while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_2Sigmoid"while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_696/Relu_1Reluwhile/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_2Mul!while/lstm_cell_696/Sigmoid_2:y:0(while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_696/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_696/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_696/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_696/BiasAdd/ReadVariableOp*^while/lstm_cell_696/MatMul/ReadVariableOp,^while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_696_biasadd_readvariableop_resource5while_lstm_cell_696_biasadd_readvariableop_resource_0"n
4while_lstm_cell_696_matmul_1_readvariableop_resource6while_lstm_cell_696_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_696_matmul_readvariableop_resource4while_lstm_cell_696_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_696/BiasAdd/ReadVariableOp*while/lstm_cell_696/BiasAdd/ReadVariableOp2V
)while/lstm_cell_696/MatMul/ReadVariableOp)while/lstm_cell_696/MatMul/ReadVariableOp2Z
+while/lstm_cell_696/MatMul_1/ReadVariableOp+while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4226891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_697_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_697_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_697_matmul_readvariableop_resource:	d?G
4while_lstm_cell_697_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_697_biasadd_readvariableop_resource:	???*while/lstm_cell_697/BiasAdd/ReadVariableOp?)while/lstm_cell_697/MatMul/ReadVariableOp?+while/lstm_cell_697/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_697/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_697/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_697/addAddV2$while/lstm_cell_697/MatMul:product:0&while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_697/BiasAddBiasAddwhile/lstm_cell_697/add:z:02while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_697/splitSplit,while/lstm_cell_697/split/split_dim:output:0$while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_697/SigmoidSigmoid"while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_1Sigmoid"while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mulMul!while/lstm_cell_697/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_697/ReluRelu"while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_1Mulwhile/lstm_cell_697/Sigmoid:y:0&while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/add_1AddV2while/lstm_cell_697/mul:z:0while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_2Sigmoid"while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_697/Relu_1Reluwhile/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_2Mul!while/lstm_cell_697/Sigmoid_2:y:0(while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_697/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_697/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_697/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_697/BiasAdd/ReadVariableOp*^while/lstm_cell_697/MatMul/ReadVariableOp,^while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_697_biasadd_readvariableop_resource5while_lstm_cell_697_biasadd_readvariableop_resource_0"n
4while_lstm_cell_697_matmul_1_readvariableop_resource6while_lstm_cell_697_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_697_matmul_readvariableop_resource4while_lstm_cell_697_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_697/BiasAdd/ReadVariableOp*while/lstm_cell_697/BiasAdd/ReadVariableOp2V
)while/lstm_cell_697/MatMul/ReadVariableOp)while/lstm_cell_697/MatMul/ReadVariableOp2Z
+while/lstm_cell_697/MatMul_1/ReadVariableOp+while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4223975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4223975___redundant_placeholder05
1while_while_cond_4223975___redundant_placeholder15
1while_while_cond_4223975___redundant_placeholder25
1while_while_cond_4223975___redundant_placeholder3
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4224353

inputs?
,lstm_cell_697_matmul_readvariableop_resource:	d?A
.lstm_cell_697_matmul_1_readvariableop_resource:	2?<
-lstm_cell_697_biasadd_readvariableop_resource:	?
identity??$lstm_cell_697/BiasAdd/ReadVariableOp?#lstm_cell_697/MatMul/ReadVariableOp?%lstm_cell_697/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_697/MatMul/ReadVariableOpReadVariableOp,lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_697/MatMulMatMulstrided_slice_2:output:0+lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_697/MatMul_1MatMulzeros:output:0-lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_697/addAddV2lstm_cell_697/MatMul:product:0 lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_697/BiasAddBiasAddlstm_cell_697/add:z:0,lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_697/splitSplit&lstm_cell_697/split/split_dim:output:0lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_697/SigmoidSigmoidlstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_1Sigmoidlstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_697/mulMullstm_cell_697/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_697/ReluRelulstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_1Mullstm_cell_697/Sigmoid:y:0 lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_697/add_1AddV2lstm_cell_697/mul:z:0lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_2Sigmoidlstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_697/Relu_1Relulstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_2Mullstm_cell_697/Sigmoid_2:y:0"lstm_cell_697/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_697_matmul_readvariableop_resource.lstm_cell_697_matmul_1_readvariableop_resource-lstm_cell_697_biasadd_readvariableop_resource*
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
while_body_4224269*
condR
while_cond_4224268*K
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
NoOpNoOp%^lstm_cell_697/BiasAdd/ReadVariableOp$^lstm_cell_697/MatMul/ReadVariableOp&^lstm_cell_697/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_697/BiasAdd/ReadVariableOp$lstm_cell_697/BiasAdd/ReadVariableOp2J
#lstm_cell_697/MatMul/ReadVariableOp#lstm_cell_697/MatMul/ReadVariableOp2N
%lstm_cell_697/MatMul_1/ReadVariableOp%lstm_cell_697/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4224965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_696_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_696_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_696_matmul_readvariableop_resource:	?G
4while_lstm_cell_696_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_696_biasadd_readvariableop_resource:	???*while/lstm_cell_696/BiasAdd/ReadVariableOp?)while/lstm_cell_696/MatMul/ReadVariableOp?+while/lstm_cell_696/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_696/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_696/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_696/addAddV2$while/lstm_cell_696/MatMul:product:0&while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_696/BiasAddBiasAddwhile/lstm_cell_696/add:z:02while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_696/splitSplit,while/lstm_cell_696/split/split_dim:output:0$while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_696/SigmoidSigmoid"while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_1Sigmoid"while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mulMul!while/lstm_cell_696/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_696/ReluRelu"while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_1Mulwhile/lstm_cell_696/Sigmoid:y:0&while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/add_1AddV2while/lstm_cell_696/mul:z:0while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_2Sigmoid"while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_696/Relu_1Reluwhile/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_2Mul!while/lstm_cell_696/Sigmoid_2:y:0(while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_696/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_696/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_696/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_696/BiasAdd/ReadVariableOp*^while/lstm_cell_696/MatMul/ReadVariableOp,^while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_696_biasadd_readvariableop_resource5while_lstm_cell_696_biasadd_readvariableop_resource_0"n
4while_lstm_cell_696_matmul_1_readvariableop_resource6while_lstm_cell_696_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_696_matmul_readvariableop_resource4while_lstm_cell_696_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_696/BiasAdd/ReadVariableOp*while/lstm_cell_696/BiasAdd/ReadVariableOp2V
)while/lstm_cell_696/MatMul/ReadVariableOp)while/lstm_cell_696/MatMul/ReadVariableOp2Z
+while/lstm_cell_696/MatMul_1/ReadVariableOp+while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_607_layer_call_fn_4226799
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4223504|
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
while_cond_4223434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4223434___redundant_placeholder05
1while_while_cond_4223434___redundant_placeholder15
1while_while_cond_4223434___redundant_placeholder25
1while_while_cond_4223434___redundant_placeholder3
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

lstm_608_while_body_4226082.
*lstm_608_while_lstm_608_while_loop_counter4
0lstm_608_while_lstm_608_while_maximum_iterations
lstm_608_while_placeholder 
lstm_608_while_placeholder_1 
lstm_608_while_placeholder_2 
lstm_608_while_placeholder_3-
)lstm_608_while_lstm_608_strided_slice_1_0i
elstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0:2(Q
?lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0:
(L
>lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0:(
lstm_608_while_identity
lstm_608_while_identity_1
lstm_608_while_identity_2
lstm_608_while_identity_3
lstm_608_while_identity_4
lstm_608_while_identity_5+
'lstm_608_while_lstm_608_strided_slice_1g
clstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensorM
;lstm_608_while_lstm_cell_698_matmul_readvariableop_resource:2(O
=lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource:
(J
<lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource:(??3lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp?2lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp?4lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp?
@lstm_608/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_608/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensor_0lstm_608_while_placeholderIlstm_608/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_608/while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp=lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_608/while/lstm_cell_698/MatMulMatMul9lstm_608/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp?lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_608/while/lstm_cell_698/MatMul_1MatMullstm_608_while_placeholder_2<lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_608/while/lstm_cell_698/addAddV2-lstm_608/while/lstm_cell_698/MatMul:product:0/lstm_608/while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp>lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_608/while/lstm_cell_698/BiasAddBiasAdd$lstm_608/while/lstm_cell_698/add:z:0;lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_608/while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_608/while/lstm_cell_698/splitSplit5lstm_608/while/lstm_cell_698/split/split_dim:output:0-lstm_608/while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_608/while/lstm_cell_698/SigmoidSigmoid+lstm_608/while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_608/while/lstm_cell_698/Sigmoid_1Sigmoid+lstm_608/while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_608/while/lstm_cell_698/mulMul*lstm_608/while/lstm_cell_698/Sigmoid_1:y:0lstm_608_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_608/while/lstm_cell_698/ReluRelu+lstm_608/while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_608/while/lstm_cell_698/mul_1Mul(lstm_608/while/lstm_cell_698/Sigmoid:y:0/lstm_608/while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_608/while/lstm_cell_698/add_1AddV2$lstm_608/while/lstm_cell_698/mul:z:0&lstm_608/while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_608/while/lstm_cell_698/Sigmoid_2Sigmoid+lstm_608/while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_608/while/lstm_cell_698/Relu_1Relu&lstm_608/while/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_608/while/lstm_cell_698/mul_2Mul*lstm_608/while/lstm_cell_698/Sigmoid_2:y:01lstm_608/while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_608/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_608_while_placeholder_1lstm_608_while_placeholder&lstm_608/while/lstm_cell_698/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_608/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_608/while/addAddV2lstm_608_while_placeholderlstm_608/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_608/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_608/while/add_1AddV2*lstm_608_while_lstm_608_while_loop_counterlstm_608/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_608/while/IdentityIdentitylstm_608/while/add_1:z:0^lstm_608/while/NoOp*
T0*
_output_shapes
: ?
lstm_608/while/Identity_1Identity0lstm_608_while_lstm_608_while_maximum_iterations^lstm_608/while/NoOp*
T0*
_output_shapes
: t
lstm_608/while/Identity_2Identitylstm_608/while/add:z:0^lstm_608/while/NoOp*
T0*
_output_shapes
: ?
lstm_608/while/Identity_3IdentityClstm_608/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_608/while/NoOp*
T0*
_output_shapes
: ?
lstm_608/while/Identity_4Identity&lstm_608/while/lstm_cell_698/mul_2:z:0^lstm_608/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_608/while/Identity_5Identity&lstm_608/while/lstm_cell_698/add_1:z:0^lstm_608/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_608/while/NoOpNoOp4^lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp3^lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp5^lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_608_while_identity lstm_608/while/Identity:output:0"?
lstm_608_while_identity_1"lstm_608/while/Identity_1:output:0"?
lstm_608_while_identity_2"lstm_608/while/Identity_2:output:0"?
lstm_608_while_identity_3"lstm_608/while/Identity_3:output:0"?
lstm_608_while_identity_4"lstm_608/while/Identity_4:output:0"?
lstm_608_while_identity_5"lstm_608/while/Identity_5:output:0"T
'lstm_608_while_lstm_608_strided_slice_1)lstm_608_while_lstm_608_strided_slice_1_0"~
<lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource>lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0"?
=lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource?lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0"|
;lstm_608_while_lstm_cell_698_matmul_readvariableop_resource=lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0"?
clstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensorelstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp3lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp2h
2lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp2lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp2l
4lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp4lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4223625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4223625___redundant_placeholder05
1while_while_cond_4223625___redundant_placeholder15
1while_while_cond_4223625___redundant_placeholder25
1while_while_cond_4223625___redundant_placeholder3
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
F__inference_dense_202_layer_call_and_return_conditional_losses_4228039

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
*__inference_lstm_608_layer_call_fn_4227415
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4223854o
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4223154

inputs(
lstm_cell_696_4223072:	?(
lstm_cell_696_4223074:	d?$
lstm_cell_696_4223076:	?
identity??%lstm_cell_696/StatefulPartitionedCall?while;
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
%lstm_cell_696/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_696_4223072lstm_cell_696_4223074lstm_cell_696_4223076*
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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4223071n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_696_4223072lstm_cell_696_4223074lstm_cell_696_4223076*
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
while_body_4223085*
condR
while_cond_4223084*K
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
NoOpNoOp&^lstm_cell_696/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_696/StatefulPartitionedCall%lstm_cell_696/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4224418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4224418___redundant_placeholder05
1while_while_cond_4224418___redundant_placeholder15
1while_while_cond_4224418___redundant_placeholder25
1while_while_cond_4224418___redundant_placeholder3
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225745

inputsH
5lstm_606_lstm_cell_696_matmul_readvariableop_resource:	?J
7lstm_606_lstm_cell_696_matmul_1_readvariableop_resource:	d?E
6lstm_606_lstm_cell_696_biasadd_readvariableop_resource:	?H
5lstm_607_lstm_cell_697_matmul_readvariableop_resource:	d?J
7lstm_607_lstm_cell_697_matmul_1_readvariableop_resource:	2?E
6lstm_607_lstm_cell_697_biasadd_readvariableop_resource:	?G
5lstm_608_lstm_cell_698_matmul_readvariableop_resource:2(I
7lstm_608_lstm_cell_698_matmul_1_readvariableop_resource:
(D
6lstm_608_lstm_cell_698_biasadd_readvariableop_resource:(:
(dense_202_matmul_readvariableop_resource:
7
)dense_202_biasadd_readvariableop_resource:
identity?? dense_202/BiasAdd/ReadVariableOp?dense_202/MatMul/ReadVariableOp?-lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp?,lstm_606/lstm_cell_696/MatMul/ReadVariableOp?.lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp?lstm_606/while?-lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp?,lstm_607/lstm_cell_697/MatMul/ReadVariableOp?.lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp?lstm_607/while?-lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp?,lstm_608/lstm_cell_698/MatMul/ReadVariableOp?.lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp?lstm_608/whileD
lstm_606/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_606/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_606/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_606/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_606/strided_sliceStridedSlicelstm_606/Shape:output:0%lstm_606/strided_slice/stack:output:0'lstm_606/strided_slice/stack_1:output:0'lstm_606/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_606/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_606/zeros/packedPacklstm_606/strided_slice:output:0 lstm_606/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_606/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_606/zerosFilllstm_606/zeros/packed:output:0lstm_606/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_606/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_606/zeros_1/packedPacklstm_606/strided_slice:output:0"lstm_606/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_606/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_606/zeros_1Fill lstm_606/zeros_1/packed:output:0lstm_606/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_606/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_606/transpose	Transposeinputs lstm_606/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_606/Shape_1Shapelstm_606/transpose:y:0*
T0*
_output_shapes
:h
lstm_606/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_606/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_606/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_606/strided_slice_1StridedSlicelstm_606/Shape_1:output:0'lstm_606/strided_slice_1/stack:output:0)lstm_606/strided_slice_1/stack_1:output:0)lstm_606/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_606/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_606/TensorArrayV2TensorListReserve-lstm_606/TensorArrayV2/element_shape:output:0!lstm_606/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_606/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_606/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_606/transpose:y:0Glstm_606/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_606/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_606/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_606/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_606/strided_slice_2StridedSlicelstm_606/transpose:y:0'lstm_606/strided_slice_2/stack:output:0)lstm_606/strided_slice_2/stack_1:output:0)lstm_606/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_606/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp5lstm_606_lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_606/lstm_cell_696/MatMulMatMul!lstm_606/strided_slice_2:output:04lstm_606/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_606/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp7lstm_606_lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_606/lstm_cell_696/MatMul_1MatMullstm_606/zeros:output:06lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_606/lstm_cell_696/addAddV2'lstm_606/lstm_cell_696/MatMul:product:0)lstm_606/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_606/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp6lstm_606_lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_606/lstm_cell_696/BiasAddBiasAddlstm_606/lstm_cell_696/add:z:05lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_606/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_606/lstm_cell_696/splitSplit/lstm_606/lstm_cell_696/split/split_dim:output:0'lstm_606/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_606/lstm_cell_696/SigmoidSigmoid%lstm_606/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_606/lstm_cell_696/Sigmoid_1Sigmoid%lstm_606/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_606/lstm_cell_696/mulMul$lstm_606/lstm_cell_696/Sigmoid_1:y:0lstm_606/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_606/lstm_cell_696/ReluRelu%lstm_606/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_606/lstm_cell_696/mul_1Mul"lstm_606/lstm_cell_696/Sigmoid:y:0)lstm_606/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_606/lstm_cell_696/add_1AddV2lstm_606/lstm_cell_696/mul:z:0 lstm_606/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_606/lstm_cell_696/Sigmoid_2Sigmoid%lstm_606/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_606/lstm_cell_696/Relu_1Relu lstm_606/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_606/lstm_cell_696/mul_2Mul$lstm_606/lstm_cell_696/Sigmoid_2:y:0+lstm_606/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_606/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_606/TensorArrayV2_1TensorListReserve/lstm_606/TensorArrayV2_1/element_shape:output:0!lstm_606/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_606/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_606/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_606/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_606/whileWhile$lstm_606/while/loop_counter:output:0*lstm_606/while/maximum_iterations:output:0lstm_606/time:output:0!lstm_606/TensorArrayV2_1:handle:0lstm_606/zeros:output:0lstm_606/zeros_1:output:0!lstm_606/strided_slice_1:output:0@lstm_606/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_606_lstm_cell_696_matmul_readvariableop_resource7lstm_606_lstm_cell_696_matmul_1_readvariableop_resource6lstm_606_lstm_cell_696_biasadd_readvariableop_resource*
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
lstm_606_while_body_4225377*'
condR
lstm_606_while_cond_4225376*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_606/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_606/TensorArrayV2Stack/TensorListStackTensorListStacklstm_606/while:output:3Blstm_606/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_606/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_606/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_606/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_606/strided_slice_3StridedSlice4lstm_606/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_606/strided_slice_3/stack:output:0)lstm_606/strided_slice_3/stack_1:output:0)lstm_606/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_606/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_606/transpose_1	Transpose4lstm_606/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_606/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_606/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_607/ShapeShapelstm_606/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_607/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_607/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_607/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_607/strided_sliceStridedSlicelstm_607/Shape:output:0%lstm_607/strided_slice/stack:output:0'lstm_607/strided_slice/stack_1:output:0'lstm_607/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_607/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_607/zeros/packedPacklstm_607/strided_slice:output:0 lstm_607/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_607/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_607/zerosFilllstm_607/zeros/packed:output:0lstm_607/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_607/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_607/zeros_1/packedPacklstm_607/strided_slice:output:0"lstm_607/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_607/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_607/zeros_1Fill lstm_607/zeros_1/packed:output:0lstm_607/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_607/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_607/transpose	Transposelstm_606/transpose_1:y:0 lstm_607/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_607/Shape_1Shapelstm_607/transpose:y:0*
T0*
_output_shapes
:h
lstm_607/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_607/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_607/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_607/strided_slice_1StridedSlicelstm_607/Shape_1:output:0'lstm_607/strided_slice_1/stack:output:0)lstm_607/strided_slice_1/stack_1:output:0)lstm_607/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_607/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_607/TensorArrayV2TensorListReserve-lstm_607/TensorArrayV2/element_shape:output:0!lstm_607/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_607/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_607/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_607/transpose:y:0Glstm_607/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_607/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_607/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_607/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_607/strided_slice_2StridedSlicelstm_607/transpose:y:0'lstm_607/strided_slice_2/stack:output:0)lstm_607/strided_slice_2/stack_1:output:0)lstm_607/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_607/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp5lstm_607_lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_607/lstm_cell_697/MatMulMatMul!lstm_607/strided_slice_2:output:04lstm_607/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_607/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp7lstm_607_lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_607/lstm_cell_697/MatMul_1MatMullstm_607/zeros:output:06lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_607/lstm_cell_697/addAddV2'lstm_607/lstm_cell_697/MatMul:product:0)lstm_607/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_607/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp6lstm_607_lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_607/lstm_cell_697/BiasAddBiasAddlstm_607/lstm_cell_697/add:z:05lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_607/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_607/lstm_cell_697/splitSplit/lstm_607/lstm_cell_697/split/split_dim:output:0'lstm_607/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_607/lstm_cell_697/SigmoidSigmoid%lstm_607/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_607/lstm_cell_697/Sigmoid_1Sigmoid%lstm_607/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_607/lstm_cell_697/mulMul$lstm_607/lstm_cell_697/Sigmoid_1:y:0lstm_607/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_607/lstm_cell_697/ReluRelu%lstm_607/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_607/lstm_cell_697/mul_1Mul"lstm_607/lstm_cell_697/Sigmoid:y:0)lstm_607/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_607/lstm_cell_697/add_1AddV2lstm_607/lstm_cell_697/mul:z:0 lstm_607/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_607/lstm_cell_697/Sigmoid_2Sigmoid%lstm_607/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_607/lstm_cell_697/Relu_1Relu lstm_607/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_607/lstm_cell_697/mul_2Mul$lstm_607/lstm_cell_697/Sigmoid_2:y:0+lstm_607/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_607/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_607/TensorArrayV2_1TensorListReserve/lstm_607/TensorArrayV2_1/element_shape:output:0!lstm_607/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_607/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_607/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_607/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_607/whileWhile$lstm_607/while/loop_counter:output:0*lstm_607/while/maximum_iterations:output:0lstm_607/time:output:0!lstm_607/TensorArrayV2_1:handle:0lstm_607/zeros:output:0lstm_607/zeros_1:output:0!lstm_607/strided_slice_1:output:0@lstm_607/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_607_lstm_cell_697_matmul_readvariableop_resource7lstm_607_lstm_cell_697_matmul_1_readvariableop_resource6lstm_607_lstm_cell_697_biasadd_readvariableop_resource*
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
lstm_607_while_body_4225516*'
condR
lstm_607_while_cond_4225515*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_607/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_607/TensorArrayV2Stack/TensorListStackTensorListStacklstm_607/while:output:3Blstm_607/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_607/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_607/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_607/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_607/strided_slice_3StridedSlice4lstm_607/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_607/strided_slice_3/stack:output:0)lstm_607/strided_slice_3/stack_1:output:0)lstm_607/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_607/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_607/transpose_1	Transpose4lstm_607/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_607/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_607/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_608/ShapeShapelstm_607/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_608/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_608/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_608/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_608/strided_sliceStridedSlicelstm_608/Shape:output:0%lstm_608/strided_slice/stack:output:0'lstm_608/strided_slice/stack_1:output:0'lstm_608/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_608/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_608/zeros/packedPacklstm_608/strided_slice:output:0 lstm_608/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_608/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_608/zerosFilllstm_608/zeros/packed:output:0lstm_608/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_608/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_608/zeros_1/packedPacklstm_608/strided_slice:output:0"lstm_608/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_608/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_608/zeros_1Fill lstm_608/zeros_1/packed:output:0lstm_608/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_608/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_608/transpose	Transposelstm_607/transpose_1:y:0 lstm_608/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_608/Shape_1Shapelstm_608/transpose:y:0*
T0*
_output_shapes
:h
lstm_608/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_608/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_608/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_608/strided_slice_1StridedSlicelstm_608/Shape_1:output:0'lstm_608/strided_slice_1/stack:output:0)lstm_608/strided_slice_1/stack_1:output:0)lstm_608/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_608/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_608/TensorArrayV2TensorListReserve-lstm_608/TensorArrayV2/element_shape:output:0!lstm_608/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_608/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_608/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_608/transpose:y:0Glstm_608/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_608/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_608/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_608/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_608/strided_slice_2StridedSlicelstm_608/transpose:y:0'lstm_608/strided_slice_2/stack:output:0)lstm_608/strided_slice_2/stack_1:output:0)lstm_608/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_608/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp5lstm_608_lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_608/lstm_cell_698/MatMulMatMul!lstm_608/strided_slice_2:output:04lstm_608/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_608/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp7lstm_608_lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_608/lstm_cell_698/MatMul_1MatMullstm_608/zeros:output:06lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_608/lstm_cell_698/addAddV2'lstm_608/lstm_cell_698/MatMul:product:0)lstm_608/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_608/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp6lstm_608_lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_608/lstm_cell_698/BiasAddBiasAddlstm_608/lstm_cell_698/add:z:05lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_608/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_608/lstm_cell_698/splitSplit/lstm_608/lstm_cell_698/split/split_dim:output:0'lstm_608/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_608/lstm_cell_698/SigmoidSigmoid%lstm_608/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_608/lstm_cell_698/Sigmoid_1Sigmoid%lstm_608/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_608/lstm_cell_698/mulMul$lstm_608/lstm_cell_698/Sigmoid_1:y:0lstm_608/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_608/lstm_cell_698/ReluRelu%lstm_608/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_608/lstm_cell_698/mul_1Mul"lstm_608/lstm_cell_698/Sigmoid:y:0)lstm_608/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_608/lstm_cell_698/add_1AddV2lstm_608/lstm_cell_698/mul:z:0 lstm_608/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_608/lstm_cell_698/Sigmoid_2Sigmoid%lstm_608/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_608/lstm_cell_698/Relu_1Relu lstm_608/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_608/lstm_cell_698/mul_2Mul$lstm_608/lstm_cell_698/Sigmoid_2:y:0+lstm_608/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_608/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_608/TensorArrayV2_1TensorListReserve/lstm_608/TensorArrayV2_1/element_shape:output:0!lstm_608/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_608/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_608/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_608/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_608/whileWhile$lstm_608/while/loop_counter:output:0*lstm_608/while/maximum_iterations:output:0lstm_608/time:output:0!lstm_608/TensorArrayV2_1:handle:0lstm_608/zeros:output:0lstm_608/zeros_1:output:0!lstm_608/strided_slice_1:output:0@lstm_608/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_608_lstm_cell_698_matmul_readvariableop_resource7lstm_608_lstm_cell_698_matmul_1_readvariableop_resource6lstm_608_lstm_cell_698_biasadd_readvariableop_resource*
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
lstm_608_while_body_4225655*'
condR
lstm_608_while_cond_4225654*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_608/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_608/TensorArrayV2Stack/TensorListStackTensorListStacklstm_608/while:output:3Blstm_608/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_608/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_608/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_608/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_608/strided_slice_3StridedSlice4lstm_608/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_608/strided_slice_3/stack:output:0)lstm_608/strided_slice_3/stack_1:output:0)lstm_608/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_608/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_608/transpose_1	Transpose4lstm_608/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_608/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_608/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_202/MatMul/ReadVariableOpReadVariableOp(dense_202_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_202/MatMulMatMul!lstm_608/strided_slice_3:output:0'dense_202/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_202/BiasAdd/ReadVariableOpReadVariableOp)dense_202_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_202/BiasAddBiasAdddense_202/MatMul:product:0(dense_202/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_202/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_202/BiasAdd/ReadVariableOp ^dense_202/MatMul/ReadVariableOp.^lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp-^lstm_606/lstm_cell_696/MatMul/ReadVariableOp/^lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp^lstm_606/while.^lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp-^lstm_607/lstm_cell_697/MatMul/ReadVariableOp/^lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp^lstm_607/while.^lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp-^lstm_608/lstm_cell_698/MatMul/ReadVariableOp/^lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp^lstm_608/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_202/BiasAdd/ReadVariableOp dense_202/BiasAdd/ReadVariableOp2B
dense_202/MatMul/ReadVariableOpdense_202/MatMul/ReadVariableOp2^
-lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp-lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp2\
,lstm_606/lstm_cell_696/MatMul/ReadVariableOp,lstm_606/lstm_cell_696/MatMul/ReadVariableOp2`
.lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp.lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp2 
lstm_606/whilelstm_606/while2^
-lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp-lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp2\
,lstm_607/lstm_cell_697/MatMul/ReadVariableOp,lstm_607/lstm_cell_697/MatMul/ReadVariableOp2`
.lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp.lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp2 
lstm_607/whilelstm_607/while2^
-lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp-lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp2\
,lstm_608/lstm_cell_698/MatMul/ReadVariableOp,lstm_608/lstm_cell_698/MatMul/ReadVariableOp2`
.lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp.lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp2 
lstm_608/whilelstm_608/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_202_layer_call_fn_4225318

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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225117o
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
while_cond_4227649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4227649___redundant_placeholder05
1while_while_cond_4227649___redundant_placeholder15
1while_while_cond_4227649___redundant_placeholder25
1while_while_cond_4227649___redundant_placeholder3
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224045

inputs'
lstm_cell_698_4223963:2('
lstm_cell_698_4223965:
(#
lstm_cell_698_4223967:(
identity??%lstm_cell_698/StatefulPartitionedCall?while;
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
%lstm_cell_698/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_698_4223963lstm_cell_698_4223965lstm_cell_698_4223967*
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4223917n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_698_4223963lstm_cell_698_4223965lstm_cell_698_4223967*
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
while_body_4223976*
condR
while_cond_4223975*K
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
NoOpNoOp&^lstm_cell_698/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_698/StatefulPartitionedCall%lstm_cell_698/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4226275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_696_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_696_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_696_matmul_readvariableop_resource:	?G
4while_lstm_cell_696_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_696_biasadd_readvariableop_resource:	???*while/lstm_cell_696/BiasAdd/ReadVariableOp?)while/lstm_cell_696/MatMul/ReadVariableOp?+while/lstm_cell_696/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_696/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_696/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_696/addAddV2$while/lstm_cell_696/MatMul:product:0&while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_696/BiasAddBiasAddwhile/lstm_cell_696/add:z:02while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_696/splitSplit,while/lstm_cell_696/split/split_dim:output:0$while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_696/SigmoidSigmoid"while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_1Sigmoid"while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mulMul!while/lstm_cell_696/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_696/ReluRelu"while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_1Mulwhile/lstm_cell_696/Sigmoid:y:0&while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/add_1AddV2while/lstm_cell_696/mul:z:0while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_2Sigmoid"while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_696/Relu_1Reluwhile/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_2Mul!while/lstm_cell_696/Sigmoid_2:y:0(while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_696/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_696/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_696/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_696/BiasAdd/ReadVariableOp*^while/lstm_cell_696/MatMul/ReadVariableOp,^while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_696_biasadd_readvariableop_resource5while_lstm_cell_696_biasadd_readvariableop_resource_0"n
4while_lstm_cell_696_matmul_1_readvariableop_resource6while_lstm_cell_696_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_696_matmul_readvariableop_resource4while_lstm_cell_696_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_696/BiasAdd/ReadVariableOp*while/lstm_cell_696/BiasAdd/ReadVariableOp2V
)while/lstm_cell_696/MatMul/ReadVariableOp)while/lstm_cell_696/MatMul/ReadVariableOp2Z
+while/lstm_cell_696/MatMul_1/ReadVariableOp+while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_607_layer_call_fn_4226810
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4223695|
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
?
?
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4223567

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
?
E__inference_lstm_606_layer_call_and_return_conditional_losses_4223345

inputs(
lstm_cell_696_4223263:	?(
lstm_cell_696_4223265:	d?$
lstm_cell_696_4223267:	?
identity??%lstm_cell_696/StatefulPartitionedCall?while;
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
%lstm_cell_696/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_696_4223263lstm_cell_696_4223265lstm_cell_696_4223267*
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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4223217n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_696_4223263lstm_cell_696_4223265lstm_cell_696_4223267*
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
while_body_4223276*
condR
while_cond_4223275*K
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
NoOpNoOp&^lstm_cell_696/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_696/StatefulPartitionedCall%lstm_cell_696/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_4228476
file_prefix/
+savev2_dense_202_kernel_read_readvariableop-
)savev2_dense_202_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_606_lstm_cell_606_kernel_read_readvariableopF
Bsavev2_lstm_606_lstm_cell_606_recurrent_kernel_read_readvariableop:
6savev2_lstm_606_lstm_cell_606_bias_read_readvariableop<
8savev2_lstm_607_lstm_cell_607_kernel_read_readvariableopF
Bsavev2_lstm_607_lstm_cell_607_recurrent_kernel_read_readvariableop:
6savev2_lstm_607_lstm_cell_607_bias_read_readvariableop<
8savev2_lstm_608_lstm_cell_608_kernel_read_readvariableopF
Bsavev2_lstm_608_lstm_cell_608_recurrent_kernel_read_readvariableop:
6savev2_lstm_608_lstm_cell_608_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_202_kernel_m_read_readvariableop4
0savev2_adam_dense_202_bias_m_read_readvariableopC
?savev2_adam_lstm_606_lstm_cell_606_kernel_m_read_readvariableopM
Isavev2_adam_lstm_606_lstm_cell_606_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_606_lstm_cell_606_bias_m_read_readvariableopC
?savev2_adam_lstm_607_lstm_cell_607_kernel_m_read_readvariableopM
Isavev2_adam_lstm_607_lstm_cell_607_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_607_lstm_cell_607_bias_m_read_readvariableopC
?savev2_adam_lstm_608_lstm_cell_608_kernel_m_read_readvariableopM
Isavev2_adam_lstm_608_lstm_cell_608_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_608_lstm_cell_608_bias_m_read_readvariableop6
2savev2_adam_dense_202_kernel_v_read_readvariableop4
0savev2_adam_dense_202_bias_v_read_readvariableopC
?savev2_adam_lstm_606_lstm_cell_606_kernel_v_read_readvariableopM
Isavev2_adam_lstm_606_lstm_cell_606_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_606_lstm_cell_606_bias_v_read_readvariableopC
?savev2_adam_lstm_607_lstm_cell_607_kernel_v_read_readvariableopM
Isavev2_adam_lstm_607_lstm_cell_607_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_607_lstm_cell_607_bias_v_read_readvariableopC
?savev2_adam_lstm_608_lstm_cell_608_kernel_v_read_readvariableopM
Isavev2_adam_lstm_608_lstm_cell_608_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_608_lstm_cell_608_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_202_kernel_read_readvariableop)savev2_dense_202_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_606_lstm_cell_606_kernel_read_readvariableopBsavev2_lstm_606_lstm_cell_606_recurrent_kernel_read_readvariableop6savev2_lstm_606_lstm_cell_606_bias_read_readvariableop8savev2_lstm_607_lstm_cell_607_kernel_read_readvariableopBsavev2_lstm_607_lstm_cell_607_recurrent_kernel_read_readvariableop6savev2_lstm_607_lstm_cell_607_bias_read_readvariableop8savev2_lstm_608_lstm_cell_608_kernel_read_readvariableopBsavev2_lstm_608_lstm_cell_608_recurrent_kernel_read_readvariableop6savev2_lstm_608_lstm_cell_608_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_202_kernel_m_read_readvariableop0savev2_adam_dense_202_bias_m_read_readvariableop?savev2_adam_lstm_606_lstm_cell_606_kernel_m_read_readvariableopIsavev2_adam_lstm_606_lstm_cell_606_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_606_lstm_cell_606_bias_m_read_readvariableop?savev2_adam_lstm_607_lstm_cell_607_kernel_m_read_readvariableopIsavev2_adam_lstm_607_lstm_cell_607_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_607_lstm_cell_607_bias_m_read_readvariableop?savev2_adam_lstm_608_lstm_cell_608_kernel_m_read_readvariableopIsavev2_adam_lstm_608_lstm_cell_608_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_608_lstm_cell_608_bias_m_read_readvariableop2savev2_adam_dense_202_kernel_v_read_readvariableop0savev2_adam_dense_202_bias_v_read_readvariableop?savev2_adam_lstm_606_lstm_cell_606_kernel_v_read_readvariableopIsavev2_adam_lstm_606_lstm_cell_606_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_606_lstm_cell_606_bias_v_read_readvariableop?savev2_adam_lstm_607_lstm_cell_607_kernel_v_read_readvariableopIsavev2_adam_lstm_607_lstm_cell_607_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_607_lstm_cell_607_bias_v_read_readvariableop?savev2_adam_lstm_608_lstm_cell_608_kernel_v_read_readvariableopIsavev2_adam_lstm_608_lstm_cell_608_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_608_lstm_cell_608_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_4226417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4226417___redundant_placeholder05
1while_while_cond_4226417___redundant_placeholder15
1while_while_cond_4226417___redundant_placeholder25
1while_while_cond_4226417___redundant_placeholder3
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
*sequential_202_lstm_607_while_cond_4222774L
Hsequential_202_lstm_607_while_sequential_202_lstm_607_while_loop_counterR
Nsequential_202_lstm_607_while_sequential_202_lstm_607_while_maximum_iterations-
)sequential_202_lstm_607_while_placeholder/
+sequential_202_lstm_607_while_placeholder_1/
+sequential_202_lstm_607_while_placeholder_2/
+sequential_202_lstm_607_while_placeholder_3N
Jsequential_202_lstm_607_while_less_sequential_202_lstm_607_strided_slice_1e
asequential_202_lstm_607_while_sequential_202_lstm_607_while_cond_4222774___redundant_placeholder0e
asequential_202_lstm_607_while_sequential_202_lstm_607_while_cond_4222774___redundant_placeholder1e
asequential_202_lstm_607_while_sequential_202_lstm_607_while_cond_4222774___redundant_placeholder2e
asequential_202_lstm_607_while_sequential_202_lstm_607_while_cond_4222774___redundant_placeholder3*
&sequential_202_lstm_607_while_identity
?
"sequential_202/lstm_607/while/LessLess)sequential_202_lstm_607_while_placeholderJsequential_202_lstm_607_while_less_sequential_202_lstm_607_strided_slice_1*
T0*
_output_shapes
: {
&sequential_202/lstm_607/while/IdentityIdentity&sequential_202/lstm_607/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_202_lstm_607_while_identity/sequential_202/lstm_607/while/Identity:output:0*(
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
/__inference_lstm_cell_698_layer_call_fn_4228252

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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4223771o
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
while_body_4227793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_698_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_698_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_698_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_698_matmul_readvariableop_resource:2(F
4while_lstm_cell_698_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_698_biasadd_readvariableop_resource:(??*while/lstm_cell_698/BiasAdd/ReadVariableOp?)while/lstm_cell_698/MatMul/ReadVariableOp?+while/lstm_cell_698/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_698/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_698/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_698/addAddV2$while/lstm_cell_698/MatMul:product:0&while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_698/BiasAddBiasAddwhile/lstm_cell_698/add:z:02while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_698/splitSplit,while/lstm_cell_698/split/split_dim:output:0$while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_698/SigmoidSigmoid"while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_1Sigmoid"while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mulMul!while/lstm_cell_698/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_698/ReluRelu"while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_1Mulwhile/lstm_cell_698/Sigmoid:y:0&while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/add_1AddV2while/lstm_cell_698/mul:z:0while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_2Sigmoid"while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_698/Relu_1Reluwhile/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_2Mul!while/lstm_cell_698/Sigmoid_2:y:0(while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_698/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_698/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_698/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_698/BiasAdd/ReadVariableOp*^while/lstm_cell_698/MatMul/ReadVariableOp,^while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_698_biasadd_readvariableop_resource5while_lstm_cell_698_biasadd_readvariableop_resource_0"n
4while_lstm_cell_698_matmul_1_readvariableop_resource6while_lstm_cell_698_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_698_matmul_readvariableop_resource4while_lstm_cell_698_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_698/BiasAdd/ReadVariableOp*while/lstm_cell_698/BiasAdd/ReadVariableOp2V
)while/lstm_cell_698/MatMul/ReadVariableOp)while/lstm_cell_698/MatMul/ReadVariableOp2Z
+while/lstm_cell_698/MatMul_1/ReadVariableOp+while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4223421

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

lstm_607_while_body_4225516.
*lstm_607_while_lstm_607_while_loop_counter4
0lstm_607_while_lstm_607_while_maximum_iterations
lstm_607_while_placeholder 
lstm_607_while_placeholder_1 
lstm_607_while_placeholder_2 
lstm_607_while_placeholder_3-
)lstm_607_while_lstm_607_strided_slice_1_0i
elstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0:	d?R
?lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?M
>lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0:	?
lstm_607_while_identity
lstm_607_while_identity_1
lstm_607_while_identity_2
lstm_607_while_identity_3
lstm_607_while_identity_4
lstm_607_while_identity_5+
'lstm_607_while_lstm_607_strided_slice_1g
clstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensorN
;lstm_607_while_lstm_cell_697_matmul_readvariableop_resource:	d?P
=lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource:	2?K
<lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource:	???3lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp?2lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp?4lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp?
@lstm_607/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_607/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensor_0lstm_607_while_placeholderIlstm_607/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_607/while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp=lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_607/while/lstm_cell_697/MatMulMatMul9lstm_607/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp?lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_607/while/lstm_cell_697/MatMul_1MatMullstm_607_while_placeholder_2<lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_607/while/lstm_cell_697/addAddV2-lstm_607/while/lstm_cell_697/MatMul:product:0/lstm_607/while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp>lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_607/while/lstm_cell_697/BiasAddBiasAdd$lstm_607/while/lstm_cell_697/add:z:0;lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_607/while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_607/while/lstm_cell_697/splitSplit5lstm_607/while/lstm_cell_697/split/split_dim:output:0-lstm_607/while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_607/while/lstm_cell_697/SigmoidSigmoid+lstm_607/while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_607/while/lstm_cell_697/Sigmoid_1Sigmoid+lstm_607/while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_607/while/lstm_cell_697/mulMul*lstm_607/while/lstm_cell_697/Sigmoid_1:y:0lstm_607_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_607/while/lstm_cell_697/ReluRelu+lstm_607/while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_607/while/lstm_cell_697/mul_1Mul(lstm_607/while/lstm_cell_697/Sigmoid:y:0/lstm_607/while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_607/while/lstm_cell_697/add_1AddV2$lstm_607/while/lstm_cell_697/mul:z:0&lstm_607/while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_607/while/lstm_cell_697/Sigmoid_2Sigmoid+lstm_607/while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_607/while/lstm_cell_697/Relu_1Relu&lstm_607/while/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_607/while/lstm_cell_697/mul_2Mul*lstm_607/while/lstm_cell_697/Sigmoid_2:y:01lstm_607/while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_607/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_607_while_placeholder_1lstm_607_while_placeholder&lstm_607/while/lstm_cell_697/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_607/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_607/while/addAddV2lstm_607_while_placeholderlstm_607/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_607/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_607/while/add_1AddV2*lstm_607_while_lstm_607_while_loop_counterlstm_607/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_607/while/IdentityIdentitylstm_607/while/add_1:z:0^lstm_607/while/NoOp*
T0*
_output_shapes
: ?
lstm_607/while/Identity_1Identity0lstm_607_while_lstm_607_while_maximum_iterations^lstm_607/while/NoOp*
T0*
_output_shapes
: t
lstm_607/while/Identity_2Identitylstm_607/while/add:z:0^lstm_607/while/NoOp*
T0*
_output_shapes
: ?
lstm_607/while/Identity_3IdentityClstm_607/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_607/while/NoOp*
T0*
_output_shapes
: ?
lstm_607/while/Identity_4Identity&lstm_607/while/lstm_cell_697/mul_2:z:0^lstm_607/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_607/while/Identity_5Identity&lstm_607/while/lstm_cell_697/add_1:z:0^lstm_607/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_607/while/NoOpNoOp4^lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp3^lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp5^lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_607_while_identity lstm_607/while/Identity:output:0"?
lstm_607_while_identity_1"lstm_607/while/Identity_1:output:0"?
lstm_607_while_identity_2"lstm_607/while/Identity_2:output:0"?
lstm_607_while_identity_3"lstm_607/while/Identity_3:output:0"?
lstm_607_while_identity_4"lstm_607/while/Identity_4:output:0"?
lstm_607_while_identity_5"lstm_607/while/Identity_5:output:0"T
'lstm_607_while_lstm_607_strided_slice_1)lstm_607_while_lstm_607_strided_slice_1_0"~
<lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource>lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0"?
=lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource?lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0"|
;lstm_607_while_lstm_cell_697_matmul_readvariableop_resource=lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0"?
clstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensorelstm_607_while_tensorarrayv2read_tensorlistgetitem_lstm_607_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp3lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp2h
2lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp2lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp2l
4lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp4lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227877

inputs>
,lstm_cell_698_matmul_readvariableop_resource:2(@
.lstm_cell_698_matmul_1_readvariableop_resource:
(;
-lstm_cell_698_biasadd_readvariableop_resource:(
identity??$lstm_cell_698/BiasAdd/ReadVariableOp?#lstm_cell_698/MatMul/ReadVariableOp?%lstm_cell_698/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_698/MatMul/ReadVariableOpReadVariableOp,lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_698/MatMulMatMulstrided_slice_2:output:0+lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_698/MatMul_1MatMulzeros:output:0-lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_698/addAddV2lstm_cell_698/MatMul:product:0 lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_698/BiasAddBiasAddlstm_cell_698/add:z:0,lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_698/splitSplit&lstm_cell_698/split/split_dim:output:0lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_698/SigmoidSigmoidlstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_1Sigmoidlstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_698/mulMullstm_cell_698/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_698/ReluRelulstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_1Mullstm_cell_698/Sigmoid:y:0 lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_698/add_1AddV2lstm_cell_698/mul:z:0lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_2Sigmoidlstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_698/Relu_1Relulstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_2Mullstm_cell_698/Sigmoid_2:y:0"lstm_cell_698/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_698_matmul_readvariableop_resource.lstm_cell_698_matmul_1_readvariableop_resource-lstm_cell_698_biasadd_readvariableop_resource*
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
while_body_4227793*
condR
while_cond_4227792*K
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
NoOpNoOp%^lstm_cell_698/BiasAdd/ReadVariableOp$^lstm_cell_698/MatMul/ReadVariableOp&^lstm_cell_698/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_698/BiasAdd/ReadVariableOp$lstm_cell_698/BiasAdd/ReadVariableOp2J
#lstm_cell_698/MatMul/ReadVariableOp#lstm_cell_698/MatMul/ReadVariableOp2N
%lstm_cell_698/MatMul_1/ReadVariableOp%lstm_cell_698/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
0__inference_sequential_202_layer_call_fn_4225291

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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4224528o
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226645

inputs?
,lstm_cell_696_matmul_readvariableop_resource:	?A
.lstm_cell_696_matmul_1_readvariableop_resource:	d?<
-lstm_cell_696_biasadd_readvariableop_resource:	?
identity??$lstm_cell_696/BiasAdd/ReadVariableOp?#lstm_cell_696/MatMul/ReadVariableOp?%lstm_cell_696/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_696/MatMul/ReadVariableOpReadVariableOp,lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_696/MatMulMatMulstrided_slice_2:output:0+lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_696/MatMul_1MatMulzeros:output:0-lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_696/addAddV2lstm_cell_696/MatMul:product:0 lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_696/BiasAddBiasAddlstm_cell_696/add:z:0,lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_696/splitSplit&lstm_cell_696/split/split_dim:output:0lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_696/SigmoidSigmoidlstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_1Sigmoidlstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_696/mulMullstm_cell_696/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_696/ReluRelulstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_1Mullstm_cell_696/Sigmoid:y:0 lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_696/add_1AddV2lstm_cell_696/mul:z:0lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_2Sigmoidlstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_696/Relu_1Relulstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_2Mullstm_cell_696/Sigmoid_2:y:0"lstm_cell_696/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_696_matmul_readvariableop_resource.lstm_cell_696_matmul_1_readvariableop_resource-lstm_cell_696_biasadd_readvariableop_resource*
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
while_body_4226561*
condR
while_cond_4226560*K
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
NoOpNoOp%^lstm_cell_696/BiasAdd/ReadVariableOp$^lstm_cell_696/MatMul/ReadVariableOp&^lstm_cell_696/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_696/BiasAdd/ReadVariableOp$lstm_cell_696/BiasAdd/ReadVariableOp2J
#lstm_cell_696/MatMul/ReadVariableOp#lstm_cell_696/MatMul/ReadVariableOp2N
%lstm_cell_696/MatMul_1/ReadVariableOp%lstm_cell_696/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4228105

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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4228137

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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224719

inputs>
,lstm_cell_698_matmul_readvariableop_resource:2(@
.lstm_cell_698_matmul_1_readvariableop_resource:
(;
-lstm_cell_698_biasadd_readvariableop_resource:(
identity??$lstm_cell_698/BiasAdd/ReadVariableOp?#lstm_cell_698/MatMul/ReadVariableOp?%lstm_cell_698/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_698/MatMul/ReadVariableOpReadVariableOp,lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_698/MatMulMatMulstrided_slice_2:output:0+lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_698/MatMul_1MatMulzeros:output:0-lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_698/addAddV2lstm_cell_698/MatMul:product:0 lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_698/BiasAddBiasAddlstm_cell_698/add:z:0,lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_698/splitSplit&lstm_cell_698/split/split_dim:output:0lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_698/SigmoidSigmoidlstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_1Sigmoidlstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_698/mulMullstm_cell_698/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_698/ReluRelulstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_1Mullstm_cell_698/Sigmoid:y:0 lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_698/add_1AddV2lstm_cell_698/mul:z:0lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_698/Sigmoid_2Sigmoidlstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_698/Relu_1Relulstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_698/mul_2Mullstm_cell_698/Sigmoid_2:y:0"lstm_cell_698/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_698_matmul_readvariableop_resource.lstm_cell_698_matmul_1_readvariableop_resource-lstm_cell_698_biasadd_readvariableop_resource*
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
while_body_4224635*
condR
while_cond_4224634*K
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
NoOpNoOp%^lstm_cell_698/BiasAdd/ReadVariableOp$^lstm_cell_698/MatMul/ReadVariableOp&^lstm_cell_698/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_698/BiasAdd/ReadVariableOp$lstm_cell_698/BiasAdd/ReadVariableOp2J
#lstm_cell_698/MatMul/ReadVariableOp#lstm_cell_698/MatMul/ReadVariableOp2N
%lstm_cell_698/MatMul_1/ReadVariableOp%lstm_cell_698/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?T
?
*sequential_202_lstm_607_while_body_4222775L
Hsequential_202_lstm_607_while_sequential_202_lstm_607_while_loop_counterR
Nsequential_202_lstm_607_while_sequential_202_lstm_607_while_maximum_iterations-
)sequential_202_lstm_607_while_placeholder/
+sequential_202_lstm_607_while_placeholder_1/
+sequential_202_lstm_607_while_placeholder_2/
+sequential_202_lstm_607_while_placeholder_3K
Gsequential_202_lstm_607_while_sequential_202_lstm_607_strided_slice_1_0?
?sequential_202_lstm_607_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_607_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_202_lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0:	d?a
Nsequential_202_lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?\
Msequential_202_lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0:	?*
&sequential_202_lstm_607_while_identity,
(sequential_202_lstm_607_while_identity_1,
(sequential_202_lstm_607_while_identity_2,
(sequential_202_lstm_607_while_identity_3,
(sequential_202_lstm_607_while_identity_4,
(sequential_202_lstm_607_while_identity_5I
Esequential_202_lstm_607_while_sequential_202_lstm_607_strided_slice_1?
?sequential_202_lstm_607_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_607_tensorarrayunstack_tensorlistfromtensor]
Jsequential_202_lstm_607_while_lstm_cell_697_matmul_readvariableop_resource:	d?_
Lsequential_202_lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource:	2?Z
Ksequential_202_lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource:	???Bsequential_202/lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp?Asequential_202/lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp?Csequential_202/lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp?
Osequential_202/lstm_607/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_202/lstm_607/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_202_lstm_607_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_607_tensorarrayunstack_tensorlistfromtensor_0)sequential_202_lstm_607_while_placeholderXsequential_202/lstm_607/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_202/lstm_607/while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOpLsequential_202_lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_202/lstm_607/while/lstm_cell_697/MatMulMatMulHsequential_202/lstm_607/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_202/lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_202/lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOpNsequential_202_lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_202/lstm_607/while/lstm_cell_697/MatMul_1MatMul+sequential_202_lstm_607_while_placeholder_2Ksequential_202/lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_202/lstm_607/while/lstm_cell_697/addAddV2<sequential_202/lstm_607/while/lstm_cell_697/MatMul:product:0>sequential_202/lstm_607/while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_202/lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOpMsequential_202_lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_202/lstm_607/while/lstm_cell_697/BiasAddBiasAdd3sequential_202/lstm_607/while/lstm_cell_697/add:z:0Jsequential_202/lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_202/lstm_607/while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_202/lstm_607/while/lstm_cell_697/splitSplitDsequential_202/lstm_607/while/lstm_cell_697/split/split_dim:output:0<sequential_202/lstm_607/while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_202/lstm_607/while/lstm_cell_697/SigmoidSigmoid:sequential_202/lstm_607/while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_202/lstm_607/while/lstm_cell_697/Sigmoid_1Sigmoid:sequential_202/lstm_607/while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_202/lstm_607/while/lstm_cell_697/mulMul9sequential_202/lstm_607/while/lstm_cell_697/Sigmoid_1:y:0+sequential_202_lstm_607_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_202/lstm_607/while/lstm_cell_697/ReluRelu:sequential_202/lstm_607/while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_202/lstm_607/while/lstm_cell_697/mul_1Mul7sequential_202/lstm_607/while/lstm_cell_697/Sigmoid:y:0>sequential_202/lstm_607/while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_202/lstm_607/while/lstm_cell_697/add_1AddV23sequential_202/lstm_607/while/lstm_cell_697/mul:z:05sequential_202/lstm_607/while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_202/lstm_607/while/lstm_cell_697/Sigmoid_2Sigmoid:sequential_202/lstm_607/while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_202/lstm_607/while/lstm_cell_697/Relu_1Relu5sequential_202/lstm_607/while/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_202/lstm_607/while/lstm_cell_697/mul_2Mul9sequential_202/lstm_607/while/lstm_cell_697/Sigmoid_2:y:0@sequential_202/lstm_607/while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_202/lstm_607/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_202_lstm_607_while_placeholder_1)sequential_202_lstm_607_while_placeholder5sequential_202/lstm_607/while/lstm_cell_697/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_202/lstm_607/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_202/lstm_607/while/addAddV2)sequential_202_lstm_607_while_placeholder,sequential_202/lstm_607/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_202/lstm_607/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_202/lstm_607/while/add_1AddV2Hsequential_202_lstm_607_while_sequential_202_lstm_607_while_loop_counter.sequential_202/lstm_607/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_202/lstm_607/while/IdentityIdentity'sequential_202/lstm_607/while/add_1:z:0#^sequential_202/lstm_607/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_607/while/Identity_1IdentityNsequential_202_lstm_607_while_sequential_202_lstm_607_while_maximum_iterations#^sequential_202/lstm_607/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_607/while/Identity_2Identity%sequential_202/lstm_607/while/add:z:0#^sequential_202/lstm_607/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_607/while/Identity_3IdentityRsequential_202/lstm_607/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_202/lstm_607/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_607/while/Identity_4Identity5sequential_202/lstm_607/while/lstm_cell_697/mul_2:z:0#^sequential_202/lstm_607/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_202/lstm_607/while/Identity_5Identity5sequential_202/lstm_607/while/lstm_cell_697/add_1:z:0#^sequential_202/lstm_607/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_202/lstm_607/while/NoOpNoOpC^sequential_202/lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOpB^sequential_202/lstm_607/while/lstm_cell_697/MatMul/ReadVariableOpD^sequential_202/lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_202_lstm_607_while_identity/sequential_202/lstm_607/while/Identity:output:0"]
(sequential_202_lstm_607_while_identity_11sequential_202/lstm_607/while/Identity_1:output:0"]
(sequential_202_lstm_607_while_identity_21sequential_202/lstm_607/while/Identity_2:output:0"]
(sequential_202_lstm_607_while_identity_31sequential_202/lstm_607/while/Identity_3:output:0"]
(sequential_202_lstm_607_while_identity_41sequential_202/lstm_607/while/Identity_4:output:0"]
(sequential_202_lstm_607_while_identity_51sequential_202/lstm_607/while/Identity_5:output:0"?
Ksequential_202_lstm_607_while_lstm_cell_697_biasadd_readvariableop_resourceMsequential_202_lstm_607_while_lstm_cell_697_biasadd_readvariableop_resource_0"?
Lsequential_202_lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resourceNsequential_202_lstm_607_while_lstm_cell_697_matmul_1_readvariableop_resource_0"?
Jsequential_202_lstm_607_while_lstm_cell_697_matmul_readvariableop_resourceLsequential_202_lstm_607_while_lstm_cell_697_matmul_readvariableop_resource_0"?
Esequential_202_lstm_607_while_sequential_202_lstm_607_strided_slice_1Gsequential_202_lstm_607_while_sequential_202_lstm_607_strided_slice_1_0"?
?sequential_202_lstm_607_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_607_tensorarrayunstack_tensorlistfromtensor?sequential_202_lstm_607_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_607_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_202/lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOpBsequential_202/lstm_607/while/lstm_cell_697/BiasAdd/ReadVariableOp2?
Asequential_202/lstm_607/while/lstm_cell_697/MatMul/ReadVariableOpAsequential_202/lstm_607/while/lstm_cell_697/MatMul/ReadVariableOp2?
Csequential_202/lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOpCsequential_202/lstm_607/while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
"__inference__wrapped_model_4223004
lstm_606_inputW
Dsequential_202_lstm_606_lstm_cell_696_matmul_readvariableop_resource:	?Y
Fsequential_202_lstm_606_lstm_cell_696_matmul_1_readvariableop_resource:	d?T
Esequential_202_lstm_606_lstm_cell_696_biasadd_readvariableop_resource:	?W
Dsequential_202_lstm_607_lstm_cell_697_matmul_readvariableop_resource:	d?Y
Fsequential_202_lstm_607_lstm_cell_697_matmul_1_readvariableop_resource:	2?T
Esequential_202_lstm_607_lstm_cell_697_biasadd_readvariableop_resource:	?V
Dsequential_202_lstm_608_lstm_cell_698_matmul_readvariableop_resource:2(X
Fsequential_202_lstm_608_lstm_cell_698_matmul_1_readvariableop_resource:
(S
Esequential_202_lstm_608_lstm_cell_698_biasadd_readvariableop_resource:(I
7sequential_202_dense_202_matmul_readvariableop_resource:
F
8sequential_202_dense_202_biasadd_readvariableop_resource:
identity??/sequential_202/dense_202/BiasAdd/ReadVariableOp?.sequential_202/dense_202/MatMul/ReadVariableOp?<sequential_202/lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp?;sequential_202/lstm_606/lstm_cell_696/MatMul/ReadVariableOp?=sequential_202/lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp?sequential_202/lstm_606/while?<sequential_202/lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp?;sequential_202/lstm_607/lstm_cell_697/MatMul/ReadVariableOp?=sequential_202/lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp?sequential_202/lstm_607/while?<sequential_202/lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp?;sequential_202/lstm_608/lstm_cell_698/MatMul/ReadVariableOp?=sequential_202/lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp?sequential_202/lstm_608/while[
sequential_202/lstm_606/ShapeShapelstm_606_input*
T0*
_output_shapes
:u
+sequential_202/lstm_606/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_202/lstm_606/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_202/lstm_606/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_202/lstm_606/strided_sliceStridedSlice&sequential_202/lstm_606/Shape:output:04sequential_202/lstm_606/strided_slice/stack:output:06sequential_202/lstm_606/strided_slice/stack_1:output:06sequential_202/lstm_606/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_202/lstm_606/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_202/lstm_606/zeros/packedPack.sequential_202/lstm_606/strided_slice:output:0/sequential_202/lstm_606/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_202/lstm_606/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_202/lstm_606/zerosFill-sequential_202/lstm_606/zeros/packed:output:0,sequential_202/lstm_606/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_202/lstm_606/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_202/lstm_606/zeros_1/packedPack.sequential_202/lstm_606/strided_slice:output:01sequential_202/lstm_606/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_202/lstm_606/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_202/lstm_606/zeros_1Fill/sequential_202/lstm_606/zeros_1/packed:output:0.sequential_202/lstm_606/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_202/lstm_606/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_202/lstm_606/transpose	Transposelstm_606_input/sequential_202/lstm_606/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_202/lstm_606/Shape_1Shape%sequential_202/lstm_606/transpose:y:0*
T0*
_output_shapes
:w
-sequential_202/lstm_606/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_606/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_202/lstm_606/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_606/strided_slice_1StridedSlice(sequential_202/lstm_606/Shape_1:output:06sequential_202/lstm_606/strided_slice_1/stack:output:08sequential_202/lstm_606/strided_slice_1/stack_1:output:08sequential_202/lstm_606/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_202/lstm_606/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_202/lstm_606/TensorArrayV2TensorListReserve<sequential_202/lstm_606/TensorArrayV2/element_shape:output:00sequential_202/lstm_606/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_202/lstm_606/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_202/lstm_606/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_202/lstm_606/transpose:y:0Vsequential_202/lstm_606/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_202/lstm_606/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_606/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_202/lstm_606/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_606/strided_slice_2StridedSlice%sequential_202/lstm_606/transpose:y:06sequential_202/lstm_606/strided_slice_2/stack:output:08sequential_202/lstm_606/strided_slice_2/stack_1:output:08sequential_202/lstm_606/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_202/lstm_606/lstm_cell_696/MatMul/ReadVariableOpReadVariableOpDsequential_202_lstm_606_lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_202/lstm_606/lstm_cell_696/MatMulMatMul0sequential_202/lstm_606/strided_slice_2:output:0Csequential_202/lstm_606/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_202/lstm_606/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOpFsequential_202_lstm_606_lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_202/lstm_606/lstm_cell_696/MatMul_1MatMul&sequential_202/lstm_606/zeros:output:0Esequential_202/lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_202/lstm_606/lstm_cell_696/addAddV26sequential_202/lstm_606/lstm_cell_696/MatMul:product:08sequential_202/lstm_606/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_202/lstm_606/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOpEsequential_202_lstm_606_lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_202/lstm_606/lstm_cell_696/BiasAddBiasAdd-sequential_202/lstm_606/lstm_cell_696/add:z:0Dsequential_202/lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_202/lstm_606/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_202/lstm_606/lstm_cell_696/splitSplit>sequential_202/lstm_606/lstm_cell_696/split/split_dim:output:06sequential_202/lstm_606/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_202/lstm_606/lstm_cell_696/SigmoidSigmoid4sequential_202/lstm_606/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_202/lstm_606/lstm_cell_696/Sigmoid_1Sigmoid4sequential_202/lstm_606/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_202/lstm_606/lstm_cell_696/mulMul3sequential_202/lstm_606/lstm_cell_696/Sigmoid_1:y:0(sequential_202/lstm_606/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_202/lstm_606/lstm_cell_696/ReluRelu4sequential_202/lstm_606/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_202/lstm_606/lstm_cell_696/mul_1Mul1sequential_202/lstm_606/lstm_cell_696/Sigmoid:y:08sequential_202/lstm_606/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_202/lstm_606/lstm_cell_696/add_1AddV2-sequential_202/lstm_606/lstm_cell_696/mul:z:0/sequential_202/lstm_606/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_202/lstm_606/lstm_cell_696/Sigmoid_2Sigmoid4sequential_202/lstm_606/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_202/lstm_606/lstm_cell_696/Relu_1Relu/sequential_202/lstm_606/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_202/lstm_606/lstm_cell_696/mul_2Mul3sequential_202/lstm_606/lstm_cell_696/Sigmoid_2:y:0:sequential_202/lstm_606/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_202/lstm_606/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_202/lstm_606/TensorArrayV2_1TensorListReserve>sequential_202/lstm_606/TensorArrayV2_1/element_shape:output:00sequential_202/lstm_606/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_202/lstm_606/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_202/lstm_606/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_202/lstm_606/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_202/lstm_606/whileWhile3sequential_202/lstm_606/while/loop_counter:output:09sequential_202/lstm_606/while/maximum_iterations:output:0%sequential_202/lstm_606/time:output:00sequential_202/lstm_606/TensorArrayV2_1:handle:0&sequential_202/lstm_606/zeros:output:0(sequential_202/lstm_606/zeros_1:output:00sequential_202/lstm_606/strided_slice_1:output:0Osequential_202/lstm_606/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_202_lstm_606_lstm_cell_696_matmul_readvariableop_resourceFsequential_202_lstm_606_lstm_cell_696_matmul_1_readvariableop_resourceEsequential_202_lstm_606_lstm_cell_696_biasadd_readvariableop_resource*
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
*sequential_202_lstm_606_while_body_4222636*6
cond.R,
*sequential_202_lstm_606_while_cond_4222635*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_202/lstm_606/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_202/lstm_606/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_202/lstm_606/while:output:3Qsequential_202/lstm_606/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_202/lstm_606/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_202/lstm_606/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_606/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_606/strided_slice_3StridedSliceCsequential_202/lstm_606/TensorArrayV2Stack/TensorListStack:tensor:06sequential_202/lstm_606/strided_slice_3/stack:output:08sequential_202/lstm_606/strided_slice_3/stack_1:output:08sequential_202/lstm_606/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_202/lstm_606/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_202/lstm_606/transpose_1	TransposeCsequential_202/lstm_606/TensorArrayV2Stack/TensorListStack:tensor:01sequential_202/lstm_606/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_202/lstm_606/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_202/lstm_607/ShapeShape'sequential_202/lstm_606/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_202/lstm_607/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_202/lstm_607/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_202/lstm_607/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_202/lstm_607/strided_sliceStridedSlice&sequential_202/lstm_607/Shape:output:04sequential_202/lstm_607/strided_slice/stack:output:06sequential_202/lstm_607/strided_slice/stack_1:output:06sequential_202/lstm_607/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_202/lstm_607/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_202/lstm_607/zeros/packedPack.sequential_202/lstm_607/strided_slice:output:0/sequential_202/lstm_607/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_202/lstm_607/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_202/lstm_607/zerosFill-sequential_202/lstm_607/zeros/packed:output:0,sequential_202/lstm_607/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_202/lstm_607/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_202/lstm_607/zeros_1/packedPack.sequential_202/lstm_607/strided_slice:output:01sequential_202/lstm_607/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_202/lstm_607/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_202/lstm_607/zeros_1Fill/sequential_202/lstm_607/zeros_1/packed:output:0.sequential_202/lstm_607/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_202/lstm_607/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_202/lstm_607/transpose	Transpose'sequential_202/lstm_606/transpose_1:y:0/sequential_202/lstm_607/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_202/lstm_607/Shape_1Shape%sequential_202/lstm_607/transpose:y:0*
T0*
_output_shapes
:w
-sequential_202/lstm_607/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_607/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_202/lstm_607/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_607/strided_slice_1StridedSlice(sequential_202/lstm_607/Shape_1:output:06sequential_202/lstm_607/strided_slice_1/stack:output:08sequential_202/lstm_607/strided_slice_1/stack_1:output:08sequential_202/lstm_607/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_202/lstm_607/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_202/lstm_607/TensorArrayV2TensorListReserve<sequential_202/lstm_607/TensorArrayV2/element_shape:output:00sequential_202/lstm_607/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_202/lstm_607/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_202/lstm_607/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_202/lstm_607/transpose:y:0Vsequential_202/lstm_607/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_202/lstm_607/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_607/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_202/lstm_607/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_607/strided_slice_2StridedSlice%sequential_202/lstm_607/transpose:y:06sequential_202/lstm_607/strided_slice_2/stack:output:08sequential_202/lstm_607/strided_slice_2/stack_1:output:08sequential_202/lstm_607/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_202/lstm_607/lstm_cell_697/MatMul/ReadVariableOpReadVariableOpDsequential_202_lstm_607_lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_202/lstm_607/lstm_cell_697/MatMulMatMul0sequential_202/lstm_607/strided_slice_2:output:0Csequential_202/lstm_607/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_202/lstm_607/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOpFsequential_202_lstm_607_lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_202/lstm_607/lstm_cell_697/MatMul_1MatMul&sequential_202/lstm_607/zeros:output:0Esequential_202/lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_202/lstm_607/lstm_cell_697/addAddV26sequential_202/lstm_607/lstm_cell_697/MatMul:product:08sequential_202/lstm_607/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_202/lstm_607/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOpEsequential_202_lstm_607_lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_202/lstm_607/lstm_cell_697/BiasAddBiasAdd-sequential_202/lstm_607/lstm_cell_697/add:z:0Dsequential_202/lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_202/lstm_607/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_202/lstm_607/lstm_cell_697/splitSplit>sequential_202/lstm_607/lstm_cell_697/split/split_dim:output:06sequential_202/lstm_607/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_202/lstm_607/lstm_cell_697/SigmoidSigmoid4sequential_202/lstm_607/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_202/lstm_607/lstm_cell_697/Sigmoid_1Sigmoid4sequential_202/lstm_607/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_202/lstm_607/lstm_cell_697/mulMul3sequential_202/lstm_607/lstm_cell_697/Sigmoid_1:y:0(sequential_202/lstm_607/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_202/lstm_607/lstm_cell_697/ReluRelu4sequential_202/lstm_607/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_202/lstm_607/lstm_cell_697/mul_1Mul1sequential_202/lstm_607/lstm_cell_697/Sigmoid:y:08sequential_202/lstm_607/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_202/lstm_607/lstm_cell_697/add_1AddV2-sequential_202/lstm_607/lstm_cell_697/mul:z:0/sequential_202/lstm_607/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_202/lstm_607/lstm_cell_697/Sigmoid_2Sigmoid4sequential_202/lstm_607/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_202/lstm_607/lstm_cell_697/Relu_1Relu/sequential_202/lstm_607/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_202/lstm_607/lstm_cell_697/mul_2Mul3sequential_202/lstm_607/lstm_cell_697/Sigmoid_2:y:0:sequential_202/lstm_607/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_202/lstm_607/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_202/lstm_607/TensorArrayV2_1TensorListReserve>sequential_202/lstm_607/TensorArrayV2_1/element_shape:output:00sequential_202/lstm_607/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_202/lstm_607/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_202/lstm_607/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_202/lstm_607/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_202/lstm_607/whileWhile3sequential_202/lstm_607/while/loop_counter:output:09sequential_202/lstm_607/while/maximum_iterations:output:0%sequential_202/lstm_607/time:output:00sequential_202/lstm_607/TensorArrayV2_1:handle:0&sequential_202/lstm_607/zeros:output:0(sequential_202/lstm_607/zeros_1:output:00sequential_202/lstm_607/strided_slice_1:output:0Osequential_202/lstm_607/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_202_lstm_607_lstm_cell_697_matmul_readvariableop_resourceFsequential_202_lstm_607_lstm_cell_697_matmul_1_readvariableop_resourceEsequential_202_lstm_607_lstm_cell_697_biasadd_readvariableop_resource*
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
*sequential_202_lstm_607_while_body_4222775*6
cond.R,
*sequential_202_lstm_607_while_cond_4222774*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_202/lstm_607/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_202/lstm_607/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_202/lstm_607/while:output:3Qsequential_202/lstm_607/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_202/lstm_607/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_202/lstm_607/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_607/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_607/strided_slice_3StridedSliceCsequential_202/lstm_607/TensorArrayV2Stack/TensorListStack:tensor:06sequential_202/lstm_607/strided_slice_3/stack:output:08sequential_202/lstm_607/strided_slice_3/stack_1:output:08sequential_202/lstm_607/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_202/lstm_607/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_202/lstm_607/transpose_1	TransposeCsequential_202/lstm_607/TensorArrayV2Stack/TensorListStack:tensor:01sequential_202/lstm_607/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_202/lstm_607/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_202/lstm_608/ShapeShape'sequential_202/lstm_607/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_202/lstm_608/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_202/lstm_608/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_202/lstm_608/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_202/lstm_608/strided_sliceStridedSlice&sequential_202/lstm_608/Shape:output:04sequential_202/lstm_608/strided_slice/stack:output:06sequential_202/lstm_608/strided_slice/stack_1:output:06sequential_202/lstm_608/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_202/lstm_608/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_202/lstm_608/zeros/packedPack.sequential_202/lstm_608/strided_slice:output:0/sequential_202/lstm_608/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_202/lstm_608/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_202/lstm_608/zerosFill-sequential_202/lstm_608/zeros/packed:output:0,sequential_202/lstm_608/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_202/lstm_608/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_202/lstm_608/zeros_1/packedPack.sequential_202/lstm_608/strided_slice:output:01sequential_202/lstm_608/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_202/lstm_608/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_202/lstm_608/zeros_1Fill/sequential_202/lstm_608/zeros_1/packed:output:0.sequential_202/lstm_608/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_202/lstm_608/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_202/lstm_608/transpose	Transpose'sequential_202/lstm_607/transpose_1:y:0/sequential_202/lstm_608/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_202/lstm_608/Shape_1Shape%sequential_202/lstm_608/transpose:y:0*
T0*
_output_shapes
:w
-sequential_202/lstm_608/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_608/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_202/lstm_608/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_608/strided_slice_1StridedSlice(sequential_202/lstm_608/Shape_1:output:06sequential_202/lstm_608/strided_slice_1/stack:output:08sequential_202/lstm_608/strided_slice_1/stack_1:output:08sequential_202/lstm_608/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_202/lstm_608/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_202/lstm_608/TensorArrayV2TensorListReserve<sequential_202/lstm_608/TensorArrayV2/element_shape:output:00sequential_202/lstm_608/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_202/lstm_608/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_202/lstm_608/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_202/lstm_608/transpose:y:0Vsequential_202/lstm_608/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_202/lstm_608/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_608/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_202/lstm_608/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_608/strided_slice_2StridedSlice%sequential_202/lstm_608/transpose:y:06sequential_202/lstm_608/strided_slice_2/stack:output:08sequential_202/lstm_608/strided_slice_2/stack_1:output:08sequential_202/lstm_608/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_202/lstm_608/lstm_cell_698/MatMul/ReadVariableOpReadVariableOpDsequential_202_lstm_608_lstm_cell_698_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_202/lstm_608/lstm_cell_698/MatMulMatMul0sequential_202/lstm_608/strided_slice_2:output:0Csequential_202/lstm_608/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_202/lstm_608/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOpFsequential_202_lstm_608_lstm_cell_698_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_202/lstm_608/lstm_cell_698/MatMul_1MatMul&sequential_202/lstm_608/zeros:output:0Esequential_202/lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_202/lstm_608/lstm_cell_698/addAddV26sequential_202/lstm_608/lstm_cell_698/MatMul:product:08sequential_202/lstm_608/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_202/lstm_608/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOpEsequential_202_lstm_608_lstm_cell_698_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_202/lstm_608/lstm_cell_698/BiasAddBiasAdd-sequential_202/lstm_608/lstm_cell_698/add:z:0Dsequential_202/lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_202/lstm_608/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_202/lstm_608/lstm_cell_698/splitSplit>sequential_202/lstm_608/lstm_cell_698/split/split_dim:output:06sequential_202/lstm_608/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_202/lstm_608/lstm_cell_698/SigmoidSigmoid4sequential_202/lstm_608/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_202/lstm_608/lstm_cell_698/Sigmoid_1Sigmoid4sequential_202/lstm_608/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_202/lstm_608/lstm_cell_698/mulMul3sequential_202/lstm_608/lstm_cell_698/Sigmoid_1:y:0(sequential_202/lstm_608/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_202/lstm_608/lstm_cell_698/ReluRelu4sequential_202/lstm_608/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_202/lstm_608/lstm_cell_698/mul_1Mul1sequential_202/lstm_608/lstm_cell_698/Sigmoid:y:08sequential_202/lstm_608/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_202/lstm_608/lstm_cell_698/add_1AddV2-sequential_202/lstm_608/lstm_cell_698/mul:z:0/sequential_202/lstm_608/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_202/lstm_608/lstm_cell_698/Sigmoid_2Sigmoid4sequential_202/lstm_608/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_202/lstm_608/lstm_cell_698/Relu_1Relu/sequential_202/lstm_608/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_202/lstm_608/lstm_cell_698/mul_2Mul3sequential_202/lstm_608/lstm_cell_698/Sigmoid_2:y:0:sequential_202/lstm_608/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_202/lstm_608/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_202/lstm_608/TensorArrayV2_1TensorListReserve>sequential_202/lstm_608/TensorArrayV2_1/element_shape:output:00sequential_202/lstm_608/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_202/lstm_608/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_202/lstm_608/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_202/lstm_608/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_202/lstm_608/whileWhile3sequential_202/lstm_608/while/loop_counter:output:09sequential_202/lstm_608/while/maximum_iterations:output:0%sequential_202/lstm_608/time:output:00sequential_202/lstm_608/TensorArrayV2_1:handle:0&sequential_202/lstm_608/zeros:output:0(sequential_202/lstm_608/zeros_1:output:00sequential_202/lstm_608/strided_slice_1:output:0Osequential_202/lstm_608/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_202_lstm_608_lstm_cell_698_matmul_readvariableop_resourceFsequential_202_lstm_608_lstm_cell_698_matmul_1_readvariableop_resourceEsequential_202_lstm_608_lstm_cell_698_biasadd_readvariableop_resource*
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
*sequential_202_lstm_608_while_body_4222914*6
cond.R,
*sequential_202_lstm_608_while_cond_4222913*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_202/lstm_608/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_202/lstm_608/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_202/lstm_608/while:output:3Qsequential_202/lstm_608/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_202/lstm_608/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_202/lstm_608/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_202/lstm_608/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_202/lstm_608/strided_slice_3StridedSliceCsequential_202/lstm_608/TensorArrayV2Stack/TensorListStack:tensor:06sequential_202/lstm_608/strided_slice_3/stack:output:08sequential_202/lstm_608/strided_slice_3/stack_1:output:08sequential_202/lstm_608/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_202/lstm_608/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_202/lstm_608/transpose_1	TransposeCsequential_202/lstm_608/TensorArrayV2Stack/TensorListStack:tensor:01sequential_202/lstm_608/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_202/lstm_608/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_202/dense_202/MatMul/ReadVariableOpReadVariableOp7sequential_202_dense_202_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_202/dense_202/MatMulMatMul0sequential_202/lstm_608/strided_slice_3:output:06sequential_202/dense_202/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_202/dense_202/BiasAdd/ReadVariableOpReadVariableOp8sequential_202_dense_202_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_202/dense_202/BiasAddBiasAdd)sequential_202/dense_202/MatMul:product:07sequential_202/dense_202/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_202/dense_202/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_202/dense_202/BiasAdd/ReadVariableOp/^sequential_202/dense_202/MatMul/ReadVariableOp=^sequential_202/lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp<^sequential_202/lstm_606/lstm_cell_696/MatMul/ReadVariableOp>^sequential_202/lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp^sequential_202/lstm_606/while=^sequential_202/lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp<^sequential_202/lstm_607/lstm_cell_697/MatMul/ReadVariableOp>^sequential_202/lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp^sequential_202/lstm_607/while=^sequential_202/lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp<^sequential_202/lstm_608/lstm_cell_698/MatMul/ReadVariableOp>^sequential_202/lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp^sequential_202/lstm_608/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_202/dense_202/BiasAdd/ReadVariableOp/sequential_202/dense_202/BiasAdd/ReadVariableOp2`
.sequential_202/dense_202/MatMul/ReadVariableOp.sequential_202/dense_202/MatMul/ReadVariableOp2|
<sequential_202/lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp<sequential_202/lstm_606/lstm_cell_696/BiasAdd/ReadVariableOp2z
;sequential_202/lstm_606/lstm_cell_696/MatMul/ReadVariableOp;sequential_202/lstm_606/lstm_cell_696/MatMul/ReadVariableOp2~
=sequential_202/lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp=sequential_202/lstm_606/lstm_cell_696/MatMul_1/ReadVariableOp2>
sequential_202/lstm_606/whilesequential_202/lstm_606/while2|
<sequential_202/lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp<sequential_202/lstm_607/lstm_cell_697/BiasAdd/ReadVariableOp2z
;sequential_202/lstm_607/lstm_cell_697/MatMul/ReadVariableOp;sequential_202/lstm_607/lstm_cell_697/MatMul/ReadVariableOp2~
=sequential_202/lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp=sequential_202/lstm_607/lstm_cell_697/MatMul_1/ReadVariableOp2>
sequential_202/lstm_607/whilesequential_202/lstm_607/while2|
<sequential_202/lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp<sequential_202/lstm_608/lstm_cell_698/BiasAdd/ReadVariableOp2z
;sequential_202/lstm_608/lstm_cell_698/MatMul/ReadVariableOp;sequential_202/lstm_608/lstm_cell_698/MatMul/ReadVariableOp2~
=sequential_202/lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp=sequential_202/lstm_608/lstm_cell_698/MatMul_1/ReadVariableOp2>
sequential_202/lstm_608/whilesequential_202/lstm_608/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_606_input
?
?
while_cond_4227319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4227319___redundant_placeholder05
1while_while_cond_4227319___redundant_placeholder15
1while_while_cond_4227319___redundant_placeholder25
1while_while_cond_4227319___redundant_placeholder3
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
+__inference_dense_202_layer_call_fn_4228029

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
F__inference_dense_202_layer_call_and_return_conditional_losses_4224521o
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4225049

inputs?
,lstm_cell_696_matmul_readvariableop_resource:	?A
.lstm_cell_696_matmul_1_readvariableop_resource:	d?<
-lstm_cell_696_biasadd_readvariableop_resource:	?
identity??$lstm_cell_696/BiasAdd/ReadVariableOp?#lstm_cell_696/MatMul/ReadVariableOp?%lstm_cell_696/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_696/MatMul/ReadVariableOpReadVariableOp,lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_696/MatMulMatMulstrided_slice_2:output:0+lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_696/MatMul_1MatMulzeros:output:0-lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_696/addAddV2lstm_cell_696/MatMul:product:0 lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_696/BiasAddBiasAddlstm_cell_696/add:z:0,lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_696/splitSplit&lstm_cell_696/split/split_dim:output:0lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_696/SigmoidSigmoidlstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_1Sigmoidlstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_696/mulMullstm_cell_696/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_696/ReluRelulstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_1Mullstm_cell_696/Sigmoid:y:0 lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_696/add_1AddV2lstm_cell_696/mul:z:0lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_2Sigmoidlstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_696/Relu_1Relulstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_2Mullstm_cell_696/Sigmoid_2:y:0"lstm_cell_696/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_696_matmul_readvariableop_resource.lstm_cell_696_matmul_1_readvariableop_resource-lstm_cell_696_biasadd_readvariableop_resource*
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
while_body_4224965*
condR
while_cond_4224964*K
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
NoOpNoOp%^lstm_cell_696/BiasAdd/ReadVariableOp$^lstm_cell_696/MatMul/ReadVariableOp&^lstm_cell_696/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_696/BiasAdd/ReadVariableOp$lstm_cell_696/BiasAdd/ReadVariableOp2J
#lstm_cell_696/MatMul/ReadVariableOp#lstm_cell_696/MatMul/ReadVariableOp2N
%lstm_cell_696/MatMul_1/ReadVariableOp%lstm_cell_696/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_4225264
lstm_606_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_606_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4223004o
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
_user_specified_namelstm_606_input
?
?
while_cond_4224634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4224634___redundant_placeholder05
1while_while_cond_4224634___redundant_placeholder15
1while_while_cond_4224634___redundant_placeholder25
1while_while_cond_4224634___redundant_placeholder3
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
#__inference__traced_restore_4228606
file_prefix3
!assignvariableop_dense_202_kernel:
/
!assignvariableop_1_dense_202_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_606_lstm_cell_606_kernel:	?M
:assignvariableop_8_lstm_606_lstm_cell_606_recurrent_kernel:	d?=
.assignvariableop_9_lstm_606_lstm_cell_606_bias:	?D
1assignvariableop_10_lstm_607_lstm_cell_607_kernel:	d?N
;assignvariableop_11_lstm_607_lstm_cell_607_recurrent_kernel:	2?>
/assignvariableop_12_lstm_607_lstm_cell_607_bias:	?C
1assignvariableop_13_lstm_608_lstm_cell_608_kernel:2(M
;assignvariableop_14_lstm_608_lstm_cell_608_recurrent_kernel:
(=
/assignvariableop_15_lstm_608_lstm_cell_608_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_202_kernel_m:
7
)assignvariableop_19_adam_dense_202_bias_m:K
8assignvariableop_20_adam_lstm_606_lstm_cell_606_kernel_m:	?U
Bassignvariableop_21_adam_lstm_606_lstm_cell_606_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_606_lstm_cell_606_bias_m:	?K
8assignvariableop_23_adam_lstm_607_lstm_cell_607_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_607_lstm_cell_607_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_607_lstm_cell_607_bias_m:	?J
8assignvariableop_26_adam_lstm_608_lstm_cell_608_kernel_m:2(T
Bassignvariableop_27_adam_lstm_608_lstm_cell_608_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_608_lstm_cell_608_bias_m:(=
+assignvariableop_29_adam_dense_202_kernel_v:
7
)assignvariableop_30_adam_dense_202_bias_v:K
8assignvariableop_31_adam_lstm_606_lstm_cell_606_kernel_v:	?U
Bassignvariableop_32_adam_lstm_606_lstm_cell_606_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_606_lstm_cell_606_bias_v:	?K
8assignvariableop_34_adam_lstm_607_lstm_cell_607_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_607_lstm_cell_607_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_607_lstm_cell_607_bias_v:	?J
8assignvariableop_37_adam_lstm_608_lstm_cell_608_kernel_v:2(T
Bassignvariableop_38_adam_lstm_608_lstm_cell_608_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_608_lstm_cell_608_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_202_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_202_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_606_lstm_cell_606_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_606_lstm_cell_606_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_606_lstm_cell_606_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_607_lstm_cell_607_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_607_lstm_cell_607_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_607_lstm_cell_607_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_608_lstm_cell_608_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_608_lstm_cell_608_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_608_lstm_cell_608_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_202_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_202_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_606_lstm_cell_606_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_606_lstm_cell_606_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_606_lstm_cell_606_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_607_lstm_cell_607_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_607_lstm_cell_607_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_607_lstm_cell_607_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_608_lstm_cell_608_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_608_lstm_cell_608_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_608_lstm_cell_608_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_202_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_202_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_606_lstm_cell_606_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_606_lstm_cell_606_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_606_lstm_cell_606_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_607_lstm_cell_607_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_607_lstm_cell_607_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_607_lstm_cell_607_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_608_lstm_cell_608_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_608_lstm_cell_608_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_608_lstm_cell_608_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
E__inference_lstm_607_layer_call_and_return_conditional_losses_4223695

inputs(
lstm_cell_697_4223613:	d?(
lstm_cell_697_4223615:	2?$
lstm_cell_697_4223617:	?
identity??%lstm_cell_697/StatefulPartitionedCall?while;
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
%lstm_cell_697/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_697_4223613lstm_cell_697_4223615lstm_cell_697_4223617*
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4223567n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_697_4223613lstm_cell_697_4223615lstm_cell_697_4223617*
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
while_body_4223626*
condR
while_cond_4223625*K
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
NoOpNoOp&^lstm_cell_697/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_697/StatefulPartitionedCall%lstm_cell_697/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225199
lstm_606_input#
lstm_606_4225172:	?#
lstm_606_4225174:	d?
lstm_606_4225176:	?#
lstm_607_4225179:	d?#
lstm_607_4225181:	2?
lstm_607_4225183:	?"
lstm_608_4225186:2("
lstm_608_4225188:
(
lstm_608_4225190:(#
dense_202_4225193:

dense_202_4225195:
identity??!dense_202/StatefulPartitionedCall? lstm_606/StatefulPartitionedCall? lstm_607/StatefulPartitionedCall? lstm_608/StatefulPartitionedCall?
 lstm_606/StatefulPartitionedCallStatefulPartitionedCalllstm_606_inputlstm_606_4225172lstm_606_4225174lstm_606_4225176*
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4224203?
 lstm_607/StatefulPartitionedCallStatefulPartitionedCall)lstm_606/StatefulPartitionedCall:output:0lstm_607_4225179lstm_607_4225181lstm_607_4225183*
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4224353?
 lstm_608/StatefulPartitionedCallStatefulPartitionedCall)lstm_607/StatefulPartitionedCall:output:0lstm_608_4225186lstm_608_4225188lstm_608_4225190*
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224503?
!dense_202/StatefulPartitionedCallStatefulPartitionedCall)lstm_608/StatefulPartitionedCall:output:0dense_202_4225193dense_202_4225195*
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
F__inference_dense_202_layer_call_and_return_conditional_losses_4224521y
IdentityIdentity*dense_202/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_202/StatefulPartitionedCall!^lstm_606/StatefulPartitionedCall!^lstm_607/StatefulPartitionedCall!^lstm_608/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_202/StatefulPartitionedCall!dense_202/StatefulPartitionedCall2D
 lstm_606/StatefulPartitionedCall lstm_606/StatefulPartitionedCall2D
 lstm_607/StatefulPartitionedCall lstm_607/StatefulPartitionedCall2D
 lstm_608/StatefulPartitionedCall lstm_608/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_606_input
?T
?
*sequential_202_lstm_606_while_body_4222636L
Hsequential_202_lstm_606_while_sequential_202_lstm_606_while_loop_counterR
Nsequential_202_lstm_606_while_sequential_202_lstm_606_while_maximum_iterations-
)sequential_202_lstm_606_while_placeholder/
+sequential_202_lstm_606_while_placeholder_1/
+sequential_202_lstm_606_while_placeholder_2/
+sequential_202_lstm_606_while_placeholder_3K
Gsequential_202_lstm_606_while_sequential_202_lstm_606_strided_slice_1_0?
?sequential_202_lstm_606_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_606_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_202_lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0:	?a
Nsequential_202_lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?\
Msequential_202_lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0:	?*
&sequential_202_lstm_606_while_identity,
(sequential_202_lstm_606_while_identity_1,
(sequential_202_lstm_606_while_identity_2,
(sequential_202_lstm_606_while_identity_3,
(sequential_202_lstm_606_while_identity_4,
(sequential_202_lstm_606_while_identity_5I
Esequential_202_lstm_606_while_sequential_202_lstm_606_strided_slice_1?
?sequential_202_lstm_606_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_606_tensorarrayunstack_tensorlistfromtensor]
Jsequential_202_lstm_606_while_lstm_cell_696_matmul_readvariableop_resource:	?_
Lsequential_202_lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource:	d?Z
Ksequential_202_lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource:	???Bsequential_202/lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp?Asequential_202/lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp?Csequential_202/lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp?
Osequential_202/lstm_606/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_202/lstm_606/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_202_lstm_606_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_606_tensorarrayunstack_tensorlistfromtensor_0)sequential_202_lstm_606_while_placeholderXsequential_202/lstm_606/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_202/lstm_606/while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOpLsequential_202_lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_202/lstm_606/while/lstm_cell_696/MatMulMatMulHsequential_202/lstm_606/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_202/lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_202/lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOpNsequential_202_lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_202/lstm_606/while/lstm_cell_696/MatMul_1MatMul+sequential_202_lstm_606_while_placeholder_2Ksequential_202/lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_202/lstm_606/while/lstm_cell_696/addAddV2<sequential_202/lstm_606/while/lstm_cell_696/MatMul:product:0>sequential_202/lstm_606/while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_202/lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOpMsequential_202_lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_202/lstm_606/while/lstm_cell_696/BiasAddBiasAdd3sequential_202/lstm_606/while/lstm_cell_696/add:z:0Jsequential_202/lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_202/lstm_606/while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_202/lstm_606/while/lstm_cell_696/splitSplitDsequential_202/lstm_606/while/lstm_cell_696/split/split_dim:output:0<sequential_202/lstm_606/while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_202/lstm_606/while/lstm_cell_696/SigmoidSigmoid:sequential_202/lstm_606/while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_202/lstm_606/while/lstm_cell_696/Sigmoid_1Sigmoid:sequential_202/lstm_606/while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_202/lstm_606/while/lstm_cell_696/mulMul9sequential_202/lstm_606/while/lstm_cell_696/Sigmoid_1:y:0+sequential_202_lstm_606_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_202/lstm_606/while/lstm_cell_696/ReluRelu:sequential_202/lstm_606/while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_202/lstm_606/while/lstm_cell_696/mul_1Mul7sequential_202/lstm_606/while/lstm_cell_696/Sigmoid:y:0>sequential_202/lstm_606/while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_202/lstm_606/while/lstm_cell_696/add_1AddV23sequential_202/lstm_606/while/lstm_cell_696/mul:z:05sequential_202/lstm_606/while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_202/lstm_606/while/lstm_cell_696/Sigmoid_2Sigmoid:sequential_202/lstm_606/while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_202/lstm_606/while/lstm_cell_696/Relu_1Relu5sequential_202/lstm_606/while/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_202/lstm_606/while/lstm_cell_696/mul_2Mul9sequential_202/lstm_606/while/lstm_cell_696/Sigmoid_2:y:0@sequential_202/lstm_606/while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_202/lstm_606/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_202_lstm_606_while_placeholder_1)sequential_202_lstm_606_while_placeholder5sequential_202/lstm_606/while/lstm_cell_696/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_202/lstm_606/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_202/lstm_606/while/addAddV2)sequential_202_lstm_606_while_placeholder,sequential_202/lstm_606/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_202/lstm_606/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_202/lstm_606/while/add_1AddV2Hsequential_202_lstm_606_while_sequential_202_lstm_606_while_loop_counter.sequential_202/lstm_606/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_202/lstm_606/while/IdentityIdentity'sequential_202/lstm_606/while/add_1:z:0#^sequential_202/lstm_606/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_606/while/Identity_1IdentityNsequential_202_lstm_606_while_sequential_202_lstm_606_while_maximum_iterations#^sequential_202/lstm_606/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_606/while/Identity_2Identity%sequential_202/lstm_606/while/add:z:0#^sequential_202/lstm_606/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_606/while/Identity_3IdentityRsequential_202/lstm_606/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_202/lstm_606/while/NoOp*
T0*
_output_shapes
: ?
(sequential_202/lstm_606/while/Identity_4Identity5sequential_202/lstm_606/while/lstm_cell_696/mul_2:z:0#^sequential_202/lstm_606/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_202/lstm_606/while/Identity_5Identity5sequential_202/lstm_606/while/lstm_cell_696/add_1:z:0#^sequential_202/lstm_606/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_202/lstm_606/while/NoOpNoOpC^sequential_202/lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOpB^sequential_202/lstm_606/while/lstm_cell_696/MatMul/ReadVariableOpD^sequential_202/lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_202_lstm_606_while_identity/sequential_202/lstm_606/while/Identity:output:0"]
(sequential_202_lstm_606_while_identity_11sequential_202/lstm_606/while/Identity_1:output:0"]
(sequential_202_lstm_606_while_identity_21sequential_202/lstm_606/while/Identity_2:output:0"]
(sequential_202_lstm_606_while_identity_31sequential_202/lstm_606/while/Identity_3:output:0"]
(sequential_202_lstm_606_while_identity_41sequential_202/lstm_606/while/Identity_4:output:0"]
(sequential_202_lstm_606_while_identity_51sequential_202/lstm_606/while/Identity_5:output:0"?
Ksequential_202_lstm_606_while_lstm_cell_696_biasadd_readvariableop_resourceMsequential_202_lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0"?
Lsequential_202_lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resourceNsequential_202_lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0"?
Jsequential_202_lstm_606_while_lstm_cell_696_matmul_readvariableop_resourceLsequential_202_lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0"?
Esequential_202_lstm_606_while_sequential_202_lstm_606_strided_slice_1Gsequential_202_lstm_606_while_sequential_202_lstm_606_strided_slice_1_0"?
?sequential_202_lstm_606_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_606_tensorarrayunstack_tensorlistfromtensor?sequential_202_lstm_606_while_tensorarrayv2read_tensorlistgetitem_sequential_202_lstm_606_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_202/lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOpBsequential_202/lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp2?
Asequential_202/lstm_606/while/lstm_cell_696/MatMul/ReadVariableOpAsequential_202/lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp2?
Csequential_202/lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOpCsequential_202/lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227118
inputs_0?
,lstm_cell_697_matmul_readvariableop_resource:	d?A
.lstm_cell_697_matmul_1_readvariableop_resource:	2?<
-lstm_cell_697_biasadd_readvariableop_resource:	?
identity??$lstm_cell_697/BiasAdd/ReadVariableOp?#lstm_cell_697/MatMul/ReadVariableOp?%lstm_cell_697/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_697/MatMul/ReadVariableOpReadVariableOp,lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_697/MatMulMatMulstrided_slice_2:output:0+lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_697/MatMul_1MatMulzeros:output:0-lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_697/addAddV2lstm_cell_697/MatMul:product:0 lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_697/BiasAddBiasAddlstm_cell_697/add:z:0,lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_697/splitSplit&lstm_cell_697/split/split_dim:output:0lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_697/SigmoidSigmoidlstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_1Sigmoidlstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_697/mulMullstm_cell_697/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_697/ReluRelulstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_1Mullstm_cell_697/Sigmoid:y:0 lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_697/add_1AddV2lstm_cell_697/mul:z:0lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_2Sigmoidlstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_697/Relu_1Relulstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_2Mullstm_cell_697/Sigmoid_2:y:0"lstm_cell_697/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_697_matmul_readvariableop_resource.lstm_cell_697_matmul_1_readvariableop_resource-lstm_cell_697_biasadd_readvariableop_resource*
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
while_body_4227034*
condR
while_cond_4227033*K
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
NoOpNoOp%^lstm_cell_697/BiasAdd/ReadVariableOp$^lstm_cell_697/MatMul/ReadVariableOp&^lstm_cell_697/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_697/BiasAdd/ReadVariableOp$lstm_cell_697/BiasAdd/ReadVariableOp2J
#lstm_cell_697/MatMul/ReadVariableOp#lstm_cell_697/MatMul/ReadVariableOp2N
%lstm_cell_697/MatMul_1/ReadVariableOp%lstm_cell_697/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4227320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_697_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_697_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_697_matmul_readvariableop_resource:	d?G
4while_lstm_cell_697_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_697_biasadd_readvariableop_resource:	???*while/lstm_cell_697/BiasAdd/ReadVariableOp?)while/lstm_cell_697/MatMul/ReadVariableOp?+while/lstm_cell_697/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_697/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_697/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_697/addAddV2$while/lstm_cell_697/MatMul:product:0&while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_697/BiasAddBiasAddwhile/lstm_cell_697/add:z:02while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_697/splitSplit,while/lstm_cell_697/split/split_dim:output:0$while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_697/SigmoidSigmoid"while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_1Sigmoid"while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mulMul!while/lstm_cell_697/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_697/ReluRelu"while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_1Mulwhile/lstm_cell_697/Sigmoid:y:0&while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/add_1AddV2while/lstm_cell_697/mul:z:0while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_2Sigmoid"while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_697/Relu_1Reluwhile/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_2Mul!while/lstm_cell_697/Sigmoid_2:y:0(while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_697/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_697/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_697/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_697/BiasAdd/ReadVariableOp*^while/lstm_cell_697/MatMul/ReadVariableOp,^while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_697_biasadd_readvariableop_resource5while_lstm_cell_697_biasadd_readvariableop_resource_0"n
4while_lstm_cell_697_matmul_1_readvariableop_resource6while_lstm_cell_697_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_697_matmul_readvariableop_resource4while_lstm_cell_697_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_697/BiasAdd/ReadVariableOp*while/lstm_cell_697/BiasAdd/ReadVariableOp2V
)while/lstm_cell_697/MatMul/ReadVariableOp)while/lstm_cell_697/MatMul/ReadVariableOp2Z
+while/lstm_cell_697/MatMul_1/ReadVariableOp+while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4223085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_696_4223109_0:	?0
while_lstm_cell_696_4223111_0:	d?,
while_lstm_cell_696_4223113_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_696_4223109:	?.
while_lstm_cell_696_4223111:	d?*
while_lstm_cell_696_4223113:	???+while/lstm_cell_696/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_696/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_696_4223109_0while_lstm_cell_696_4223111_0while_lstm_cell_696_4223113_0*
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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4223071?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_696/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_696/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_696/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_696/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_696_4223109while_lstm_cell_696_4223109_0"<
while_lstm_cell_696_4223111while_lstm_cell_696_4223111_0"<
while_lstm_cell_696_4223113while_lstm_cell_696_4223113_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_696/StatefulPartitionedCall+while/lstm_cell_696/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4226703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4226703___redundant_placeholder05
1while_while_cond_4226703___redundant_placeholder15
1while_while_cond_4226703___redundant_placeholder25
1while_while_cond_4226703___redundant_placeholder3
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
/__inference_lstm_cell_697_layer_call_fn_4228154

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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4223421o
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
?
*__inference_lstm_606_layer_call_fn_4226194
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4223345|
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4226975
inputs_0?
,lstm_cell_697_matmul_readvariableop_resource:	d?A
.lstm_cell_697_matmul_1_readvariableop_resource:	2?<
-lstm_cell_697_biasadd_readvariableop_resource:	?
identity??$lstm_cell_697/BiasAdd/ReadVariableOp?#lstm_cell_697/MatMul/ReadVariableOp?%lstm_cell_697/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_697/MatMul/ReadVariableOpReadVariableOp,lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_697/MatMulMatMulstrided_slice_2:output:0+lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_697/MatMul_1MatMulzeros:output:0-lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_697/addAddV2lstm_cell_697/MatMul:product:0 lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_697/BiasAddBiasAddlstm_cell_697/add:z:0,lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_697/splitSplit&lstm_cell_697/split/split_dim:output:0lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_697/SigmoidSigmoidlstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_1Sigmoidlstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_697/mulMullstm_cell_697/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_697/ReluRelulstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_1Mullstm_cell_697/Sigmoid:y:0 lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_697/add_1AddV2lstm_cell_697/mul:z:0lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_2Sigmoidlstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_697/Relu_1Relulstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_2Mullstm_cell_697/Sigmoid_2:y:0"lstm_cell_697/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_697_matmul_readvariableop_resource.lstm_cell_697_matmul_1_readvariableop_resource-lstm_cell_697_biasadd_readvariableop_resource*
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
while_body_4226891*
condR
while_cond_4226890*K
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
NoOpNoOp%^lstm_cell_697/BiasAdd/ReadVariableOp$^lstm_cell_697/MatMul/ReadVariableOp&^lstm_cell_697/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_697/BiasAdd/ReadVariableOp$lstm_cell_697/BiasAdd/ReadVariableOp2J
#lstm_cell_697/MatMul/ReadVariableOp#lstm_cell_697/MatMul/ReadVariableOp2N
%lstm_cell_697/MatMul_1/ReadVariableOp%lstm_cell_697/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227261

inputs?
,lstm_cell_697_matmul_readvariableop_resource:	d?A
.lstm_cell_697_matmul_1_readvariableop_resource:	2?<
-lstm_cell_697_biasadd_readvariableop_resource:	?
identity??$lstm_cell_697/BiasAdd/ReadVariableOp?#lstm_cell_697/MatMul/ReadVariableOp?%lstm_cell_697/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_697/MatMul/ReadVariableOpReadVariableOp,lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_697/MatMulMatMulstrided_slice_2:output:0+lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_697/MatMul_1MatMulzeros:output:0-lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_697/addAddV2lstm_cell_697/MatMul:product:0 lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_697/BiasAddBiasAddlstm_cell_697/add:z:0,lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_697/splitSplit&lstm_cell_697/split/split_dim:output:0lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_697/SigmoidSigmoidlstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_1Sigmoidlstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_697/mulMullstm_cell_697/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_697/ReluRelulstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_1Mullstm_cell_697/Sigmoid:y:0 lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_697/add_1AddV2lstm_cell_697/mul:z:0lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_2Sigmoidlstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_697/Relu_1Relulstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_2Mullstm_cell_697/Sigmoid_2:y:0"lstm_cell_697/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_697_matmul_readvariableop_resource.lstm_cell_697_matmul_1_readvariableop_resource-lstm_cell_697_biasadd_readvariableop_resource*
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
while_body_4227177*
condR
while_cond_4227176*K
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
NoOpNoOp%^lstm_cell_697/BiasAdd/ReadVariableOp$^lstm_cell_697/MatMul/ReadVariableOp&^lstm_cell_697/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_697/BiasAdd/ReadVariableOp$lstm_cell_697/BiasAdd/ReadVariableOp2J
#lstm_cell_697/MatMul/ReadVariableOp#lstm_cell_697/MatMul/ReadVariableOp2N
%lstm_cell_697/MatMul_1/ReadVariableOp%lstm_cell_697/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4224269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_697_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_697_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_697_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_697_matmul_readvariableop_resource:	d?G
4while_lstm_cell_697_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_697_biasadd_readvariableop_resource:	???*while/lstm_cell_697/BiasAdd/ReadVariableOp?)while/lstm_cell_697/MatMul/ReadVariableOp?+while/lstm_cell_697/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_697/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_697_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_697/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_697_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_697/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_697/addAddV2$while/lstm_cell_697/MatMul:product:0&while/lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_697_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_697/BiasAddBiasAddwhile/lstm_cell_697/add:z:02while/lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_697/splitSplit,while/lstm_cell_697/split/split_dim:output:0$while/lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_697/SigmoidSigmoid"while/lstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_1Sigmoid"while/lstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mulMul!while/lstm_cell_697/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_697/ReluRelu"while/lstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_1Mulwhile/lstm_cell_697/Sigmoid:y:0&while/lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/add_1AddV2while/lstm_cell_697/mul:z:0while/lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_697/Sigmoid_2Sigmoid"while/lstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_697/Relu_1Reluwhile/lstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_697/mul_2Mul!while/lstm_cell_697/Sigmoid_2:y:0(while/lstm_cell_697/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_697/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_697/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_697/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_697/BiasAdd/ReadVariableOp*^while/lstm_cell_697/MatMul/ReadVariableOp,^while/lstm_cell_697/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_697_biasadd_readvariableop_resource5while_lstm_cell_697_biasadd_readvariableop_resource_0"n
4while_lstm_cell_697_matmul_1_readvariableop_resource6while_lstm_cell_697_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_697_matmul_readvariableop_resource4while_lstm_cell_697_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_697/BiasAdd/ReadVariableOp*while/lstm_cell_697/BiasAdd/ReadVariableOp2V
)while/lstm_cell_697/MatMul/ReadVariableOp)while/lstm_cell_697/MatMul/ReadVariableOp2Z
+while/lstm_cell_697/MatMul_1/ReadVariableOp+while/lstm_cell_697/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4226704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_696_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_696_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_696_matmul_readvariableop_resource:	?G
4while_lstm_cell_696_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_696_biasadd_readvariableop_resource:	???*while/lstm_cell_696/BiasAdd/ReadVariableOp?)while/lstm_cell_696/MatMul/ReadVariableOp?+while/lstm_cell_696/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_696/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_696/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_696/addAddV2$while/lstm_cell_696/MatMul:product:0&while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_696/BiasAddBiasAddwhile/lstm_cell_696/add:z:02while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_696/splitSplit,while/lstm_cell_696/split/split_dim:output:0$while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_696/SigmoidSigmoid"while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_1Sigmoid"while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mulMul!while/lstm_cell_696/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_696/ReluRelu"while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_1Mulwhile/lstm_cell_696/Sigmoid:y:0&while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/add_1AddV2while/lstm_cell_696/mul:z:0while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_696/Sigmoid_2Sigmoid"while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_696/Relu_1Reluwhile/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_696/mul_2Mul!while/lstm_cell_696/Sigmoid_2:y:0(while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_696/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_696/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_696/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_696/BiasAdd/ReadVariableOp*^while/lstm_cell_696/MatMul/ReadVariableOp,^while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_696_biasadd_readvariableop_resource5while_lstm_cell_696_biasadd_readvariableop_resource_0"n
4while_lstm_cell_696_matmul_1_readvariableop_resource6while_lstm_cell_696_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_696_matmul_readvariableop_resource4while_lstm_cell_696_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_696/BiasAdd/ReadVariableOp*while/lstm_cell_696/BiasAdd/ReadVariableOp2V
)while/lstm_cell_696/MatMul/ReadVariableOp)while/lstm_cell_696/MatMul/ReadVariableOp2Z
+while/lstm_cell_696/MatMul_1/ReadVariableOp+while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4223504

inputs(
lstm_cell_697_4223422:	d?(
lstm_cell_697_4223424:	2?$
lstm_cell_697_4223426:	?
identity??%lstm_cell_697/StatefulPartitionedCall?while;
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
%lstm_cell_697/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_697_4223422lstm_cell_697_4223424lstm_cell_697_4223426*
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4223421n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_697_4223422lstm_cell_697_4223424lstm_cell_697_4223426*
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
while_body_4223435*
condR
while_cond_4223434*K
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
NoOpNoOp&^lstm_cell_697/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_697/StatefulPartitionedCall%lstm_cell_697/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?C
?

lstm_606_while_body_4225804.
*lstm_606_while_lstm_606_while_loop_counter4
0lstm_606_while_lstm_606_while_maximum_iterations
lstm_606_while_placeholder 
lstm_606_while_placeholder_1 
lstm_606_while_placeholder_2 
lstm_606_while_placeholder_3-
)lstm_606_while_lstm_606_strided_slice_1_0i
elstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0:	?R
?lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0:	d?M
>lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0:	?
lstm_606_while_identity
lstm_606_while_identity_1
lstm_606_while_identity_2
lstm_606_while_identity_3
lstm_606_while_identity_4
lstm_606_while_identity_5+
'lstm_606_while_lstm_606_strided_slice_1g
clstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensorN
;lstm_606_while_lstm_cell_696_matmul_readvariableop_resource:	?P
=lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource:	d?K
<lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource:	???3lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp?2lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp?4lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp?
@lstm_606/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_606/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensor_0lstm_606_while_placeholderIlstm_606/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_606/while/lstm_cell_696/MatMul/ReadVariableOpReadVariableOp=lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_606/while/lstm_cell_696/MatMulMatMul9lstm_606/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp?lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_606/while/lstm_cell_696/MatMul_1MatMullstm_606_while_placeholder_2<lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_606/while/lstm_cell_696/addAddV2-lstm_606/while/lstm_cell_696/MatMul:product:0/lstm_606/while/lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp>lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_606/while/lstm_cell_696/BiasAddBiasAdd$lstm_606/while/lstm_cell_696/add:z:0;lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_606/while/lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_606/while/lstm_cell_696/splitSplit5lstm_606/while/lstm_cell_696/split/split_dim:output:0-lstm_606/while/lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_606/while/lstm_cell_696/SigmoidSigmoid+lstm_606/while/lstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_606/while/lstm_cell_696/Sigmoid_1Sigmoid+lstm_606/while/lstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_606/while/lstm_cell_696/mulMul*lstm_606/while/lstm_cell_696/Sigmoid_1:y:0lstm_606_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_606/while/lstm_cell_696/ReluRelu+lstm_606/while/lstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_606/while/lstm_cell_696/mul_1Mul(lstm_606/while/lstm_cell_696/Sigmoid:y:0/lstm_606/while/lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_606/while/lstm_cell_696/add_1AddV2$lstm_606/while/lstm_cell_696/mul:z:0&lstm_606/while/lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_606/while/lstm_cell_696/Sigmoid_2Sigmoid+lstm_606/while/lstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_606/while/lstm_cell_696/Relu_1Relu&lstm_606/while/lstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_606/while/lstm_cell_696/mul_2Mul*lstm_606/while/lstm_cell_696/Sigmoid_2:y:01lstm_606/while/lstm_cell_696/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_606/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_606_while_placeholder_1lstm_606_while_placeholder&lstm_606/while/lstm_cell_696/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_606/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_606/while/addAddV2lstm_606_while_placeholderlstm_606/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_606/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_606/while/add_1AddV2*lstm_606_while_lstm_606_while_loop_counterlstm_606/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_606/while/IdentityIdentitylstm_606/while/add_1:z:0^lstm_606/while/NoOp*
T0*
_output_shapes
: ?
lstm_606/while/Identity_1Identity0lstm_606_while_lstm_606_while_maximum_iterations^lstm_606/while/NoOp*
T0*
_output_shapes
: t
lstm_606/while/Identity_2Identitylstm_606/while/add:z:0^lstm_606/while/NoOp*
T0*
_output_shapes
: ?
lstm_606/while/Identity_3IdentityClstm_606/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_606/while/NoOp*
T0*
_output_shapes
: ?
lstm_606/while/Identity_4Identity&lstm_606/while/lstm_cell_696/mul_2:z:0^lstm_606/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_606/while/Identity_5Identity&lstm_606/while/lstm_cell_696/add_1:z:0^lstm_606/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_606/while/NoOpNoOp4^lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp3^lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp5^lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_606_while_identity lstm_606/while/Identity:output:0"?
lstm_606_while_identity_1"lstm_606/while/Identity_1:output:0"?
lstm_606_while_identity_2"lstm_606/while/Identity_2:output:0"?
lstm_606_while_identity_3"lstm_606/while/Identity_3:output:0"?
lstm_606_while_identity_4"lstm_606/while/Identity_4:output:0"?
lstm_606_while_identity_5"lstm_606/while/Identity_5:output:0"T
'lstm_606_while_lstm_606_strided_slice_1)lstm_606_while_lstm_606_strided_slice_1_0"~
<lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource>lstm_606_while_lstm_cell_696_biasadd_readvariableop_resource_0"?
=lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource?lstm_606_while_lstm_cell_696_matmul_1_readvariableop_resource_0"|
;lstm_606_while_lstm_cell_696_matmul_readvariableop_resource=lstm_606_while_lstm_cell_696_matmul_readvariableop_resource_0"?
clstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensorelstm_606_while_tensorarrayv2read_tensorlistgetitem_lstm_606_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp3lstm_606/while/lstm_cell_696/BiasAdd/ReadVariableOp2h
2lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp2lstm_606/while/lstm_cell_696/MatMul/ReadVariableOp2l
4lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp4lstm_606/while/lstm_cell_696/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226359
inputs_0?
,lstm_cell_696_matmul_readvariableop_resource:	?A
.lstm_cell_696_matmul_1_readvariableop_resource:	d?<
-lstm_cell_696_biasadd_readvariableop_resource:	?
identity??$lstm_cell_696/BiasAdd/ReadVariableOp?#lstm_cell_696/MatMul/ReadVariableOp?%lstm_cell_696/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_696/MatMul/ReadVariableOpReadVariableOp,lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_696/MatMulMatMulstrided_slice_2:output:0+lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_696/MatMul_1MatMulzeros:output:0-lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_696/addAddV2lstm_cell_696/MatMul:product:0 lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_696/BiasAddBiasAddlstm_cell_696/add:z:0,lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_696/splitSplit&lstm_cell_696/split/split_dim:output:0lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_696/SigmoidSigmoidlstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_1Sigmoidlstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_696/mulMullstm_cell_696/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_696/ReluRelulstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_1Mullstm_cell_696/Sigmoid:y:0 lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_696/add_1AddV2lstm_cell_696/mul:z:0lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_2Sigmoidlstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_696/Relu_1Relulstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_2Mullstm_cell_696/Sigmoid_2:y:0"lstm_cell_696/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_696_matmul_readvariableop_resource.lstm_cell_696_matmul_1_readvariableop_resource-lstm_cell_696_biasadd_readvariableop_resource*
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
while_body_4226275*
condR
while_cond_4226274*K
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
NoOpNoOp%^lstm_cell_696/BiasAdd/ReadVariableOp$^lstm_cell_696/MatMul/ReadVariableOp&^lstm_cell_696/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_696/BiasAdd/ReadVariableOp$lstm_cell_696/BiasAdd/ReadVariableOp2J
#lstm_cell_696/MatMul/ReadVariableOp#lstm_cell_696/MatMul/ReadVariableOp2N
%lstm_cell_696/MatMul_1/ReadVariableOp%lstm_cell_696/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4223217

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

?
0__inference_sequential_202_layer_call_fn_4224553
lstm_606_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_606_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4224528o
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
_user_specified_namelstm_606_input
?
?
/__inference_lstm_cell_696_layer_call_fn_4228056

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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4223071o
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4228203

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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4228235

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

?
lstm_606_while_cond_4225803.
*lstm_606_while_lstm_606_while_loop_counter4
0lstm_606_while_lstm_606_while_maximum_iterations
lstm_606_while_placeholder 
lstm_606_while_placeholder_1 
lstm_606_while_placeholder_2 
lstm_606_while_placeholder_30
,lstm_606_while_less_lstm_606_strided_slice_1G
Clstm_606_while_lstm_606_while_cond_4225803___redundant_placeholder0G
Clstm_606_while_lstm_606_while_cond_4225803___redundant_placeholder1G
Clstm_606_while_lstm_606_while_cond_4225803___redundant_placeholder2G
Clstm_606_while_lstm_606_while_cond_4225803___redundant_placeholder3
lstm_606_while_identity
?
lstm_606/while/LessLesslstm_606_while_placeholder,lstm_606_while_less_lstm_606_strided_slice_1*
T0*
_output_shapes
: ]
lstm_606/while/IdentityIdentitylstm_606/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_606_while_identity lstm_606/while/Identity:output:0*(
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4223854

inputs'
lstm_cell_698_4223772:2('
lstm_cell_698_4223774:
(#
lstm_cell_698_4223776:(
identity??%lstm_cell_698/StatefulPartitionedCall?while;
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
%lstm_cell_698/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_698_4223772lstm_cell_698_4223774lstm_cell_698_4223776*
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4223771n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_698_4223772lstm_cell_698_4223774lstm_cell_698_4223776*
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
while_body_4223785*
condR
while_cond_4223784*K
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
NoOpNoOp&^lstm_cell_698/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_698/StatefulPartitionedCall%lstm_cell_698/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4224419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_698_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_698_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_698_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_698_matmul_readvariableop_resource:2(F
4while_lstm_cell_698_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_698_biasadd_readvariableop_resource:(??*while/lstm_cell_698/BiasAdd/ReadVariableOp?)while/lstm_cell_698/MatMul/ReadVariableOp?+while/lstm_cell_698/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_698/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_698/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_698/addAddV2$while/lstm_cell_698/MatMul:product:0&while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_698/BiasAddBiasAddwhile/lstm_cell_698/add:z:02while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_698/splitSplit,while/lstm_cell_698/split/split_dim:output:0$while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_698/SigmoidSigmoid"while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_1Sigmoid"while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mulMul!while/lstm_cell_698/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_698/ReluRelu"while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_1Mulwhile/lstm_cell_698/Sigmoid:y:0&while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/add_1AddV2while/lstm_cell_698/mul:z:0while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_2Sigmoid"while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_698/Relu_1Reluwhile/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_2Mul!while/lstm_cell_698/Sigmoid_2:y:0(while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_698/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_698/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_698/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_698/BiasAdd/ReadVariableOp*^while/lstm_cell_698/MatMul/ReadVariableOp,^while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_698_biasadd_readvariableop_resource5while_lstm_cell_698_biasadd_readvariableop_resource_0"n
4while_lstm_cell_698_matmul_1_readvariableop_resource6while_lstm_cell_698_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_698_matmul_readvariableop_resource4while_lstm_cell_698_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_698/BiasAdd/ReadVariableOp*while/lstm_cell_698/BiasAdd/ReadVariableOp2V
)while/lstm_cell_698/MatMul/ReadVariableOp)while/lstm_cell_698/MatMul/ReadVariableOp2Z
+while/lstm_cell_698/MatMul_1/ReadVariableOp+while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_697_layer_call_fn_4228171

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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4223567o
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226788

inputs?
,lstm_cell_696_matmul_readvariableop_resource:	?A
.lstm_cell_696_matmul_1_readvariableop_resource:	d?<
-lstm_cell_696_biasadd_readvariableop_resource:	?
identity??$lstm_cell_696/BiasAdd/ReadVariableOp?#lstm_cell_696/MatMul/ReadVariableOp?%lstm_cell_696/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_696/MatMul/ReadVariableOpReadVariableOp,lstm_cell_696_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_696/MatMulMatMulstrided_slice_2:output:0+lstm_cell_696/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_696/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_696_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_696/MatMul_1MatMulzeros:output:0-lstm_cell_696/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_696/addAddV2lstm_cell_696/MatMul:product:0 lstm_cell_696/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_696/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_696_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_696/BiasAddBiasAddlstm_cell_696/add:z:0,lstm_cell_696/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_696/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_696/splitSplit&lstm_cell_696/split/split_dim:output:0lstm_cell_696/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_696/SigmoidSigmoidlstm_cell_696/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_1Sigmoidlstm_cell_696/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_696/mulMullstm_cell_696/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_696/ReluRelulstm_cell_696/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_1Mullstm_cell_696/Sigmoid:y:0 lstm_cell_696/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_696/add_1AddV2lstm_cell_696/mul:z:0lstm_cell_696/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_696/Sigmoid_2Sigmoidlstm_cell_696/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_696/Relu_1Relulstm_cell_696/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_696/mul_2Mullstm_cell_696/Sigmoid_2:y:0"lstm_cell_696/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_696_matmul_readvariableop_resource.lstm_cell_696_matmul_1_readvariableop_resource-lstm_cell_696_biasadd_readvariableop_resource*
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
while_body_4226704*
condR
while_cond_4226703*K
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
NoOpNoOp%^lstm_cell_696/BiasAdd/ReadVariableOp$^lstm_cell_696/MatMul/ReadVariableOp&^lstm_cell_696/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_696/BiasAdd/ReadVariableOp$lstm_cell_696/BiasAdd/ReadVariableOp2J
#lstm_cell_696/MatMul/ReadVariableOp#lstm_cell_696/MatMul/ReadVariableOp2N
%lstm_cell_696/MatMul_1/ReadVariableOp%lstm_cell_696/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_608_while_body_4225655.
*lstm_608_while_lstm_608_while_loop_counter4
0lstm_608_while_lstm_608_while_maximum_iterations
lstm_608_while_placeholder 
lstm_608_while_placeholder_1 
lstm_608_while_placeholder_2 
lstm_608_while_placeholder_3-
)lstm_608_while_lstm_608_strided_slice_1_0i
elstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0:2(Q
?lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0:
(L
>lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0:(
lstm_608_while_identity
lstm_608_while_identity_1
lstm_608_while_identity_2
lstm_608_while_identity_3
lstm_608_while_identity_4
lstm_608_while_identity_5+
'lstm_608_while_lstm_608_strided_slice_1g
clstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensorM
;lstm_608_while_lstm_cell_698_matmul_readvariableop_resource:2(O
=lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource:
(J
<lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource:(??3lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp?2lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp?4lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp?
@lstm_608/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_608/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensor_0lstm_608_while_placeholderIlstm_608/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_608/while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp=lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_608/while/lstm_cell_698/MatMulMatMul9lstm_608/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp?lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_608/while/lstm_cell_698/MatMul_1MatMullstm_608_while_placeholder_2<lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_608/while/lstm_cell_698/addAddV2-lstm_608/while/lstm_cell_698/MatMul:product:0/lstm_608/while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp>lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_608/while/lstm_cell_698/BiasAddBiasAdd$lstm_608/while/lstm_cell_698/add:z:0;lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_608/while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_608/while/lstm_cell_698/splitSplit5lstm_608/while/lstm_cell_698/split/split_dim:output:0-lstm_608/while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_608/while/lstm_cell_698/SigmoidSigmoid+lstm_608/while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_608/while/lstm_cell_698/Sigmoid_1Sigmoid+lstm_608/while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_608/while/lstm_cell_698/mulMul*lstm_608/while/lstm_cell_698/Sigmoid_1:y:0lstm_608_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_608/while/lstm_cell_698/ReluRelu+lstm_608/while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_608/while/lstm_cell_698/mul_1Mul(lstm_608/while/lstm_cell_698/Sigmoid:y:0/lstm_608/while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_608/while/lstm_cell_698/add_1AddV2$lstm_608/while/lstm_cell_698/mul:z:0&lstm_608/while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_608/while/lstm_cell_698/Sigmoid_2Sigmoid+lstm_608/while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_608/while/lstm_cell_698/Relu_1Relu&lstm_608/while/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_608/while/lstm_cell_698/mul_2Mul*lstm_608/while/lstm_cell_698/Sigmoid_2:y:01lstm_608/while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_608/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_608_while_placeholder_1lstm_608_while_placeholder&lstm_608/while/lstm_cell_698/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_608/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_608/while/addAddV2lstm_608_while_placeholderlstm_608/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_608/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_608/while/add_1AddV2*lstm_608_while_lstm_608_while_loop_counterlstm_608/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_608/while/IdentityIdentitylstm_608/while/add_1:z:0^lstm_608/while/NoOp*
T0*
_output_shapes
: ?
lstm_608/while/Identity_1Identity0lstm_608_while_lstm_608_while_maximum_iterations^lstm_608/while/NoOp*
T0*
_output_shapes
: t
lstm_608/while/Identity_2Identitylstm_608/while/add:z:0^lstm_608/while/NoOp*
T0*
_output_shapes
: ?
lstm_608/while/Identity_3IdentityClstm_608/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_608/while/NoOp*
T0*
_output_shapes
: ?
lstm_608/while/Identity_4Identity&lstm_608/while/lstm_cell_698/mul_2:z:0^lstm_608/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_608/while/Identity_5Identity&lstm_608/while/lstm_cell_698/add_1:z:0^lstm_608/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_608/while/NoOpNoOp4^lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp3^lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp5^lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_608_while_identity lstm_608/while/Identity:output:0"?
lstm_608_while_identity_1"lstm_608/while/Identity_1:output:0"?
lstm_608_while_identity_2"lstm_608/while/Identity_2:output:0"?
lstm_608_while_identity_3"lstm_608/while/Identity_3:output:0"?
lstm_608_while_identity_4"lstm_608/while/Identity_4:output:0"?
lstm_608_while_identity_5"lstm_608/while/Identity_5:output:0"T
'lstm_608_while_lstm_608_strided_slice_1)lstm_608_while_lstm_608_strided_slice_1_0"~
<lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource>lstm_608_while_lstm_cell_698_biasadd_readvariableop_resource_0"?
=lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource?lstm_608_while_lstm_cell_698_matmul_1_readvariableop_resource_0"|
;lstm_608_while_lstm_cell_698_matmul_readvariableop_resource=lstm_608_while_lstm_cell_698_matmul_readvariableop_resource_0"?
clstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensorelstm_608_while_tensorarrayv2read_tensorlistgetitem_lstm_608_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp3lstm_608/while/lstm_cell_698/BiasAdd/ReadVariableOp2h
2lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp2lstm_608/while/lstm_cell_698/MatMul/ReadVariableOp2l
4lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp4lstm_608/while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4226890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4226890___redundant_placeholder05
1while_while_cond_4226890___redundant_placeholder15
1while_while_cond_4226890___redundant_placeholder25
1while_while_cond_4226890___redundant_placeholder3
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
while_body_4223785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_698_4223809_0:2(/
while_lstm_cell_698_4223811_0:
(+
while_lstm_cell_698_4223813_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_698_4223809:2(-
while_lstm_cell_698_4223811:
()
while_lstm_cell_698_4223813:(??+while/lstm_cell_698/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_698/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_698_4223809_0while_lstm_cell_698_4223811_0while_lstm_cell_698_4223813_0*
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4223771?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_698/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_698/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_698/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_698/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_698_4223809while_lstm_cell_698_4223809_0"<
while_lstm_cell_698_4223811while_lstm_cell_698_4223811_0"<
while_lstm_cell_698_4223813while_lstm_cell_698_4223813_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_698/StatefulPartitionedCall+while/lstm_cell_698/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4226560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4226560___redundant_placeholder05
1while_while_cond_4226560___redundant_placeholder15
1while_while_cond_4226560___redundant_placeholder25
1while_while_cond_4226560___redundant_placeholder3
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
*__inference_lstm_607_layer_call_fn_4226821

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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4224353s
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
while_body_4227507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_698_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_698_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_698_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_698_matmul_readvariableop_resource:2(F
4while_lstm_cell_698_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_698_biasadd_readvariableop_resource:(??*while/lstm_cell_698/BiasAdd/ReadVariableOp?)while/lstm_cell_698/MatMul/ReadVariableOp?+while/lstm_cell_698/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_698/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_698_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_698/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_698/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_698/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_698_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_698/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_698/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_698/addAddV2$while/lstm_cell_698/MatMul:product:0&while/lstm_cell_698/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_698/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_698_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_698/BiasAddBiasAddwhile/lstm_cell_698/add:z:02while/lstm_cell_698/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_698/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_698/splitSplit,while/lstm_cell_698/split/split_dim:output:0$while/lstm_cell_698/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_698/SigmoidSigmoid"while/lstm_cell_698/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_1Sigmoid"while/lstm_cell_698/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mulMul!while/lstm_cell_698/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_698/ReluRelu"while/lstm_cell_698/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_1Mulwhile/lstm_cell_698/Sigmoid:y:0&while/lstm_cell_698/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/add_1AddV2while/lstm_cell_698/mul:z:0while/lstm_cell_698/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_698/Sigmoid_2Sigmoid"while/lstm_cell_698/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_698/Relu_1Reluwhile/lstm_cell_698/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_698/mul_2Mul!while/lstm_cell_698/Sigmoid_2:y:0(while/lstm_cell_698/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_698/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_698/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_698/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_698/BiasAdd/ReadVariableOp*^while/lstm_cell_698/MatMul/ReadVariableOp,^while/lstm_cell_698/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_698_biasadd_readvariableop_resource5while_lstm_cell_698_biasadd_readvariableop_resource_0"n
4while_lstm_cell_698_matmul_1_readvariableop_resource6while_lstm_cell_698_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_698_matmul_readvariableop_resource4while_lstm_cell_698_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_698/BiasAdd/ReadVariableOp*while/lstm_cell_698/BiasAdd/ReadVariableOp2V
)while/lstm_cell_698/MatMul/ReadVariableOp)while/lstm_cell_698/MatMul/ReadVariableOp2Z
+while/lstm_cell_698/MatMul_1/ReadVariableOp+while/lstm_cell_698/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4224268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4224268___redundant_placeholder05
1while_while_cond_4224268___redundant_placeholder15
1while_while_cond_4224268___redundant_placeholder25
1while_while_cond_4224268___redundant_placeholder3
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4224528

inputs#
lstm_606_4224204:	?#
lstm_606_4224206:	d?
lstm_606_4224208:	?#
lstm_607_4224354:	d?#
lstm_607_4224356:	2?
lstm_607_4224358:	?"
lstm_608_4224504:2("
lstm_608_4224506:
(
lstm_608_4224508:(#
dense_202_4224522:

dense_202_4224524:
identity??!dense_202/StatefulPartitionedCall? lstm_606/StatefulPartitionedCall? lstm_607/StatefulPartitionedCall? lstm_608/StatefulPartitionedCall?
 lstm_606/StatefulPartitionedCallStatefulPartitionedCallinputslstm_606_4224204lstm_606_4224206lstm_606_4224208*
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4224203?
 lstm_607/StatefulPartitionedCallStatefulPartitionedCall)lstm_606/StatefulPartitionedCall:output:0lstm_607_4224354lstm_607_4224356lstm_607_4224358*
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4224353?
 lstm_608/StatefulPartitionedCallStatefulPartitionedCall)lstm_607/StatefulPartitionedCall:output:0lstm_608_4224504lstm_608_4224506lstm_608_4224508*
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4224503?
!dense_202/StatefulPartitionedCallStatefulPartitionedCall)lstm_608/StatefulPartitionedCall:output:0dense_202_4224522dense_202_4224524*
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
F__inference_dense_202_layer_call_and_return_conditional_losses_4224521y
IdentityIdentity*dense_202/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_202/StatefulPartitionedCall!^lstm_606/StatefulPartitionedCall!^lstm_607/StatefulPartitionedCall!^lstm_608/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_202/StatefulPartitionedCall!dense_202/StatefulPartitionedCall2D
 lstm_606/StatefulPartitionedCall lstm_606/StatefulPartitionedCall2D
 lstm_607/StatefulPartitionedCall lstm_607/StatefulPartitionedCall2D
 lstm_608/StatefulPartitionedCall lstm_608/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_607_layer_call_and_return_conditional_losses_4224884

inputs?
,lstm_cell_697_matmul_readvariableop_resource:	d?A
.lstm_cell_697_matmul_1_readvariableop_resource:	2?<
-lstm_cell_697_biasadd_readvariableop_resource:	?
identity??$lstm_cell_697/BiasAdd/ReadVariableOp?#lstm_cell_697/MatMul/ReadVariableOp?%lstm_cell_697/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_697/MatMul/ReadVariableOpReadVariableOp,lstm_cell_697_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_697/MatMulMatMulstrided_slice_2:output:0+lstm_cell_697/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_697/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_697_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_697/MatMul_1MatMulzeros:output:0-lstm_cell_697/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_697/addAddV2lstm_cell_697/MatMul:product:0 lstm_cell_697/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_697/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_697_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_697/BiasAddBiasAddlstm_cell_697/add:z:0,lstm_cell_697/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_697/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_697/splitSplit&lstm_cell_697/split/split_dim:output:0lstm_cell_697/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_697/SigmoidSigmoidlstm_cell_697/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_1Sigmoidlstm_cell_697/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_697/mulMullstm_cell_697/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_697/ReluRelulstm_cell_697/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_1Mullstm_cell_697/Sigmoid:y:0 lstm_cell_697/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_697/add_1AddV2lstm_cell_697/mul:z:0lstm_cell_697/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_697/Sigmoid_2Sigmoidlstm_cell_697/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_697/Relu_1Relulstm_cell_697/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_697/mul_2Mullstm_cell_697/Sigmoid_2:y:0"lstm_cell_697/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_697_matmul_readvariableop_resource.lstm_cell_697_matmul_1_readvariableop_resource-lstm_cell_697_biasadd_readvariableop_resource*
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
while_body_4224800*
condR
while_cond_4224799*K
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
NoOpNoOp%^lstm_cell_697/BiasAdd/ReadVariableOp$^lstm_cell_697/MatMul/ReadVariableOp&^lstm_cell_697/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_697/BiasAdd/ReadVariableOp$lstm_cell_697/BiasAdd/ReadVariableOp2J
#lstm_cell_697/MatMul/ReadVariableOp#lstm_cell_697/MatMul/ReadVariableOp2N
%lstm_cell_697/MatMul_1/ReadVariableOp%lstm_cell_697/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4223084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4223084___redundant_placeholder05
1while_while_cond_4223084___redundant_placeholder15
1while_while_cond_4223084___redundant_placeholder25
1while_while_cond_4223084___redundant_placeholder3
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
lstm_606_input;
 serving_default_lstm_606_input:0?????????=
	dense_2020
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

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_202/kernel
:2dense_202/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
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
0:.	?2lstm_606/lstm_cell_606/kernel
::8	d?2'lstm_606/lstm_cell_606/recurrent_kernel
*:(?2lstm_606/lstm_cell_606/bias
0:.	d?2lstm_607/lstm_cell_607/kernel
::8	2?2'lstm_607/lstm_cell_607/recurrent_kernel
*:(?2lstm_607/lstm_cell_607/bias
/:-2(2lstm_608/lstm_cell_608/kernel
9:7
(2'lstm_608/lstm_cell_608/recurrent_kernel
):'(2lstm_608/lstm_cell_608/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	ttotal
	ucount
v	variables
w	keras_api"
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
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
':%
2Adam/dense_202/kernel/m
!:2Adam/dense_202/bias/m
5:3	?2$Adam/lstm_606/lstm_cell_606/kernel/m
?:=	d?2.Adam/lstm_606/lstm_cell_606/recurrent_kernel/m
/:-?2"Adam/lstm_606/lstm_cell_606/bias/m
5:3	d?2$Adam/lstm_607/lstm_cell_607/kernel/m
?:=	2?2.Adam/lstm_607/lstm_cell_607/recurrent_kernel/m
/:-?2"Adam/lstm_607/lstm_cell_607/bias/m
4:22(2$Adam/lstm_608/lstm_cell_608/kernel/m
>:<
(2.Adam/lstm_608/lstm_cell_608/recurrent_kernel/m
.:,(2"Adam/lstm_608/lstm_cell_608/bias/m
':%
2Adam/dense_202/kernel/v
!:2Adam/dense_202/bias/v
5:3	?2$Adam/lstm_606/lstm_cell_606/kernel/v
?:=	d?2.Adam/lstm_606/lstm_cell_606/recurrent_kernel/v
/:-?2"Adam/lstm_606/lstm_cell_606/bias/v
5:3	d?2$Adam/lstm_607/lstm_cell_607/kernel/v
?:=	2?2.Adam/lstm_607/lstm_cell_607/recurrent_kernel/v
/:-?2"Adam/lstm_607/lstm_cell_607/bias/v
4:22(2$Adam/lstm_608/lstm_cell_608/kernel/v
>:<
(2.Adam/lstm_608/lstm_cell_608/recurrent_kernel/v
.:,(2"Adam/lstm_608/lstm_cell_608/bias/v
?2?
0__inference_sequential_202_layer_call_fn_4224553
0__inference_sequential_202_layer_call_fn_4225291
0__inference_sequential_202_layer_call_fn_4225318
0__inference_sequential_202_layer_call_fn_4225169?
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225745
K__inference_sequential_202_layer_call_and_return_conditional_losses_4226172
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225199
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225229?
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
"__inference__wrapped_model_4223004lstm_606_input"?
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
*__inference_lstm_606_layer_call_fn_4226183
*__inference_lstm_606_layer_call_fn_4226194
*__inference_lstm_606_layer_call_fn_4226205
*__inference_lstm_606_layer_call_fn_4226216?
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226359
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226502
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226645
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226788?
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
*__inference_lstm_607_layer_call_fn_4226799
*__inference_lstm_607_layer_call_fn_4226810
*__inference_lstm_607_layer_call_fn_4226821
*__inference_lstm_607_layer_call_fn_4226832?
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4226975
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227118
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227261
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227404?
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
*__inference_lstm_608_layer_call_fn_4227415
*__inference_lstm_608_layer_call_fn_4227426
*__inference_lstm_608_layer_call_fn_4227437
*__inference_lstm_608_layer_call_fn_4227448?
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227591
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227734
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227877
E__inference_lstm_608_layer_call_and_return_conditional_losses_4228020?
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
+__inference_dense_202_layer_call_fn_4228029?
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
F__inference_dense_202_layer_call_and_return_conditional_losses_4228039?
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
%__inference_signature_wrapper_4225264lstm_606_input"?
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
/__inference_lstm_cell_696_layer_call_fn_4228056
/__inference_lstm_cell_696_layer_call_fn_4228073?
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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4228105
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4228137?
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
/__inference_lstm_cell_697_layer_call_fn_4228154
/__inference_lstm_cell_697_layer_call_fn_4228171?
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4228203
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4228235?
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
/__inference_lstm_cell_698_layer_call_fn_4228252
/__inference_lstm_cell_698_layer_call_fn_4228269?
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4228301
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4228333?
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
"__inference__wrapped_model_4223004?-./012345!";?8
1?.
,?)
lstm_606_input?????????
? "5?2
0
	dense_202#? 
	dense_202??????????
F__inference_dense_202_layer_call_and_return_conditional_losses_4228039\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_202_layer_call_fn_4228029O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226359?-./O?L
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226502?-./O?L
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226645q-./??<
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
E__inference_lstm_606_layer_call_and_return_conditional_losses_4226788q-./??<
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
*__inference_lstm_606_layer_call_fn_4226183}-./O?L
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
*__inference_lstm_606_layer_call_fn_4226194}-./O?L
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
*__inference_lstm_606_layer_call_fn_4226205d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_606_layer_call_fn_4226216d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_607_layer_call_and_return_conditional_losses_4226975?012O?L
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227118?012O?L
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227261q012??<
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
E__inference_lstm_607_layer_call_and_return_conditional_losses_4227404q012??<
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
*__inference_lstm_607_layer_call_fn_4226799}012O?L
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
*__inference_lstm_607_layer_call_fn_4226810}012O?L
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
*__inference_lstm_607_layer_call_fn_4226821d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_607_layer_call_fn_4226832d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227591}345O?L
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227734}345O?L
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4227877m345??<
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
E__inference_lstm_608_layer_call_and_return_conditional_losses_4228020m345??<
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
*__inference_lstm_608_layer_call_fn_4227415p345O?L
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
*__inference_lstm_608_layer_call_fn_4227426p345O?L
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
*__inference_lstm_608_layer_call_fn_4227437`345??<
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
*__inference_lstm_608_layer_call_fn_4227448`345??<
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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4228105?-./??}
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
J__inference_lstm_cell_696_layer_call_and_return_conditional_losses_4228137?-./??}
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
/__inference_lstm_cell_696_layer_call_fn_4228056?-./??}
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
/__inference_lstm_cell_696_layer_call_fn_4228073?-./??}
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4228203?012??}
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
J__inference_lstm_cell_697_layer_call_and_return_conditional_losses_4228235?012??}
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
/__inference_lstm_cell_697_layer_call_fn_4228154?012??}
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
/__inference_lstm_cell_697_layer_call_fn_4228171?012??}
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4228301?345??}
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
J__inference_lstm_cell_698_layer_call_and_return_conditional_losses_4228333?345??}
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
/__inference_lstm_cell_698_layer_call_fn_4228252?345??}
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
/__inference_lstm_cell_698_layer_call_fn_4228269?345??}
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225199y-./012345!"C?@
9?6
,?)
lstm_606_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225229y-./012345!"C?@
9?6
,?)
lstm_606_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_202_layer_call_and_return_conditional_losses_4225745q-./012345!";?8
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
K__inference_sequential_202_layer_call_and_return_conditional_losses_4226172q-./012345!";?8
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
0__inference_sequential_202_layer_call_fn_4224553l-./012345!"C?@
9?6
,?)
lstm_606_input?????????
p 

 
? "???????????
0__inference_sequential_202_layer_call_fn_4225169l-./012345!"C?@
9?6
,?)
lstm_606_input?????????
p

 
? "???????????
0__inference_sequential_202_layer_call_fn_4225291d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_202_layer_call_fn_4225318d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4225264?-./012345!"M?J
? 
C?@
>
lstm_606_input,?)
lstm_606_input?????????"5?2
0
	dense_202#? 
	dense_202?????????