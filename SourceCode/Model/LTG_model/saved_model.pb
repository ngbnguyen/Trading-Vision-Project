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
dense_241/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_241/kernel
u
$dense_241/kernel/Read/ReadVariableOpReadVariableOpdense_241/kernel*
_output_shapes

:
*
dtype0
t
dense_241/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_241/bias
m
"dense_241/bias/Read/ReadVariableOpReadVariableOpdense_241/bias*
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
lstm_723/lstm_cell_723/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_723/lstm_cell_723/kernel
?
1lstm_723/lstm_cell_723/kernel/Read/ReadVariableOpReadVariableOplstm_723/lstm_cell_723/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_723/lstm_cell_723/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_723/lstm_cell_723/recurrent_kernel
?
;lstm_723/lstm_cell_723/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_723/lstm_cell_723/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_723/lstm_cell_723/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_723/lstm_cell_723/bias
?
/lstm_723/lstm_cell_723/bias/Read/ReadVariableOpReadVariableOplstm_723/lstm_cell_723/bias*
_output_shapes	
:?*
dtype0
?
lstm_724/lstm_cell_724/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_724/lstm_cell_724/kernel
?
1lstm_724/lstm_cell_724/kernel/Read/ReadVariableOpReadVariableOplstm_724/lstm_cell_724/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_724/lstm_cell_724/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_724/lstm_cell_724/recurrent_kernel
?
;lstm_724/lstm_cell_724/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_724/lstm_cell_724/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_724/lstm_cell_724/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_724/lstm_cell_724/bias
?
/lstm_724/lstm_cell_724/bias/Read/ReadVariableOpReadVariableOplstm_724/lstm_cell_724/bias*
_output_shapes	
:?*
dtype0
?
lstm_725/lstm_cell_725/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_725/lstm_cell_725/kernel
?
1lstm_725/lstm_cell_725/kernel/Read/ReadVariableOpReadVariableOplstm_725/lstm_cell_725/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_725/lstm_cell_725/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_725/lstm_cell_725/recurrent_kernel
?
;lstm_725/lstm_cell_725/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_725/lstm_cell_725/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_725/lstm_cell_725/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_725/lstm_cell_725/bias
?
/lstm_725/lstm_cell_725/bias/Read/ReadVariableOpReadVariableOplstm_725/lstm_cell_725/bias*
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
Adam/dense_241/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_241/kernel/m
?
+Adam/dense_241/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_241/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_241/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_241/bias/m
{
)Adam/dense_241/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_241/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_723/lstm_cell_723/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_723/lstm_cell_723/kernel/m
?
8Adam/lstm_723/lstm_cell_723/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_723/lstm_cell_723/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_723/lstm_cell_723/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_723/lstm_cell_723/recurrent_kernel/m
?
BAdam/lstm_723/lstm_cell_723/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_723/lstm_cell_723/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_723/lstm_cell_723/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_723/lstm_cell_723/bias/m
?
6Adam/lstm_723/lstm_cell_723/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_723/lstm_cell_723/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_724/lstm_cell_724/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_724/lstm_cell_724/kernel/m
?
8Adam/lstm_724/lstm_cell_724/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_724/lstm_cell_724/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_724/lstm_cell_724/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_724/lstm_cell_724/recurrent_kernel/m
?
BAdam/lstm_724/lstm_cell_724/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_724/lstm_cell_724/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_724/lstm_cell_724/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_724/lstm_cell_724/bias/m
?
6Adam/lstm_724/lstm_cell_724/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_724/lstm_cell_724/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_725/lstm_cell_725/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_725/lstm_cell_725/kernel/m
?
8Adam/lstm_725/lstm_cell_725/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_725/lstm_cell_725/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_725/lstm_cell_725/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_725/lstm_cell_725/recurrent_kernel/m
?
BAdam/lstm_725/lstm_cell_725/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_725/lstm_cell_725/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_725/lstm_cell_725/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_725/lstm_cell_725/bias/m
?
6Adam/lstm_725/lstm_cell_725/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_725/lstm_cell_725/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_241/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_241/kernel/v
?
+Adam/dense_241/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_241/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_241/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_241/bias/v
{
)Adam/dense_241/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_241/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_723/lstm_cell_723/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_723/lstm_cell_723/kernel/v
?
8Adam/lstm_723/lstm_cell_723/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_723/lstm_cell_723/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_723/lstm_cell_723/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_723/lstm_cell_723/recurrent_kernel/v
?
BAdam/lstm_723/lstm_cell_723/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_723/lstm_cell_723/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_723/lstm_cell_723/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_723/lstm_cell_723/bias/v
?
6Adam/lstm_723/lstm_cell_723/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_723/lstm_cell_723/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_724/lstm_cell_724/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_724/lstm_cell_724/kernel/v
?
8Adam/lstm_724/lstm_cell_724/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_724/lstm_cell_724/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_724/lstm_cell_724/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_724/lstm_cell_724/recurrent_kernel/v
?
BAdam/lstm_724/lstm_cell_724/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_724/lstm_cell_724/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_724/lstm_cell_724/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_724/lstm_cell_724/bias/v
?
6Adam/lstm_724/lstm_cell_724/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_724/lstm_cell_724/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_725/lstm_cell_725/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_725/lstm_cell_725/kernel/v
?
8Adam/lstm_725/lstm_cell_725/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_725/lstm_cell_725/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_725/lstm_cell_725/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_725/lstm_cell_725/recurrent_kernel/v
?
BAdam/lstm_725/lstm_cell_725/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_725/lstm_cell_725/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_725/lstm_cell_725/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_725/lstm_cell_725/bias/v
?
6Adam/lstm_725/lstm_cell_725/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_725/lstm_cell_725/bias/v*
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
VARIABLE_VALUEdense_241/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_241/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_723/lstm_cell_723/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_723/lstm_cell_723/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_723/lstm_cell_723/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_724/lstm_cell_724/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_724/lstm_cell_724/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_724/lstm_cell_724/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_725/lstm_cell_725/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_725/lstm_cell_725/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_725/lstm_cell_725/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_241/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_241/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_723/lstm_cell_723/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_723/lstm_cell_723/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_723/lstm_cell_723/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_724/lstm_cell_724/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_724/lstm_cell_724/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_724/lstm_cell_724/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_725/lstm_cell_725/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_725/lstm_cell_725/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_725/lstm_cell_725/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_241/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_241/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_723/lstm_cell_723/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_723/lstm_cell_723/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_723/lstm_cell_723/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_724/lstm_cell_724/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_724/lstm_cell_724/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_724/lstm_cell_724/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_725/lstm_cell_725/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_725/lstm_cell_725/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_725/lstm_cell_725/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_723_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_723_inputlstm_723/lstm_cell_723/kernel'lstm_723/lstm_cell_723/recurrent_kernellstm_723/lstm_cell_723/biaslstm_724/lstm_cell_724/kernel'lstm_724/lstm_cell_724/recurrent_kernellstm_724/lstm_cell_724/biaslstm_725/lstm_cell_725/kernel'lstm_725/lstm_cell_725/recurrent_kernellstm_725/lstm_cell_725/biasdense_241/kerneldense_241/bias*
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
%__inference_signature_wrapper_4388568
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_241/kernel/Read/ReadVariableOp"dense_241/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_723/lstm_cell_723/kernel/Read/ReadVariableOp;lstm_723/lstm_cell_723/recurrent_kernel/Read/ReadVariableOp/lstm_723/lstm_cell_723/bias/Read/ReadVariableOp1lstm_724/lstm_cell_724/kernel/Read/ReadVariableOp;lstm_724/lstm_cell_724/recurrent_kernel/Read/ReadVariableOp/lstm_724/lstm_cell_724/bias/Read/ReadVariableOp1lstm_725/lstm_cell_725/kernel/Read/ReadVariableOp;lstm_725/lstm_cell_725/recurrent_kernel/Read/ReadVariableOp/lstm_725/lstm_cell_725/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_241/kernel/m/Read/ReadVariableOp)Adam/dense_241/bias/m/Read/ReadVariableOp8Adam/lstm_723/lstm_cell_723/kernel/m/Read/ReadVariableOpBAdam/lstm_723/lstm_cell_723/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_723/lstm_cell_723/bias/m/Read/ReadVariableOp8Adam/lstm_724/lstm_cell_724/kernel/m/Read/ReadVariableOpBAdam/lstm_724/lstm_cell_724/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_724/lstm_cell_724/bias/m/Read/ReadVariableOp8Adam/lstm_725/lstm_cell_725/kernel/m/Read/ReadVariableOpBAdam/lstm_725/lstm_cell_725/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_725/lstm_cell_725/bias/m/Read/ReadVariableOp+Adam/dense_241/kernel/v/Read/ReadVariableOp)Adam/dense_241/bias/v/Read/ReadVariableOp8Adam/lstm_723/lstm_cell_723/kernel/v/Read/ReadVariableOpBAdam/lstm_723/lstm_cell_723/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_723/lstm_cell_723/bias/v/Read/ReadVariableOp8Adam/lstm_724/lstm_cell_724/kernel/v/Read/ReadVariableOpBAdam/lstm_724/lstm_cell_724/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_724/lstm_cell_724/bias/v/Read/ReadVariableOp8Adam/lstm_725/lstm_cell_725/kernel/v/Read/ReadVariableOpBAdam/lstm_725/lstm_cell_725/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_725/lstm_cell_725/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4391780
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_241/kerneldense_241/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_723/lstm_cell_723/kernel'lstm_723/lstm_cell_723/recurrent_kernellstm_723/lstm_cell_723/biaslstm_724/lstm_cell_724/kernel'lstm_724/lstm_cell_724/recurrent_kernellstm_724/lstm_cell_724/biaslstm_725/lstm_cell_725/kernel'lstm_725/lstm_cell_725/recurrent_kernellstm_725/lstm_cell_725/biastotalcountAdam/dense_241/kernel/mAdam/dense_241/bias/m$Adam/lstm_723/lstm_cell_723/kernel/m.Adam/lstm_723/lstm_cell_723/recurrent_kernel/m"Adam/lstm_723/lstm_cell_723/bias/m$Adam/lstm_724/lstm_cell_724/kernel/m.Adam/lstm_724/lstm_cell_724/recurrent_kernel/m"Adam/lstm_724/lstm_cell_724/bias/m$Adam/lstm_725/lstm_cell_725/kernel/m.Adam/lstm_725/lstm_cell_725/recurrent_kernel/m"Adam/lstm_725/lstm_cell_725/bias/mAdam/dense_241/kernel/vAdam/dense_241/bias/v$Adam/lstm_723/lstm_cell_723/kernel/v.Adam/lstm_723/lstm_cell_723/recurrent_kernel/v"Adam/lstm_723/lstm_cell_723/bias/v$Adam/lstm_724/lstm_cell_724/kernel/v.Adam/lstm_724/lstm_cell_724/recurrent_kernel/v"Adam/lstm_724/lstm_cell_724/bias/v$Adam/lstm_725/lstm_cell_725/kernel/v.Adam/lstm_725/lstm_cell_725/recurrent_kernel/v"Adam/lstm_725/lstm_cell_725/bias/v*4
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
#__inference__traced_restore_4391910??+
?8
?
while_body_4387939
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_725_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_725_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_725_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_725_matmul_readvariableop_resource:2(F
4while_lstm_cell_725_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_725_biasadd_readvariableop_resource:(??*while/lstm_cell_725/BiasAdd/ReadVariableOp?)while/lstm_cell_725/MatMul/ReadVariableOp?+while/lstm_cell_725/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_725/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_725/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_725/addAddV2$while/lstm_cell_725/MatMul:product:0&while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_725/BiasAddBiasAddwhile/lstm_cell_725/add:z:02while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_725/splitSplit,while/lstm_cell_725/split/split_dim:output:0$while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_725/SigmoidSigmoid"while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_1Sigmoid"while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mulMul!while/lstm_cell_725/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_725/ReluRelu"while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_1Mulwhile/lstm_cell_725/Sigmoid:y:0&while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/add_1AddV2while/lstm_cell_725/mul:z:0while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_2Sigmoid"while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_725/Relu_1Reluwhile/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_2Mul!while/lstm_cell_725/Sigmoid_2:y:0(while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_725/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_725/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_725/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_725/BiasAdd/ReadVariableOp*^while/lstm_cell_725/MatMul/ReadVariableOp,^while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_725_biasadd_readvariableop_resource5while_lstm_cell_725_biasadd_readvariableop_resource_0"n
4while_lstm_cell_725_matmul_1_readvariableop_resource6while_lstm_cell_725_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_725_matmul_readvariableop_resource4while_lstm_cell_725_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_725/BiasAdd/ReadVariableOp*while/lstm_cell_725/BiasAdd/ReadVariableOp2V
)while/lstm_cell_725/MatMul/ReadVariableOp)while/lstm_cell_725/MatMul/ReadVariableOp2Z
+while/lstm_cell_725/MatMul_1/ReadVariableOp+while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_723_while_cond_4388680.
*lstm_723_while_lstm_723_while_loop_counter4
0lstm_723_while_lstm_723_while_maximum_iterations
lstm_723_while_placeholder 
lstm_723_while_placeholder_1 
lstm_723_while_placeholder_2 
lstm_723_while_placeholder_30
,lstm_723_while_less_lstm_723_strided_slice_1G
Clstm_723_while_lstm_723_while_cond_4388680___redundant_placeholder0G
Clstm_723_while_lstm_723_while_cond_4388680___redundant_placeholder1G
Clstm_723_while_lstm_723_while_cond_4388680___redundant_placeholder2G
Clstm_723_while_lstm_723_while_cond_4388680___redundant_placeholder3
lstm_723_while_identity
?
lstm_723/while/LessLesslstm_723_while_placeholder,lstm_723_while_less_lstm_723_strided_slice_1*
T0*
_output_shapes
: ]
lstm_723/while/IdentityIdentitylstm_723/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_723_while_identity lstm_723/while/Identity:output:0*(
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
*__inference_lstm_724_layer_call_fn_4390136

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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4388188s
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4388353

inputs?
,lstm_cell_723_matmul_readvariableop_resource:	?A
.lstm_cell_723_matmul_1_readvariableop_resource:	d?<
-lstm_cell_723_biasadd_readvariableop_resource:	?
identity??$lstm_cell_723/BiasAdd/ReadVariableOp?#lstm_cell_723/MatMul/ReadVariableOp?%lstm_cell_723/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_723/MatMul/ReadVariableOpReadVariableOp,lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_723/MatMulMatMulstrided_slice_2:output:0+lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_723/MatMul_1MatMulzeros:output:0-lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_723/addAddV2lstm_cell_723/MatMul:product:0 lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_723/BiasAddBiasAddlstm_cell_723/add:z:0,lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_723/splitSplit&lstm_cell_723/split/split_dim:output:0lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_723/SigmoidSigmoidlstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_1Sigmoidlstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_723/mulMullstm_cell_723/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_723/ReluRelulstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_1Mullstm_cell_723/Sigmoid:y:0 lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_723/add_1AddV2lstm_cell_723/mul:z:0lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_2Sigmoidlstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_723/Relu_1Relulstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_2Mullstm_cell_723/Sigmoid_2:y:0"lstm_cell_723/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_723_matmul_readvariableop_resource.lstm_cell_723_matmul_1_readvariableop_resource-lstm_cell_723_biasadd_readvariableop_resource*
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
while_body_4388269*
condR
while_cond_4388268*K
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
NoOpNoOp%^lstm_cell_723/BiasAdd/ReadVariableOp$^lstm_cell_723/MatMul/ReadVariableOp&^lstm_cell_723/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_723/BiasAdd/ReadVariableOp$lstm_cell_723/BiasAdd/ReadVariableOp2J
#lstm_cell_723/MatMul/ReadVariableOp#lstm_cell_723/MatMul/ReadVariableOp2N
%lstm_cell_723/MatMul_1/ReadVariableOp%lstm_cell_723/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389806
inputs_0?
,lstm_cell_723_matmul_readvariableop_resource:	?A
.lstm_cell_723_matmul_1_readvariableop_resource:	d?<
-lstm_cell_723_biasadd_readvariableop_resource:	?
identity??$lstm_cell_723/BiasAdd/ReadVariableOp?#lstm_cell_723/MatMul/ReadVariableOp?%lstm_cell_723/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_723/MatMul/ReadVariableOpReadVariableOp,lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_723/MatMulMatMulstrided_slice_2:output:0+lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_723/MatMul_1MatMulzeros:output:0-lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_723/addAddV2lstm_cell_723/MatMul:product:0 lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_723/BiasAddBiasAddlstm_cell_723/add:z:0,lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_723/splitSplit&lstm_cell_723/split/split_dim:output:0lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_723/SigmoidSigmoidlstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_1Sigmoidlstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_723/mulMullstm_cell_723/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_723/ReluRelulstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_1Mullstm_cell_723/Sigmoid:y:0 lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_723/add_1AddV2lstm_cell_723/mul:z:0lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_2Sigmoidlstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_723/Relu_1Relulstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_2Mullstm_cell_723/Sigmoid_2:y:0"lstm_cell_723/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_723_matmul_readvariableop_resource.lstm_cell_723_matmul_1_readvariableop_resource-lstm_cell_723_biasadd_readvariableop_resource*
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
while_body_4389722*
condR
while_cond_4389721*K
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
NoOpNoOp%^lstm_cell_723/BiasAdd/ReadVariableOp$^lstm_cell_723/MatMul/ReadVariableOp&^lstm_cell_723/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_723/BiasAdd/ReadVariableOp$lstm_cell_723/BiasAdd/ReadVariableOp2J
#lstm_cell_723/MatMul/ReadVariableOp#lstm_cell_723/MatMul/ReadVariableOp2N
%lstm_cell_723/MatMul_1/ReadVariableOp%lstm_cell_723/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_723_while_body_4389108.
*lstm_723_while_lstm_723_while_loop_counter4
0lstm_723_while_lstm_723_while_maximum_iterations
lstm_723_while_placeholder 
lstm_723_while_placeholder_1 
lstm_723_while_placeholder_2 
lstm_723_while_placeholder_3-
)lstm_723_while_lstm_723_strided_slice_1_0i
elstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0:	?R
?lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?M
>lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0:	?
lstm_723_while_identity
lstm_723_while_identity_1
lstm_723_while_identity_2
lstm_723_while_identity_3
lstm_723_while_identity_4
lstm_723_while_identity_5+
'lstm_723_while_lstm_723_strided_slice_1g
clstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensorN
;lstm_723_while_lstm_cell_723_matmul_readvariableop_resource:	?P
=lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource:	d?K
<lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource:	???3lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp?2lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp?4lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp?
@lstm_723/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_723/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensor_0lstm_723_while_placeholderIlstm_723/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_723/while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp=lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_723/while/lstm_cell_723/MatMulMatMul9lstm_723/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp?lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_723/while/lstm_cell_723/MatMul_1MatMullstm_723_while_placeholder_2<lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_723/while/lstm_cell_723/addAddV2-lstm_723/while/lstm_cell_723/MatMul:product:0/lstm_723/while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp>lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_723/while/lstm_cell_723/BiasAddBiasAdd$lstm_723/while/lstm_cell_723/add:z:0;lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_723/while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_723/while/lstm_cell_723/splitSplit5lstm_723/while/lstm_cell_723/split/split_dim:output:0-lstm_723/while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_723/while/lstm_cell_723/SigmoidSigmoid+lstm_723/while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_723/while/lstm_cell_723/Sigmoid_1Sigmoid+lstm_723/while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_723/while/lstm_cell_723/mulMul*lstm_723/while/lstm_cell_723/Sigmoid_1:y:0lstm_723_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_723/while/lstm_cell_723/ReluRelu+lstm_723/while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_723/while/lstm_cell_723/mul_1Mul(lstm_723/while/lstm_cell_723/Sigmoid:y:0/lstm_723/while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_723/while/lstm_cell_723/add_1AddV2$lstm_723/while/lstm_cell_723/mul:z:0&lstm_723/while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_723/while/lstm_cell_723/Sigmoid_2Sigmoid+lstm_723/while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_723/while/lstm_cell_723/Relu_1Relu&lstm_723/while/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_723/while/lstm_cell_723/mul_2Mul*lstm_723/while/lstm_cell_723/Sigmoid_2:y:01lstm_723/while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_723/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_723_while_placeholder_1lstm_723_while_placeholder&lstm_723/while/lstm_cell_723/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_723/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_723/while/addAddV2lstm_723_while_placeholderlstm_723/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_723/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_723/while/add_1AddV2*lstm_723_while_lstm_723_while_loop_counterlstm_723/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_723/while/IdentityIdentitylstm_723/while/add_1:z:0^lstm_723/while/NoOp*
T0*
_output_shapes
: ?
lstm_723/while/Identity_1Identity0lstm_723_while_lstm_723_while_maximum_iterations^lstm_723/while/NoOp*
T0*
_output_shapes
: t
lstm_723/while/Identity_2Identitylstm_723/while/add:z:0^lstm_723/while/NoOp*
T0*
_output_shapes
: ?
lstm_723/while/Identity_3IdentityClstm_723/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_723/while/NoOp*
T0*
_output_shapes
: ?
lstm_723/while/Identity_4Identity&lstm_723/while/lstm_cell_723/mul_2:z:0^lstm_723/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_723/while/Identity_5Identity&lstm_723/while/lstm_cell_723/add_1:z:0^lstm_723/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_723/while/NoOpNoOp4^lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp3^lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp5^lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_723_while_identity lstm_723/while/Identity:output:0"?
lstm_723_while_identity_1"lstm_723/while/Identity_1:output:0"?
lstm_723_while_identity_2"lstm_723/while/Identity_2:output:0"?
lstm_723_while_identity_3"lstm_723/while/Identity_3:output:0"?
lstm_723_while_identity_4"lstm_723/while/Identity_4:output:0"?
lstm_723_while_identity_5"lstm_723/while/Identity_5:output:0"T
'lstm_723_while_lstm_723_strided_slice_1)lstm_723_while_lstm_723_strided_slice_1_0"~
<lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource>lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0"?
=lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource?lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0"|
;lstm_723_while_lstm_cell_723_matmul_readvariableop_resource=lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0"?
clstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensorelstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp3lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp2h
2lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp2lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp2l
4lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp4lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4386375

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
while_cond_4386579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4386579___redundant_placeholder05
1while_while_cond_4386579___redundant_placeholder15
1while_while_cond_4386579___redundant_placeholder25
1while_while_cond_4386579___redundant_placeholder3
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

lstm_724_while_body_4388820.
*lstm_724_while_lstm_724_while_loop_counter4
0lstm_724_while_lstm_724_while_maximum_iterations
lstm_724_while_placeholder 
lstm_724_while_placeholder_1 
lstm_724_while_placeholder_2 
lstm_724_while_placeholder_3-
)lstm_724_while_lstm_724_strided_slice_1_0i
elstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0:	d?R
?lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?M
>lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0:	?
lstm_724_while_identity
lstm_724_while_identity_1
lstm_724_while_identity_2
lstm_724_while_identity_3
lstm_724_while_identity_4
lstm_724_while_identity_5+
'lstm_724_while_lstm_724_strided_slice_1g
clstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensorN
;lstm_724_while_lstm_cell_724_matmul_readvariableop_resource:	d?P
=lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource:	2?K
<lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource:	???3lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp?2lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp?4lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp?
@lstm_724/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_724/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensor_0lstm_724_while_placeholderIlstm_724/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_724/while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp=lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_724/while/lstm_cell_724/MatMulMatMul9lstm_724/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp?lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_724/while/lstm_cell_724/MatMul_1MatMullstm_724_while_placeholder_2<lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_724/while/lstm_cell_724/addAddV2-lstm_724/while/lstm_cell_724/MatMul:product:0/lstm_724/while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp>lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_724/while/lstm_cell_724/BiasAddBiasAdd$lstm_724/while/lstm_cell_724/add:z:0;lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_724/while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_724/while/lstm_cell_724/splitSplit5lstm_724/while/lstm_cell_724/split/split_dim:output:0-lstm_724/while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_724/while/lstm_cell_724/SigmoidSigmoid+lstm_724/while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_724/while/lstm_cell_724/Sigmoid_1Sigmoid+lstm_724/while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_724/while/lstm_cell_724/mulMul*lstm_724/while/lstm_cell_724/Sigmoid_1:y:0lstm_724_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_724/while/lstm_cell_724/ReluRelu+lstm_724/while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_724/while/lstm_cell_724/mul_1Mul(lstm_724/while/lstm_cell_724/Sigmoid:y:0/lstm_724/while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_724/while/lstm_cell_724/add_1AddV2$lstm_724/while/lstm_cell_724/mul:z:0&lstm_724/while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_724/while/lstm_cell_724/Sigmoid_2Sigmoid+lstm_724/while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_724/while/lstm_cell_724/Relu_1Relu&lstm_724/while/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_724/while/lstm_cell_724/mul_2Mul*lstm_724/while/lstm_cell_724/Sigmoid_2:y:01lstm_724/while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_724/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_724_while_placeholder_1lstm_724_while_placeholder&lstm_724/while/lstm_cell_724/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_724/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_724/while/addAddV2lstm_724_while_placeholderlstm_724/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_724/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_724/while/add_1AddV2*lstm_724_while_lstm_724_while_loop_counterlstm_724/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_724/while/IdentityIdentitylstm_724/while/add_1:z:0^lstm_724/while/NoOp*
T0*
_output_shapes
: ?
lstm_724/while/Identity_1Identity0lstm_724_while_lstm_724_while_maximum_iterations^lstm_724/while/NoOp*
T0*
_output_shapes
: t
lstm_724/while/Identity_2Identitylstm_724/while/add:z:0^lstm_724/while/NoOp*
T0*
_output_shapes
: ?
lstm_724/while/Identity_3IdentityClstm_724/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_724/while/NoOp*
T0*
_output_shapes
: ?
lstm_724/while/Identity_4Identity&lstm_724/while/lstm_cell_724/mul_2:z:0^lstm_724/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_724/while/Identity_5Identity&lstm_724/while/lstm_cell_724/add_1:z:0^lstm_724/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_724/while/NoOpNoOp4^lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp3^lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp5^lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_724_while_identity lstm_724/while/Identity:output:0"?
lstm_724_while_identity_1"lstm_724/while/Identity_1:output:0"?
lstm_724_while_identity_2"lstm_724/while/Identity_2:output:0"?
lstm_724_while_identity_3"lstm_724/while/Identity_3:output:0"?
lstm_724_while_identity_4"lstm_724/while/Identity_4:output:0"?
lstm_724_while_identity_5"lstm_724/while/Identity_5:output:0"T
'lstm_724_while_lstm_724_strided_slice_1)lstm_724_while_lstm_724_strided_slice_1_0"~
<lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource>lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0"?
=lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource?lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0"|
;lstm_724_while_lstm_cell_724_matmul_readvariableop_resource=lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0"?
clstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensorelstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp3lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp2h
2lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp2lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp2l
4lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp4lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4391605

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
while_body_4387280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_725_4387304_0:2(/
while_lstm_cell_725_4387306_0:
(+
while_lstm_cell_725_4387308_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_725_4387304:2(-
while_lstm_cell_725_4387306:
()
while_lstm_cell_725_4387308:(??+while/lstm_cell_725/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_725/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_725_4387304_0while_lstm_cell_725_4387306_0while_lstm_cell_725_4387308_0*
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4387221?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_725/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_725/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_725/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_725/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_725_4387304while_lstm_cell_725_4387304_0"<
while_lstm_cell_725_4387306while_lstm_cell_725_4387306_0"<
while_lstm_cell_725_4387308while_lstm_cell_725_4387308_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_725/StatefulPartitionedCall+while/lstm_cell_725/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4387723
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_725_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_725_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_725_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_725_matmul_readvariableop_resource:2(F
4while_lstm_cell_725_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_725_biasadd_readvariableop_resource:(??*while/lstm_cell_725/BiasAdd/ReadVariableOp?)while/lstm_cell_725/MatMul/ReadVariableOp?+while/lstm_cell_725/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_725/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_725/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_725/addAddV2$while/lstm_cell_725/MatMul:product:0&while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_725/BiasAddBiasAddwhile/lstm_cell_725/add:z:02while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_725/splitSplit,while/lstm_cell_725/split/split_dim:output:0$while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_725/SigmoidSigmoid"while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_1Sigmoid"while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mulMul!while/lstm_cell_725/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_725/ReluRelu"while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_1Mulwhile/lstm_cell_725/Sigmoid:y:0&while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/add_1AddV2while/lstm_cell_725/mul:z:0while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_2Sigmoid"while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_725/Relu_1Reluwhile/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_2Mul!while/lstm_cell_725/Sigmoid_2:y:0(while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_725/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_725/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_725/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_725/BiasAdd/ReadVariableOp*^while/lstm_cell_725/MatMul/ReadVariableOp,^while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_725_biasadd_readvariableop_resource5while_lstm_cell_725_biasadd_readvariableop_resource_0"n
4while_lstm_cell_725_matmul_1_readvariableop_resource6while_lstm_cell_725_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_725_matmul_readvariableop_resource4while_lstm_cell_725_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_725/BiasAdd/ReadVariableOp*while/lstm_cell_725/BiasAdd/ReadVariableOp2V
)while/lstm_cell_725/MatMul/ReadVariableOp)while/lstm_cell_725/MatMul/ReadVariableOp2Z
+while/lstm_cell_725/MatMul_1/ReadVariableOp+while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_241_lstm_723_while_cond_4385939L
Hsequential_241_lstm_723_while_sequential_241_lstm_723_while_loop_counterR
Nsequential_241_lstm_723_while_sequential_241_lstm_723_while_maximum_iterations-
)sequential_241_lstm_723_while_placeholder/
+sequential_241_lstm_723_while_placeholder_1/
+sequential_241_lstm_723_while_placeholder_2/
+sequential_241_lstm_723_while_placeholder_3N
Jsequential_241_lstm_723_while_less_sequential_241_lstm_723_strided_slice_1e
asequential_241_lstm_723_while_sequential_241_lstm_723_while_cond_4385939___redundant_placeholder0e
asequential_241_lstm_723_while_sequential_241_lstm_723_while_cond_4385939___redundant_placeholder1e
asequential_241_lstm_723_while_sequential_241_lstm_723_while_cond_4385939___redundant_placeholder2e
asequential_241_lstm_723_while_sequential_241_lstm_723_while_cond_4385939___redundant_placeholder3*
&sequential_241_lstm_723_while_identity
?
"sequential_241/lstm_723/while/LessLess)sequential_241_lstm_723_while_placeholderJsequential_241_lstm_723_while_less_sequential_241_lstm_723_strided_slice_1*
T0*
_output_shapes
: {
&sequential_241/lstm_723/while/IdentityIdentity&sequential_241/lstm_723/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_241_lstm_723_while_identity/sequential_241/lstm_723/while/Identity:output:0*(
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
?
K__inference_sequential_241_layer_call_and_return_conditional_losses_4387832

inputs#
lstm_723_4387508:	?#
lstm_723_4387510:	d?
lstm_723_4387512:	?#
lstm_724_4387658:	d?#
lstm_724_4387660:	2?
lstm_724_4387662:	?"
lstm_725_4387808:2("
lstm_725_4387810:
(
lstm_725_4387812:(#
dense_241_4387826:

dense_241_4387828:
identity??!dense_241/StatefulPartitionedCall? lstm_723/StatefulPartitionedCall? lstm_724/StatefulPartitionedCall? lstm_725/StatefulPartitionedCall?
 lstm_723/StatefulPartitionedCallStatefulPartitionedCallinputslstm_723_4387508lstm_723_4387510lstm_723_4387512*
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4387507?
 lstm_724/StatefulPartitionedCallStatefulPartitionedCall)lstm_723/StatefulPartitionedCall:output:0lstm_724_4387658lstm_724_4387660lstm_724_4387662*
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4387657?
 lstm_725/StatefulPartitionedCallStatefulPartitionedCall)lstm_724/StatefulPartitionedCall:output:0lstm_725_4387808lstm_725_4387810lstm_725_4387812*
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4387807?
!dense_241/StatefulPartitionedCallStatefulPartitionedCall)lstm_725/StatefulPartitionedCall:output:0dense_241_4387826dense_241_4387828*
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
F__inference_dense_241_layer_call_and_return_conditional_losses_4387825y
IdentityIdentity*dense_241/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_241/StatefulPartitionedCall!^lstm_723/StatefulPartitionedCall!^lstm_724/StatefulPartitionedCall!^lstm_725/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_241/StatefulPartitionedCall!dense_241/StatefulPartitionedCall2D
 lstm_723/StatefulPartitionedCall lstm_723/StatefulPartitionedCall2D
 lstm_724/StatefulPartitionedCall lstm_724/StatefulPartitionedCall2D
 lstm_725/StatefulPartitionedCall lstm_725/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_4387089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_725_4387113_0:2(/
while_lstm_cell_725_4387115_0:
(+
while_lstm_cell_725_4387117_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_725_4387113:2(-
while_lstm_cell_725_4387115:
()
while_lstm_cell_725_4387117:(??+while/lstm_cell_725/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_725/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_725_4387113_0while_lstm_cell_725_4387115_0while_lstm_cell_725_4387117_0*
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4387075?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_725/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_725/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_725/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_725/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_725_4387113while_lstm_cell_725_4387113_0"<
while_lstm_cell_725_4387115while_lstm_cell_725_4387115_0"<
while_lstm_cell_725_4387117while_lstm_cell_725_4387117_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_725/StatefulPartitionedCall+while/lstm_cell_725/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4387221

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
?J
?
E__inference_lstm_724_layer_call_and_return_conditional_losses_4387657

inputs?
,lstm_cell_724_matmul_readvariableop_resource:	d?A
.lstm_cell_724_matmul_1_readvariableop_resource:	2?<
-lstm_cell_724_biasadd_readvariableop_resource:	?
identity??$lstm_cell_724/BiasAdd/ReadVariableOp?#lstm_cell_724/MatMul/ReadVariableOp?%lstm_cell_724/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_724/MatMul/ReadVariableOpReadVariableOp,lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_724/MatMulMatMulstrided_slice_2:output:0+lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_724/MatMul_1MatMulzeros:output:0-lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_724/addAddV2lstm_cell_724/MatMul:product:0 lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_724/BiasAddBiasAddlstm_cell_724/add:z:0,lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_724/splitSplit&lstm_cell_724/split/split_dim:output:0lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_724/SigmoidSigmoidlstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_1Sigmoidlstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_724/mulMullstm_cell_724/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_724/ReluRelulstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_1Mullstm_cell_724/Sigmoid:y:0 lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_724/add_1AddV2lstm_cell_724/mul:z:0lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_2Sigmoidlstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_724/Relu_1Relulstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_2Mullstm_cell_724/Sigmoid_2:y:0"lstm_cell_724/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_724_matmul_readvariableop_resource.lstm_cell_724_matmul_1_readvariableop_resource-lstm_cell_724_biasadd_readvariableop_resource*
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
while_body_4387573*
condR
while_cond_4387572*K
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
NoOpNoOp%^lstm_cell_724/BiasAdd/ReadVariableOp$^lstm_cell_724/MatMul/ReadVariableOp&^lstm_cell_724/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_724/BiasAdd/ReadVariableOp$lstm_cell_724/BiasAdd/ReadVariableOp2J
#lstm_cell_724/MatMul/ReadVariableOp#lstm_cell_724/MatMul/ReadVariableOp2N
%lstm_cell_724/MatMul_1/ReadVariableOp%lstm_cell_724/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4391507

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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4387807

inputs>
,lstm_cell_725_matmul_readvariableop_resource:2(@
.lstm_cell_725_matmul_1_readvariableop_resource:
(;
-lstm_cell_725_biasadd_readvariableop_resource:(
identity??$lstm_cell_725/BiasAdd/ReadVariableOp?#lstm_cell_725/MatMul/ReadVariableOp?%lstm_cell_725/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_725/MatMul/ReadVariableOpReadVariableOp,lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_725/MatMulMatMulstrided_slice_2:output:0+lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_725/MatMul_1MatMulzeros:output:0-lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_725/addAddV2lstm_cell_725/MatMul:product:0 lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_725/BiasAddBiasAddlstm_cell_725/add:z:0,lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_725/splitSplit&lstm_cell_725/split/split_dim:output:0lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_725/SigmoidSigmoidlstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_1Sigmoidlstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_725/mulMullstm_cell_725/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_725/ReluRelulstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_1Mullstm_cell_725/Sigmoid:y:0 lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_725/add_1AddV2lstm_cell_725/mul:z:0lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_2Sigmoidlstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_725/Relu_1Relulstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_2Mullstm_cell_725/Sigmoid_2:y:0"lstm_cell_725/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_725_matmul_readvariableop_resource.lstm_cell_725_matmul_1_readvariableop_resource-lstm_cell_725_biasadd_readvariableop_resource*
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
while_body_4387723*
condR
while_cond_4387722*K
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
NoOpNoOp%^lstm_cell_725/BiasAdd/ReadVariableOp$^lstm_cell_725/MatMul/ReadVariableOp&^lstm_cell_725/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_725/BiasAdd/ReadVariableOp$lstm_cell_725/BiasAdd/ReadVariableOp2J
#lstm_cell_725/MatMul/ReadVariableOp#lstm_cell_725/MatMul/ReadVariableOp2N
%lstm_cell_725/MatMul_1/ReadVariableOp%lstm_cell_725/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
F__inference_dense_241_layer_call_and_return_conditional_losses_4387825

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
lstm_724_while_cond_4389246.
*lstm_724_while_lstm_724_while_loop_counter4
0lstm_724_while_lstm_724_while_maximum_iterations
lstm_724_while_placeholder 
lstm_724_while_placeholder_1 
lstm_724_while_placeholder_2 
lstm_724_while_placeholder_30
,lstm_724_while_less_lstm_724_strided_slice_1G
Clstm_724_while_lstm_724_while_cond_4389246___redundant_placeholder0G
Clstm_724_while_lstm_724_while_cond_4389246___redundant_placeholder1G
Clstm_724_while_lstm_724_while_cond_4389246___redundant_placeholder2G
Clstm_724_while_lstm_724_while_cond_4389246___redundant_placeholder3
lstm_724_while_identity
?
lstm_724/while/LessLesslstm_724_while_placeholder,lstm_724_while_less_lstm_724_strided_slice_1*
T0*
_output_shapes
: ]
lstm_724/while/IdentityIdentitylstm_724/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_724_while_identity lstm_724/while/Identity:output:0*(
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4387158

inputs'
lstm_cell_725_4387076:2('
lstm_cell_725_4387078:
(#
lstm_cell_725_4387080:(
identity??%lstm_cell_725/StatefulPartitionedCall?while;
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
%lstm_cell_725/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_725_4387076lstm_cell_725_4387078lstm_cell_725_4387080*
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4387075n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_725_4387076lstm_cell_725_4387078lstm_cell_725_4387080*
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
while_body_4387089*
condR
while_cond_4387088*K
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
NoOpNoOp&^lstm_cell_725/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_725/StatefulPartitionedCall%lstm_cell_725/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?T
?
*sequential_241_lstm_724_while_body_4386079L
Hsequential_241_lstm_724_while_sequential_241_lstm_724_while_loop_counterR
Nsequential_241_lstm_724_while_sequential_241_lstm_724_while_maximum_iterations-
)sequential_241_lstm_724_while_placeholder/
+sequential_241_lstm_724_while_placeholder_1/
+sequential_241_lstm_724_while_placeholder_2/
+sequential_241_lstm_724_while_placeholder_3K
Gsequential_241_lstm_724_while_sequential_241_lstm_724_strided_slice_1_0?
?sequential_241_lstm_724_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_724_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_241_lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0:	d?a
Nsequential_241_lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?\
Msequential_241_lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0:	?*
&sequential_241_lstm_724_while_identity,
(sequential_241_lstm_724_while_identity_1,
(sequential_241_lstm_724_while_identity_2,
(sequential_241_lstm_724_while_identity_3,
(sequential_241_lstm_724_while_identity_4,
(sequential_241_lstm_724_while_identity_5I
Esequential_241_lstm_724_while_sequential_241_lstm_724_strided_slice_1?
?sequential_241_lstm_724_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_724_tensorarrayunstack_tensorlistfromtensor]
Jsequential_241_lstm_724_while_lstm_cell_724_matmul_readvariableop_resource:	d?_
Lsequential_241_lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource:	2?Z
Ksequential_241_lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource:	???Bsequential_241/lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp?Asequential_241/lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp?Csequential_241/lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp?
Osequential_241/lstm_724/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_241/lstm_724/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_241_lstm_724_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_724_tensorarrayunstack_tensorlistfromtensor_0)sequential_241_lstm_724_while_placeholderXsequential_241/lstm_724/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_241/lstm_724/while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOpLsequential_241_lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_241/lstm_724/while/lstm_cell_724/MatMulMatMulHsequential_241/lstm_724/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_241/lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_241/lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOpNsequential_241_lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_241/lstm_724/while/lstm_cell_724/MatMul_1MatMul+sequential_241_lstm_724_while_placeholder_2Ksequential_241/lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_241/lstm_724/while/lstm_cell_724/addAddV2<sequential_241/lstm_724/while/lstm_cell_724/MatMul:product:0>sequential_241/lstm_724/while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_241/lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOpMsequential_241_lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_241/lstm_724/while/lstm_cell_724/BiasAddBiasAdd3sequential_241/lstm_724/while/lstm_cell_724/add:z:0Jsequential_241/lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_241/lstm_724/while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_241/lstm_724/while/lstm_cell_724/splitSplitDsequential_241/lstm_724/while/lstm_cell_724/split/split_dim:output:0<sequential_241/lstm_724/while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_241/lstm_724/while/lstm_cell_724/SigmoidSigmoid:sequential_241/lstm_724/while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_241/lstm_724/while/lstm_cell_724/Sigmoid_1Sigmoid:sequential_241/lstm_724/while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_241/lstm_724/while/lstm_cell_724/mulMul9sequential_241/lstm_724/while/lstm_cell_724/Sigmoid_1:y:0+sequential_241_lstm_724_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_241/lstm_724/while/lstm_cell_724/ReluRelu:sequential_241/lstm_724/while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_241/lstm_724/while/lstm_cell_724/mul_1Mul7sequential_241/lstm_724/while/lstm_cell_724/Sigmoid:y:0>sequential_241/lstm_724/while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_241/lstm_724/while/lstm_cell_724/add_1AddV23sequential_241/lstm_724/while/lstm_cell_724/mul:z:05sequential_241/lstm_724/while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_241/lstm_724/while/lstm_cell_724/Sigmoid_2Sigmoid:sequential_241/lstm_724/while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_241/lstm_724/while/lstm_cell_724/Relu_1Relu5sequential_241/lstm_724/while/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_241/lstm_724/while/lstm_cell_724/mul_2Mul9sequential_241/lstm_724/while/lstm_cell_724/Sigmoid_2:y:0@sequential_241/lstm_724/while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_241/lstm_724/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_241_lstm_724_while_placeholder_1)sequential_241_lstm_724_while_placeholder5sequential_241/lstm_724/while/lstm_cell_724/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_241/lstm_724/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_241/lstm_724/while/addAddV2)sequential_241_lstm_724_while_placeholder,sequential_241/lstm_724/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_241/lstm_724/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_241/lstm_724/while/add_1AddV2Hsequential_241_lstm_724_while_sequential_241_lstm_724_while_loop_counter.sequential_241/lstm_724/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_241/lstm_724/while/IdentityIdentity'sequential_241/lstm_724/while/add_1:z:0#^sequential_241/lstm_724/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_724/while/Identity_1IdentityNsequential_241_lstm_724_while_sequential_241_lstm_724_while_maximum_iterations#^sequential_241/lstm_724/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_724/while/Identity_2Identity%sequential_241/lstm_724/while/add:z:0#^sequential_241/lstm_724/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_724/while/Identity_3IdentityRsequential_241/lstm_724/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_241/lstm_724/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_724/while/Identity_4Identity5sequential_241/lstm_724/while/lstm_cell_724/mul_2:z:0#^sequential_241/lstm_724/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_241/lstm_724/while/Identity_5Identity5sequential_241/lstm_724/while/lstm_cell_724/add_1:z:0#^sequential_241/lstm_724/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_241/lstm_724/while/NoOpNoOpC^sequential_241/lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOpB^sequential_241/lstm_724/while/lstm_cell_724/MatMul/ReadVariableOpD^sequential_241/lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_241_lstm_724_while_identity/sequential_241/lstm_724/while/Identity:output:0"]
(sequential_241_lstm_724_while_identity_11sequential_241/lstm_724/while/Identity_1:output:0"]
(sequential_241_lstm_724_while_identity_21sequential_241/lstm_724/while/Identity_2:output:0"]
(sequential_241_lstm_724_while_identity_31sequential_241/lstm_724/while/Identity_3:output:0"]
(sequential_241_lstm_724_while_identity_41sequential_241/lstm_724/while/Identity_4:output:0"]
(sequential_241_lstm_724_while_identity_51sequential_241/lstm_724/while/Identity_5:output:0"?
Ksequential_241_lstm_724_while_lstm_cell_724_biasadd_readvariableop_resourceMsequential_241_lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0"?
Lsequential_241_lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resourceNsequential_241_lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0"?
Jsequential_241_lstm_724_while_lstm_cell_724_matmul_readvariableop_resourceLsequential_241_lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0"?
Esequential_241_lstm_724_while_sequential_241_lstm_724_strided_slice_1Gsequential_241_lstm_724_while_sequential_241_lstm_724_strided_slice_1_0"?
?sequential_241_lstm_724_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_724_tensorarrayunstack_tensorlistfromtensor?sequential_241_lstm_724_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_724_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_241/lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOpBsequential_241/lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp2?
Asequential_241/lstm_724/while/lstm_cell_724/MatMul/ReadVariableOpAsequential_241/lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp2?
Csequential_241/lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOpCsequential_241/lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_4391780
file_prefix/
+savev2_dense_241_kernel_read_readvariableop-
)savev2_dense_241_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_723_lstm_cell_723_kernel_read_readvariableopF
Bsavev2_lstm_723_lstm_cell_723_recurrent_kernel_read_readvariableop:
6savev2_lstm_723_lstm_cell_723_bias_read_readvariableop<
8savev2_lstm_724_lstm_cell_724_kernel_read_readvariableopF
Bsavev2_lstm_724_lstm_cell_724_recurrent_kernel_read_readvariableop:
6savev2_lstm_724_lstm_cell_724_bias_read_readvariableop<
8savev2_lstm_725_lstm_cell_725_kernel_read_readvariableopF
Bsavev2_lstm_725_lstm_cell_725_recurrent_kernel_read_readvariableop:
6savev2_lstm_725_lstm_cell_725_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_241_kernel_m_read_readvariableop4
0savev2_adam_dense_241_bias_m_read_readvariableopC
?savev2_adam_lstm_723_lstm_cell_723_kernel_m_read_readvariableopM
Isavev2_adam_lstm_723_lstm_cell_723_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_723_lstm_cell_723_bias_m_read_readvariableopC
?savev2_adam_lstm_724_lstm_cell_724_kernel_m_read_readvariableopM
Isavev2_adam_lstm_724_lstm_cell_724_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_724_lstm_cell_724_bias_m_read_readvariableopC
?savev2_adam_lstm_725_lstm_cell_725_kernel_m_read_readvariableopM
Isavev2_adam_lstm_725_lstm_cell_725_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_725_lstm_cell_725_bias_m_read_readvariableop6
2savev2_adam_dense_241_kernel_v_read_readvariableop4
0savev2_adam_dense_241_bias_v_read_readvariableopC
?savev2_adam_lstm_723_lstm_cell_723_kernel_v_read_readvariableopM
Isavev2_adam_lstm_723_lstm_cell_723_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_723_lstm_cell_723_bias_v_read_readvariableopC
?savev2_adam_lstm_724_lstm_cell_724_kernel_v_read_readvariableopM
Isavev2_adam_lstm_724_lstm_cell_724_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_724_lstm_cell_724_bias_v_read_readvariableopC
?savev2_adam_lstm_725_lstm_cell_725_kernel_v_read_readvariableopM
Isavev2_adam_lstm_725_lstm_cell_725_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_725_lstm_cell_725_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_241_kernel_read_readvariableop)savev2_dense_241_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_723_lstm_cell_723_kernel_read_readvariableopBsavev2_lstm_723_lstm_cell_723_recurrent_kernel_read_readvariableop6savev2_lstm_723_lstm_cell_723_bias_read_readvariableop8savev2_lstm_724_lstm_cell_724_kernel_read_readvariableopBsavev2_lstm_724_lstm_cell_724_recurrent_kernel_read_readvariableop6savev2_lstm_724_lstm_cell_724_bias_read_readvariableop8savev2_lstm_725_lstm_cell_725_kernel_read_readvariableopBsavev2_lstm_725_lstm_cell_725_recurrent_kernel_read_readvariableop6savev2_lstm_725_lstm_cell_725_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_241_kernel_m_read_readvariableop0savev2_adam_dense_241_bias_m_read_readvariableop?savev2_adam_lstm_723_lstm_cell_723_kernel_m_read_readvariableopIsavev2_adam_lstm_723_lstm_cell_723_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_723_lstm_cell_723_bias_m_read_readvariableop?savev2_adam_lstm_724_lstm_cell_724_kernel_m_read_readvariableopIsavev2_adam_lstm_724_lstm_cell_724_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_724_lstm_cell_724_bias_m_read_readvariableop?savev2_adam_lstm_725_lstm_cell_725_kernel_m_read_readvariableopIsavev2_adam_lstm_725_lstm_cell_725_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_725_lstm_cell_725_bias_m_read_readvariableop2savev2_adam_dense_241_kernel_v_read_readvariableop0savev2_adam_dense_241_bias_v_read_readvariableop?savev2_adam_lstm_723_lstm_cell_723_kernel_v_read_readvariableopIsavev2_adam_lstm_723_lstm_cell_723_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_723_lstm_cell_723_bias_v_read_readvariableop?savev2_adam_lstm_724_lstm_cell_724_kernel_v_read_readvariableopIsavev2_adam_lstm_724_lstm_cell_724_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_724_lstm_cell_724_bias_v_read_readvariableop?savev2_adam_lstm_725_lstm_cell_725_kernel_v_read_readvariableopIsavev2_adam_lstm_725_lstm_cell_725_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_725_lstm_cell_725_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_4391097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_725_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_725_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_725_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_725_matmul_readvariableop_resource:2(F
4while_lstm_cell_725_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_725_biasadd_readvariableop_resource:(??*while/lstm_cell_725/BiasAdd/ReadVariableOp?)while/lstm_cell_725/MatMul/ReadVariableOp?+while/lstm_cell_725/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_725/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_725/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_725/addAddV2$while/lstm_cell_725/MatMul:product:0&while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_725/BiasAddBiasAddwhile/lstm_cell_725/add:z:02while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_725/splitSplit,while/lstm_cell_725/split/split_dim:output:0$while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_725/SigmoidSigmoid"while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_1Sigmoid"while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mulMul!while/lstm_cell_725/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_725/ReluRelu"while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_1Mulwhile/lstm_cell_725/Sigmoid:y:0&while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/add_1AddV2while/lstm_cell_725/mul:z:0while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_2Sigmoid"while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_725/Relu_1Reluwhile/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_2Mul!while/lstm_cell_725/Sigmoid_2:y:0(while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_725/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_725/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_725/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_725/BiasAdd/ReadVariableOp*^while/lstm_cell_725/MatMul/ReadVariableOp,^while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_725_biasadd_readvariableop_resource5while_lstm_cell_725_biasadd_readvariableop_resource_0"n
4while_lstm_cell_725_matmul_1_readvariableop_resource6while_lstm_cell_725_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_725_matmul_readvariableop_resource4while_lstm_cell_725_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_725/BiasAdd/ReadVariableOp*while/lstm_cell_725/BiasAdd/ReadVariableOp2V
)while/lstm_cell_725/MatMul/ReadVariableOp)while/lstm_cell_725/MatMul/ReadVariableOp2Z
+while/lstm_cell_725/MatMul_1/ReadVariableOp+while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4386458

inputs(
lstm_cell_723_4386376:	?(
lstm_cell_723_4386378:	d?$
lstm_cell_723_4386380:	?
identity??%lstm_cell_723/StatefulPartitionedCall?while;
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
%lstm_cell_723/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_723_4386376lstm_cell_723_4386378lstm_cell_723_4386380*
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4386375n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_723_4386376lstm_cell_723_4386378lstm_cell_723_4386380*
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
while_body_4386389*
condR
while_cond_4386388*K
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
NoOpNoOp&^lstm_cell_723/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_723/StatefulPartitionedCall%lstm_cell_723/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4387572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4387572___redundant_placeholder05
1while_while_cond_4387572___redundant_placeholder15
1while_while_cond_4387572___redundant_placeholder25
1while_while_cond_4387572___redundant_placeholder3
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
while_cond_4387422
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4387422___redundant_placeholder05
1while_while_cond_4387422___redundant_placeholder15
1while_while_cond_4387422___redundant_placeholder25
1while_while_cond_4387422___redundant_placeholder3
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

lstm_723_while_body_4388681.
*lstm_723_while_lstm_723_while_loop_counter4
0lstm_723_while_lstm_723_while_maximum_iterations
lstm_723_while_placeholder 
lstm_723_while_placeholder_1 
lstm_723_while_placeholder_2 
lstm_723_while_placeholder_3-
)lstm_723_while_lstm_723_strided_slice_1_0i
elstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0:	?R
?lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?M
>lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0:	?
lstm_723_while_identity
lstm_723_while_identity_1
lstm_723_while_identity_2
lstm_723_while_identity_3
lstm_723_while_identity_4
lstm_723_while_identity_5+
'lstm_723_while_lstm_723_strided_slice_1g
clstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensorN
;lstm_723_while_lstm_cell_723_matmul_readvariableop_resource:	?P
=lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource:	d?K
<lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource:	???3lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp?2lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp?4lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp?
@lstm_723/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_723/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensor_0lstm_723_while_placeholderIlstm_723/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_723/while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp=lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_723/while/lstm_cell_723/MatMulMatMul9lstm_723/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp?lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_723/while/lstm_cell_723/MatMul_1MatMullstm_723_while_placeholder_2<lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_723/while/lstm_cell_723/addAddV2-lstm_723/while/lstm_cell_723/MatMul:product:0/lstm_723/while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp>lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_723/while/lstm_cell_723/BiasAddBiasAdd$lstm_723/while/lstm_cell_723/add:z:0;lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_723/while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_723/while/lstm_cell_723/splitSplit5lstm_723/while/lstm_cell_723/split/split_dim:output:0-lstm_723/while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_723/while/lstm_cell_723/SigmoidSigmoid+lstm_723/while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_723/while/lstm_cell_723/Sigmoid_1Sigmoid+lstm_723/while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_723/while/lstm_cell_723/mulMul*lstm_723/while/lstm_cell_723/Sigmoid_1:y:0lstm_723_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_723/while/lstm_cell_723/ReluRelu+lstm_723/while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_723/while/lstm_cell_723/mul_1Mul(lstm_723/while/lstm_cell_723/Sigmoid:y:0/lstm_723/while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_723/while/lstm_cell_723/add_1AddV2$lstm_723/while/lstm_cell_723/mul:z:0&lstm_723/while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_723/while/lstm_cell_723/Sigmoid_2Sigmoid+lstm_723/while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_723/while/lstm_cell_723/Relu_1Relu&lstm_723/while/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_723/while/lstm_cell_723/mul_2Mul*lstm_723/while/lstm_cell_723/Sigmoid_2:y:01lstm_723/while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_723/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_723_while_placeholder_1lstm_723_while_placeholder&lstm_723/while/lstm_cell_723/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_723/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_723/while/addAddV2lstm_723_while_placeholderlstm_723/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_723/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_723/while/add_1AddV2*lstm_723_while_lstm_723_while_loop_counterlstm_723/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_723/while/IdentityIdentitylstm_723/while/add_1:z:0^lstm_723/while/NoOp*
T0*
_output_shapes
: ?
lstm_723/while/Identity_1Identity0lstm_723_while_lstm_723_while_maximum_iterations^lstm_723/while/NoOp*
T0*
_output_shapes
: t
lstm_723/while/Identity_2Identitylstm_723/while/add:z:0^lstm_723/while/NoOp*
T0*
_output_shapes
: ?
lstm_723/while/Identity_3IdentityClstm_723/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_723/while/NoOp*
T0*
_output_shapes
: ?
lstm_723/while/Identity_4Identity&lstm_723/while/lstm_cell_723/mul_2:z:0^lstm_723/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_723/while/Identity_5Identity&lstm_723/while/lstm_cell_723/add_1:z:0^lstm_723/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_723/while/NoOpNoOp4^lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp3^lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp5^lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_723_while_identity lstm_723/while/Identity:output:0"?
lstm_723_while_identity_1"lstm_723/while/Identity_1:output:0"?
lstm_723_while_identity_2"lstm_723/while/Identity_2:output:0"?
lstm_723_while_identity_3"lstm_723/while/Identity_3:output:0"?
lstm_723_while_identity_4"lstm_723/while/Identity_4:output:0"?
lstm_723_while_identity_5"lstm_723/while/Identity_5:output:0"T
'lstm_723_while_lstm_723_strided_slice_1)lstm_723_while_lstm_723_strided_slice_1_0"~
<lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource>lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0"?
=lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource?lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0"|
;lstm_723_while_lstm_cell_723_matmul_readvariableop_resource=lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0"?
clstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensorelstm_723_while_tensorarrayv2read_tensorlistgetitem_lstm_723_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp3lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp2h
2lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp2lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp2l
4lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp4lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4386388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4386388___redundant_placeholder05
1while_while_cond_4386388___redundant_placeholder15
1while_while_cond_4386388___redundant_placeholder25
1while_while_cond_4386388___redundant_placeholder3
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
*__inference_lstm_724_layer_call_fn_4390103
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4386808|
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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388421

inputs#
lstm_723_4388394:	?#
lstm_723_4388396:	d?
lstm_723_4388398:	?#
lstm_724_4388401:	d?#
lstm_724_4388403:	2?
lstm_724_4388405:	?"
lstm_725_4388408:2("
lstm_725_4388410:
(
lstm_725_4388412:(#
dense_241_4388415:

dense_241_4388417:
identity??!dense_241/StatefulPartitionedCall? lstm_723/StatefulPartitionedCall? lstm_724/StatefulPartitionedCall? lstm_725/StatefulPartitionedCall?
 lstm_723/StatefulPartitionedCallStatefulPartitionedCallinputslstm_723_4388394lstm_723_4388396lstm_723_4388398*
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4388353?
 lstm_724/StatefulPartitionedCallStatefulPartitionedCall)lstm_723/StatefulPartitionedCall:output:0lstm_724_4388401lstm_724_4388403lstm_724_4388405*
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4388188?
 lstm_725/StatefulPartitionedCallStatefulPartitionedCall)lstm_724/StatefulPartitionedCall:output:0lstm_725_4388408lstm_725_4388410lstm_725_4388412*
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4388023?
!dense_241/StatefulPartitionedCallStatefulPartitionedCall)lstm_725/StatefulPartitionedCall:output:0dense_241_4388415dense_241_4388417*
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
F__inference_dense_241_layer_call_and_return_conditional_losses_4387825y
IdentityIdentity*dense_241/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_241/StatefulPartitionedCall!^lstm_723/StatefulPartitionedCall!^lstm_724/StatefulPartitionedCall!^lstm_725/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_241/StatefulPartitionedCall!dense_241/StatefulPartitionedCall2D
 lstm_723/StatefulPartitionedCall lstm_723/StatefulPartitionedCall2D
 lstm_724/StatefulPartitionedCall lstm_724/StatefulPartitionedCall2D
 lstm_725/StatefulPartitionedCall lstm_725/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4391239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4391239___redundant_placeholder05
1while_while_cond_4391239___redundant_placeholder15
1while_while_cond_4391239___redundant_placeholder25
1while_while_cond_4391239___redundant_placeholder3
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
while_cond_4390623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4390623___redundant_placeholder05
1while_while_cond_4390623___redundant_placeholder15
1while_while_cond_4390623___redundant_placeholder25
1while_while_cond_4390623___redundant_placeholder3
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

lstm_724_while_body_4389247.
*lstm_724_while_lstm_724_while_loop_counter4
0lstm_724_while_lstm_724_while_maximum_iterations
lstm_724_while_placeholder 
lstm_724_while_placeholder_1 
lstm_724_while_placeholder_2 
lstm_724_while_placeholder_3-
)lstm_724_while_lstm_724_strided_slice_1_0i
elstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0:	d?R
?lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?M
>lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0:	?
lstm_724_while_identity
lstm_724_while_identity_1
lstm_724_while_identity_2
lstm_724_while_identity_3
lstm_724_while_identity_4
lstm_724_while_identity_5+
'lstm_724_while_lstm_724_strided_slice_1g
clstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensorN
;lstm_724_while_lstm_cell_724_matmul_readvariableop_resource:	d?P
=lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource:	2?K
<lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource:	???3lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp?2lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp?4lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp?
@lstm_724/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_724/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensor_0lstm_724_while_placeholderIlstm_724/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_724/while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp=lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_724/while/lstm_cell_724/MatMulMatMul9lstm_724/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp?lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_724/while/lstm_cell_724/MatMul_1MatMullstm_724_while_placeholder_2<lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_724/while/lstm_cell_724/addAddV2-lstm_724/while/lstm_cell_724/MatMul:product:0/lstm_724/while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp>lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_724/while/lstm_cell_724/BiasAddBiasAdd$lstm_724/while/lstm_cell_724/add:z:0;lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_724/while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_724/while/lstm_cell_724/splitSplit5lstm_724/while/lstm_cell_724/split/split_dim:output:0-lstm_724/while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_724/while/lstm_cell_724/SigmoidSigmoid+lstm_724/while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_724/while/lstm_cell_724/Sigmoid_1Sigmoid+lstm_724/while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_724/while/lstm_cell_724/mulMul*lstm_724/while/lstm_cell_724/Sigmoid_1:y:0lstm_724_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_724/while/lstm_cell_724/ReluRelu+lstm_724/while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_724/while/lstm_cell_724/mul_1Mul(lstm_724/while/lstm_cell_724/Sigmoid:y:0/lstm_724/while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_724/while/lstm_cell_724/add_1AddV2$lstm_724/while/lstm_cell_724/mul:z:0&lstm_724/while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_724/while/lstm_cell_724/Sigmoid_2Sigmoid+lstm_724/while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_724/while/lstm_cell_724/Relu_1Relu&lstm_724/while/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_724/while/lstm_cell_724/mul_2Mul*lstm_724/while/lstm_cell_724/Sigmoid_2:y:01lstm_724/while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_724/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_724_while_placeholder_1lstm_724_while_placeholder&lstm_724/while/lstm_cell_724/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_724/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_724/while/addAddV2lstm_724_while_placeholderlstm_724/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_724/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_724/while/add_1AddV2*lstm_724_while_lstm_724_while_loop_counterlstm_724/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_724/while/IdentityIdentitylstm_724/while/add_1:z:0^lstm_724/while/NoOp*
T0*
_output_shapes
: ?
lstm_724/while/Identity_1Identity0lstm_724_while_lstm_724_while_maximum_iterations^lstm_724/while/NoOp*
T0*
_output_shapes
: t
lstm_724/while/Identity_2Identitylstm_724/while/add:z:0^lstm_724/while/NoOp*
T0*
_output_shapes
: ?
lstm_724/while/Identity_3IdentityClstm_724/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_724/while/NoOp*
T0*
_output_shapes
: ?
lstm_724/while/Identity_4Identity&lstm_724/while/lstm_cell_724/mul_2:z:0^lstm_724/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_724/while/Identity_5Identity&lstm_724/while/lstm_cell_724/add_1:z:0^lstm_724/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_724/while/NoOpNoOp4^lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp3^lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp5^lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_724_while_identity lstm_724/while/Identity:output:0"?
lstm_724_while_identity_1"lstm_724/while/Identity_1:output:0"?
lstm_724_while_identity_2"lstm_724/while/Identity_2:output:0"?
lstm_724_while_identity_3"lstm_724/while/Identity_3:output:0"?
lstm_724_while_identity_4"lstm_724/while/Identity_4:output:0"?
lstm_724_while_identity_5"lstm_724/while/Identity_5:output:0"T
'lstm_724_while_lstm_724_strided_slice_1)lstm_724_while_lstm_724_strided_slice_1_0"~
<lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource>lstm_724_while_lstm_cell_724_biasadd_readvariableop_resource_0"?
=lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource?lstm_724_while_lstm_cell_724_matmul_1_readvariableop_resource_0"|
;lstm_724_while_lstm_cell_724_matmul_readvariableop_resource=lstm_724_while_lstm_cell_724_matmul_readvariableop_resource_0"?
clstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensorelstm_724_while_tensorarrayv2read_tensorlistgetitem_lstm_724_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp3lstm_724/while/lstm_cell_724/BiasAdd/ReadVariableOp2h
2lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp2lstm_724/while/lstm_cell_724/MatMul/ReadVariableOp2l
4lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp4lstm_724/while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4386930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_724_4386954_0:	d?0
while_lstm_cell_724_4386956_0:	2?,
while_lstm_cell_724_4386958_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_724_4386954:	d?.
while_lstm_cell_724_4386956:	2?*
while_lstm_cell_724_4386958:	???+while/lstm_cell_724/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_724/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_724_4386954_0while_lstm_cell_724_4386956_0while_lstm_cell_724_4386958_0*
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4386871?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_724/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_724/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_724/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_724/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_724_4386954while_lstm_cell_724_4386954_0"<
while_lstm_cell_724_4386956while_lstm_cell_724_4386956_0"<
while_lstm_cell_724_4386958while_lstm_cell_724_4386958_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_724/StatefulPartitionedCall+while/lstm_cell_724/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_723_layer_call_fn_4391377

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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4386521o
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4388188

inputs?
,lstm_cell_724_matmul_readvariableop_resource:	d?A
.lstm_cell_724_matmul_1_readvariableop_resource:	2?<
-lstm_cell_724_biasadd_readvariableop_resource:	?
identity??$lstm_cell_724/BiasAdd/ReadVariableOp?#lstm_cell_724/MatMul/ReadVariableOp?%lstm_cell_724/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_724/MatMul/ReadVariableOpReadVariableOp,lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_724/MatMulMatMulstrided_slice_2:output:0+lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_724/MatMul_1MatMulzeros:output:0-lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_724/addAddV2lstm_cell_724/MatMul:product:0 lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_724/BiasAddBiasAddlstm_cell_724/add:z:0,lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_724/splitSplit&lstm_cell_724/split/split_dim:output:0lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_724/SigmoidSigmoidlstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_1Sigmoidlstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_724/mulMullstm_cell_724/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_724/ReluRelulstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_1Mullstm_cell_724/Sigmoid:y:0 lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_724/add_1AddV2lstm_cell_724/mul:z:0lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_2Sigmoidlstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_724/Relu_1Relulstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_2Mullstm_cell_724/Sigmoid_2:y:0"lstm_cell_724/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_724_matmul_readvariableop_resource.lstm_cell_724_matmul_1_readvariableop_resource-lstm_cell_724_biasadd_readvariableop_resource*
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
while_body_4388104*
condR
while_cond_4388103*K
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
NoOpNoOp%^lstm_cell_724/BiasAdd/ReadVariableOp$^lstm_cell_724/MatMul/ReadVariableOp&^lstm_cell_724/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_724/BiasAdd/ReadVariableOp$lstm_cell_724/BiasAdd/ReadVariableOp2J
#lstm_cell_724/MatMul/ReadVariableOp#lstm_cell_724/MatMul/ReadVariableOp2N
%lstm_cell_724/MatMul_1/ReadVariableOp%lstm_cell_724/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4386521

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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4391441

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
F__inference_dense_241_layer_call_and_return_conditional_losses_4391343

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
?#
?
while_body_4386739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_724_4386763_0:	d?0
while_lstm_cell_724_4386765_0:	2?,
while_lstm_cell_724_4386767_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_724_4386763:	d?.
while_lstm_cell_724_4386765:	2?*
while_lstm_cell_724_4386767:	???+while/lstm_cell_724/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_724/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_724_4386763_0while_lstm_cell_724_4386765_0while_lstm_cell_724_4386767_0*
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4386725?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_724/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_724/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_724/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_724/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_724_4386763while_lstm_cell_724_4386763_0"<
while_lstm_cell_724_4386765while_lstm_cell_724_4386765_0"<
while_lstm_cell_724_4386767while_lstm_cell_724_4386767_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_724/StatefulPartitionedCall+while/lstm_cell_724/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4390811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_725_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_725_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_725_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_725_matmul_readvariableop_resource:2(F
4while_lstm_cell_725_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_725_biasadd_readvariableop_resource:(??*while/lstm_cell_725/BiasAdd/ReadVariableOp?)while/lstm_cell_725/MatMul/ReadVariableOp?+while/lstm_cell_725/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_725/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_725/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_725/addAddV2$while/lstm_cell_725/MatMul:product:0&while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_725/BiasAddBiasAddwhile/lstm_cell_725/add:z:02while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_725/splitSplit,while/lstm_cell_725/split/split_dim:output:0$while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_725/SigmoidSigmoid"while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_1Sigmoid"while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mulMul!while/lstm_cell_725/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_725/ReluRelu"while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_1Mulwhile/lstm_cell_725/Sigmoid:y:0&while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/add_1AddV2while/lstm_cell_725/mul:z:0while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_2Sigmoid"while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_725/Relu_1Reluwhile/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_2Mul!while/lstm_cell_725/Sigmoid_2:y:0(while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_725/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_725/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_725/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_725/BiasAdd/ReadVariableOp*^while/lstm_cell_725/MatMul/ReadVariableOp,^while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_725_biasadd_readvariableop_resource5while_lstm_cell_725_biasadd_readvariableop_resource_0"n
4while_lstm_cell_725_matmul_1_readvariableop_resource6while_lstm_cell_725_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_725_matmul_readvariableop_resource4while_lstm_cell_725_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_725/BiasAdd/ReadVariableOp*while/lstm_cell_725/BiasAdd/ReadVariableOp2V
)while/lstm_cell_725/MatMul/ReadVariableOp)while/lstm_cell_725/MatMul/ReadVariableOp2Z
+while/lstm_cell_725/MatMul_1/ReadVariableOp+while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4387938
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4387938___redundant_placeholder05
1while_while_cond_4387938___redundant_placeholder15
1while_while_cond_4387938___redundant_placeholder25
1while_while_cond_4387938___redundant_placeholder3
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
while_cond_4389721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4389721___redundant_placeholder05
1while_while_cond_4389721___redundant_placeholder15
1while_while_cond_4389721___redundant_placeholder25
1while_while_cond_4389721___redundant_placeholder3
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
/__inference_lstm_cell_725_layer_call_fn_4391573

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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4387221o
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
while_cond_4388103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4388103___redundant_placeholder05
1while_while_cond_4388103___redundant_placeholder15
1while_while_cond_4388103___redundant_placeholder25
1while_while_cond_4388103___redundant_placeholder3
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390279
inputs_0?
,lstm_cell_724_matmul_readvariableop_resource:	d?A
.lstm_cell_724_matmul_1_readvariableop_resource:	2?<
-lstm_cell_724_biasadd_readvariableop_resource:	?
identity??$lstm_cell_724/BiasAdd/ReadVariableOp?#lstm_cell_724/MatMul/ReadVariableOp?%lstm_cell_724/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_724/MatMul/ReadVariableOpReadVariableOp,lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_724/MatMulMatMulstrided_slice_2:output:0+lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_724/MatMul_1MatMulzeros:output:0-lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_724/addAddV2lstm_cell_724/MatMul:product:0 lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_724/BiasAddBiasAddlstm_cell_724/add:z:0,lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_724/splitSplit&lstm_cell_724/split/split_dim:output:0lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_724/SigmoidSigmoidlstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_1Sigmoidlstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_724/mulMullstm_cell_724/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_724/ReluRelulstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_1Mullstm_cell_724/Sigmoid:y:0 lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_724/add_1AddV2lstm_cell_724/mul:z:0lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_2Sigmoidlstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_724/Relu_1Relulstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_2Mullstm_cell_724/Sigmoid_2:y:0"lstm_cell_724/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_724_matmul_readvariableop_resource.lstm_cell_724_matmul_1_readvariableop_resource-lstm_cell_724_biasadd_readvariableop_resource*
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
while_body_4390195*
condR
while_cond_4390194*K
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
NoOpNoOp%^lstm_cell_724/BiasAdd/ReadVariableOp$^lstm_cell_724/MatMul/ReadVariableOp&^lstm_cell_724/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_724/BiasAdd/ReadVariableOp$lstm_cell_724/BiasAdd/ReadVariableOp2J
#lstm_cell_724/MatMul/ReadVariableOp#lstm_cell_724/MatMul/ReadVariableOp2N
%lstm_cell_724/MatMul_1/ReadVariableOp%lstm_cell_724/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_725_layer_call_and_return_conditional_losses_4387349

inputs'
lstm_cell_725_4387267:2('
lstm_cell_725_4387269:
(#
lstm_cell_725_4387271:(
identity??%lstm_cell_725/StatefulPartitionedCall?while;
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
%lstm_cell_725/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_725_4387267lstm_cell_725_4387269lstm_cell_725_4387271*
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4387221n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_725_4387267lstm_cell_725_4387269lstm_cell_725_4387271*
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
while_body_4387280*
condR
while_cond_4387279*K
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
NoOpNoOp&^lstm_cell_725/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_725/StatefulPartitionedCall%lstm_cell_725/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4390008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_723_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_723_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_723_matmul_readvariableop_resource:	?G
4while_lstm_cell_723_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_723_biasadd_readvariableop_resource:	???*while/lstm_cell_723/BiasAdd/ReadVariableOp?)while/lstm_cell_723/MatMul/ReadVariableOp?+while/lstm_cell_723/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_723/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_723/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_723/addAddV2$while/lstm_cell_723/MatMul:product:0&while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_723/BiasAddBiasAddwhile/lstm_cell_723/add:z:02while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_723/splitSplit,while/lstm_cell_723/split/split_dim:output:0$while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_723/SigmoidSigmoid"while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_1Sigmoid"while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mulMul!while/lstm_cell_723/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_723/ReluRelu"while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_1Mulwhile/lstm_cell_723/Sigmoid:y:0&while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/add_1AddV2while/lstm_cell_723/mul:z:0while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_2Sigmoid"while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_723/Relu_1Reluwhile/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_2Mul!while/lstm_cell_723/Sigmoid_2:y:0(while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_723/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_723/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_723/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_723/BiasAdd/ReadVariableOp*^while/lstm_cell_723/MatMul/ReadVariableOp,^while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_723_biasadd_readvariableop_resource5while_lstm_cell_723_biasadd_readvariableop_resource_0"n
4while_lstm_cell_723_matmul_1_readvariableop_resource6while_lstm_cell_723_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_723_matmul_readvariableop_resource4while_lstm_cell_723_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_723/BiasAdd/ReadVariableOp*while/lstm_cell_723/BiasAdd/ReadVariableOp2V
)while/lstm_cell_723/MatMul/ReadVariableOp)while/lstm_cell_723/MatMul/ReadVariableOp2Z
+while/lstm_cell_723/MatMul_1/ReadVariableOp+while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_241_layer_call_fn_4388473
lstm_723_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_723_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388421o
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
_user_specified_namelstm_723_input
?
?
*__inference_lstm_723_layer_call_fn_4389487
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4386458|
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
?
?
+__inference_dense_241_layer_call_fn_4391333

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
F__inference_dense_241_layer_call_and_return_conditional_losses_4387825o
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
while_cond_4386738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4386738___redundant_placeholder05
1while_while_cond_4386738___redundant_placeholder15
1while_while_cond_4386738___redundant_placeholder25
1while_while_cond_4386738___redundant_placeholder3
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4390092

inputs?
,lstm_cell_723_matmul_readvariableop_resource:	?A
.lstm_cell_723_matmul_1_readvariableop_resource:	d?<
-lstm_cell_723_biasadd_readvariableop_resource:	?
identity??$lstm_cell_723/BiasAdd/ReadVariableOp?#lstm_cell_723/MatMul/ReadVariableOp?%lstm_cell_723/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_723/MatMul/ReadVariableOpReadVariableOp,lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_723/MatMulMatMulstrided_slice_2:output:0+lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_723/MatMul_1MatMulzeros:output:0-lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_723/addAddV2lstm_cell_723/MatMul:product:0 lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_723/BiasAddBiasAddlstm_cell_723/add:z:0,lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_723/splitSplit&lstm_cell_723/split/split_dim:output:0lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_723/SigmoidSigmoidlstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_1Sigmoidlstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_723/mulMullstm_cell_723/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_723/ReluRelulstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_1Mullstm_cell_723/Sigmoid:y:0 lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_723/add_1AddV2lstm_cell_723/mul:z:0lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_2Sigmoidlstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_723/Relu_1Relulstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_2Mullstm_cell_723/Sigmoid_2:y:0"lstm_cell_723/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_723_matmul_readvariableop_resource.lstm_cell_723_matmul_1_readvariableop_resource-lstm_cell_723_biasadd_readvariableop_resource*
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
while_body_4390008*
condR
while_cond_4390007*K
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
NoOpNoOp%^lstm_cell_723/BiasAdd/ReadVariableOp$^lstm_cell_723/MatMul/ReadVariableOp&^lstm_cell_723/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_723/BiasAdd/ReadVariableOp$lstm_cell_723/BiasAdd/ReadVariableOp2J
#lstm_cell_723/MatMul/ReadVariableOp#lstm_cell_723/MatMul/ReadVariableOp2N
%lstm_cell_723/MatMul_1/ReadVariableOp%lstm_cell_723/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388533
lstm_723_input#
lstm_723_4388506:	?#
lstm_723_4388508:	d?
lstm_723_4388510:	?#
lstm_724_4388513:	d?#
lstm_724_4388515:	2?
lstm_724_4388517:	?"
lstm_725_4388520:2("
lstm_725_4388522:
(
lstm_725_4388524:(#
dense_241_4388527:

dense_241_4388529:
identity??!dense_241/StatefulPartitionedCall? lstm_723/StatefulPartitionedCall? lstm_724/StatefulPartitionedCall? lstm_725/StatefulPartitionedCall?
 lstm_723/StatefulPartitionedCallStatefulPartitionedCalllstm_723_inputlstm_723_4388506lstm_723_4388508lstm_723_4388510*
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4388353?
 lstm_724/StatefulPartitionedCallStatefulPartitionedCall)lstm_723/StatefulPartitionedCall:output:0lstm_724_4388513lstm_724_4388515lstm_724_4388517*
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4388188?
 lstm_725/StatefulPartitionedCallStatefulPartitionedCall)lstm_724/StatefulPartitionedCall:output:0lstm_725_4388520lstm_725_4388522lstm_725_4388524*
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4388023?
!dense_241/StatefulPartitionedCallStatefulPartitionedCall)lstm_725/StatefulPartitionedCall:output:0dense_241_4388527dense_241_4388529*
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
F__inference_dense_241_layer_call_and_return_conditional_losses_4387825y
IdentityIdentity*dense_241/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_241/StatefulPartitionedCall!^lstm_723/StatefulPartitionedCall!^lstm_724/StatefulPartitionedCall!^lstm_725/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_241/StatefulPartitionedCall!dense_241/StatefulPartitionedCall2D
 lstm_723/StatefulPartitionedCall lstm_723/StatefulPartitionedCall2D
 lstm_724/StatefulPartitionedCall lstm_724/StatefulPartitionedCall2D
 lstm_725/StatefulPartitionedCall lstm_725/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_723_input
?
?
*sequential_241_lstm_724_while_cond_4386078L
Hsequential_241_lstm_724_while_sequential_241_lstm_724_while_loop_counterR
Nsequential_241_lstm_724_while_sequential_241_lstm_724_while_maximum_iterations-
)sequential_241_lstm_724_while_placeholder/
+sequential_241_lstm_724_while_placeholder_1/
+sequential_241_lstm_724_while_placeholder_2/
+sequential_241_lstm_724_while_placeholder_3N
Jsequential_241_lstm_724_while_less_sequential_241_lstm_724_strided_slice_1e
asequential_241_lstm_724_while_sequential_241_lstm_724_while_cond_4386078___redundant_placeholder0e
asequential_241_lstm_724_while_sequential_241_lstm_724_while_cond_4386078___redundant_placeholder1e
asequential_241_lstm_724_while_sequential_241_lstm_724_while_cond_4386078___redundant_placeholder2e
asequential_241_lstm_724_while_sequential_241_lstm_724_while_cond_4386078___redundant_placeholder3*
&sequential_241_lstm_724_while_identity
?
"sequential_241/lstm_724/while/LessLess)sequential_241_lstm_724_while_placeholderJsequential_241_lstm_724_while_less_sequential_241_lstm_724_strided_slice_1*
T0*
_output_shapes
: {
&sequential_241/lstm_724/while/IdentityIdentity&sequential_241/lstm_724/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_241_lstm_724_while_identity/sequential_241/lstm_724/while/Identity:output:0*(
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4387507

inputs?
,lstm_cell_723_matmul_readvariableop_resource:	?A
.lstm_cell_723_matmul_1_readvariableop_resource:	d?<
-lstm_cell_723_biasadd_readvariableop_resource:	?
identity??$lstm_cell_723/BiasAdd/ReadVariableOp?#lstm_cell_723/MatMul/ReadVariableOp?%lstm_cell_723/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_723/MatMul/ReadVariableOpReadVariableOp,lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_723/MatMulMatMulstrided_slice_2:output:0+lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_723/MatMul_1MatMulzeros:output:0-lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_723/addAddV2lstm_cell_723/MatMul:product:0 lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_723/BiasAddBiasAddlstm_cell_723/add:z:0,lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_723/splitSplit&lstm_cell_723/split/split_dim:output:0lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_723/SigmoidSigmoidlstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_1Sigmoidlstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_723/mulMullstm_cell_723/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_723/ReluRelulstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_1Mullstm_cell_723/Sigmoid:y:0 lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_723/add_1AddV2lstm_cell_723/mul:z:0lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_2Sigmoidlstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_723/Relu_1Relulstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_2Mullstm_cell_723/Sigmoid_2:y:0"lstm_cell_723/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_723_matmul_readvariableop_resource.lstm_cell_723_matmul_1_readvariableop_resource-lstm_cell_723_biasadd_readvariableop_resource*
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
while_body_4387423*
condR
while_cond_4387422*K
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
NoOpNoOp%^lstm_cell_723/BiasAdd/ReadVariableOp$^lstm_cell_723/MatMul/ReadVariableOp&^lstm_cell_723/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_723/BiasAdd/ReadVariableOp$lstm_cell_723/BiasAdd/ReadVariableOp2J
#lstm_cell_723/MatMul/ReadVariableOp#lstm_cell_723/MatMul/ReadVariableOp2N
%lstm_cell_723/MatMul_1/ReadVariableOp%lstm_cell_723/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_724_layer_call_and_return_conditional_losses_4386999

inputs(
lstm_cell_724_4386917:	d?(
lstm_cell_724_4386919:	2?$
lstm_cell_724_4386921:	?
identity??%lstm_cell_724/StatefulPartitionedCall?while;
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
%lstm_cell_724/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_724_4386917lstm_cell_724_4386919lstm_cell_724_4386921*
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4386871n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_724_4386917lstm_cell_724_4386919lstm_cell_724_4386921*
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
while_body_4386930*
condR
while_cond_4386929*K
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
NoOpNoOp&^lstm_cell_724/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_724/StatefulPartitionedCall%lstm_cell_724/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
0__inference_sequential_241_layer_call_fn_4388622

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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388421o
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
while_cond_4391096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4391096___redundant_placeholder05
1while_while_cond_4391096___redundant_placeholder15
1while_while_cond_4391096___redundant_placeholder25
1while_while_cond_4391096___redundant_placeholder3
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4388023

inputs>
,lstm_cell_725_matmul_readvariableop_resource:2(@
.lstm_cell_725_matmul_1_readvariableop_resource:
(;
-lstm_cell_725_biasadd_readvariableop_resource:(
identity??$lstm_cell_725/BiasAdd/ReadVariableOp?#lstm_cell_725/MatMul/ReadVariableOp?%lstm_cell_725/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_725/MatMul/ReadVariableOpReadVariableOp,lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_725/MatMulMatMulstrided_slice_2:output:0+lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_725/MatMul_1MatMulzeros:output:0-lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_725/addAddV2lstm_cell_725/MatMul:product:0 lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_725/BiasAddBiasAddlstm_cell_725/add:z:0,lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_725/splitSplit&lstm_cell_725/split/split_dim:output:0lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_725/SigmoidSigmoidlstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_1Sigmoidlstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_725/mulMullstm_cell_725/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_725/ReluRelulstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_1Mullstm_cell_725/Sigmoid:y:0 lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_725/add_1AddV2lstm_cell_725/mul:z:0lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_2Sigmoidlstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_725/Relu_1Relulstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_2Mullstm_cell_725/Sigmoid_2:y:0"lstm_cell_725/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_725_matmul_readvariableop_resource.lstm_cell_725_matmul_1_readvariableop_resource-lstm_cell_725_biasadd_readvariableop_resource*
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
while_body_4387939*
condR
while_cond_4387938*K
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
NoOpNoOp%^lstm_cell_725/BiasAdd/ReadVariableOp$^lstm_cell_725/MatMul/ReadVariableOp&^lstm_cell_725/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_725/BiasAdd/ReadVariableOp$lstm_cell_725/BiasAdd/ReadVariableOp2J
#lstm_cell_725/MatMul/ReadVariableOp#lstm_cell_725/MatMul/ReadVariableOp2N
%lstm_cell_725/MatMul_1/ReadVariableOp%lstm_cell_725/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391181

inputs>
,lstm_cell_725_matmul_readvariableop_resource:2(@
.lstm_cell_725_matmul_1_readvariableop_resource:
(;
-lstm_cell_725_biasadd_readvariableop_resource:(
identity??$lstm_cell_725/BiasAdd/ReadVariableOp?#lstm_cell_725/MatMul/ReadVariableOp?%lstm_cell_725/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_725/MatMul/ReadVariableOpReadVariableOp,lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_725/MatMulMatMulstrided_slice_2:output:0+lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_725/MatMul_1MatMulzeros:output:0-lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_725/addAddV2lstm_cell_725/MatMul:product:0 lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_725/BiasAddBiasAddlstm_cell_725/add:z:0,lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_725/splitSplit&lstm_cell_725/split/split_dim:output:0lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_725/SigmoidSigmoidlstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_1Sigmoidlstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_725/mulMullstm_cell_725/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_725/ReluRelulstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_1Mullstm_cell_725/Sigmoid:y:0 lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_725/add_1AddV2lstm_cell_725/mul:z:0lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_2Sigmoidlstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_725/Relu_1Relulstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_2Mullstm_cell_725/Sigmoid_2:y:0"lstm_cell_725/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_725_matmul_readvariableop_resource.lstm_cell_725_matmul_1_readvariableop_resource-lstm_cell_725_biasadd_readvariableop_resource*
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
while_body_4391097*
condR
while_cond_4391096*K
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
NoOpNoOp%^lstm_cell_725/BiasAdd/ReadVariableOp$^lstm_cell_725/MatMul/ReadVariableOp&^lstm_cell_725/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_725/BiasAdd/ReadVariableOp$lstm_cell_725/BiasAdd/ReadVariableOp2J
#lstm_cell_725/MatMul/ReadVariableOp#lstm_cell_725/MatMul/ReadVariableOp2N
%lstm_cell_725/MatMul_1/ReadVariableOp%lstm_cell_725/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_4391910
file_prefix3
!assignvariableop_dense_241_kernel:
/
!assignvariableop_1_dense_241_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_723_lstm_cell_723_kernel:	?M
:assignvariableop_8_lstm_723_lstm_cell_723_recurrent_kernel:	d?=
.assignvariableop_9_lstm_723_lstm_cell_723_bias:	?D
1assignvariableop_10_lstm_724_lstm_cell_724_kernel:	d?N
;assignvariableop_11_lstm_724_lstm_cell_724_recurrent_kernel:	2?>
/assignvariableop_12_lstm_724_lstm_cell_724_bias:	?C
1assignvariableop_13_lstm_725_lstm_cell_725_kernel:2(M
;assignvariableop_14_lstm_725_lstm_cell_725_recurrent_kernel:
(=
/assignvariableop_15_lstm_725_lstm_cell_725_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_241_kernel_m:
7
)assignvariableop_19_adam_dense_241_bias_m:K
8assignvariableop_20_adam_lstm_723_lstm_cell_723_kernel_m:	?U
Bassignvariableop_21_adam_lstm_723_lstm_cell_723_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_723_lstm_cell_723_bias_m:	?K
8assignvariableop_23_adam_lstm_724_lstm_cell_724_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_724_lstm_cell_724_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_724_lstm_cell_724_bias_m:	?J
8assignvariableop_26_adam_lstm_725_lstm_cell_725_kernel_m:2(T
Bassignvariableop_27_adam_lstm_725_lstm_cell_725_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_725_lstm_cell_725_bias_m:(=
+assignvariableop_29_adam_dense_241_kernel_v:
7
)assignvariableop_30_adam_dense_241_bias_v:K
8assignvariableop_31_adam_lstm_723_lstm_cell_723_kernel_v:	?U
Bassignvariableop_32_adam_lstm_723_lstm_cell_723_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_723_lstm_cell_723_bias_v:	?K
8assignvariableop_34_adam_lstm_724_lstm_cell_724_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_724_lstm_cell_724_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_724_lstm_cell_724_bias_v:	?J
8assignvariableop_37_adam_lstm_725_lstm_cell_725_kernel_v:2(T
Bassignvariableop_38_adam_lstm_725_lstm_cell_725_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_725_lstm_cell_725_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_241_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_241_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_723_lstm_cell_723_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_723_lstm_cell_723_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_723_lstm_cell_723_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_724_lstm_cell_724_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_724_lstm_cell_724_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_724_lstm_cell_724_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_725_lstm_cell_725_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_725_lstm_cell_725_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_725_lstm_cell_725_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_241_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_241_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_723_lstm_cell_723_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_723_lstm_cell_723_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_723_lstm_cell_723_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_724_lstm_cell_724_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_724_lstm_cell_724_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_724_lstm_cell_724_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_725_lstm_cell_725_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_725_lstm_cell_725_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_725_lstm_cell_725_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_241_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_241_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_723_lstm_cell_723_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_723_lstm_cell_723_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_723_lstm_cell_723_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_724_lstm_cell_724_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_724_lstm_cell_724_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_724_lstm_cell_724_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_725_lstm_cell_725_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_725_lstm_cell_725_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_725_lstm_cell_725_bias_vIdentity_39:output:0"/device:CPU:0*
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
?J
?
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390565

inputs?
,lstm_cell_724_matmul_readvariableop_resource:	d?A
.lstm_cell_724_matmul_1_readvariableop_resource:	2?<
-lstm_cell_724_biasadd_readvariableop_resource:	?
identity??$lstm_cell_724/BiasAdd/ReadVariableOp?#lstm_cell_724/MatMul/ReadVariableOp?%lstm_cell_724/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_724/MatMul/ReadVariableOpReadVariableOp,lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_724/MatMulMatMulstrided_slice_2:output:0+lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_724/MatMul_1MatMulzeros:output:0-lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_724/addAddV2lstm_cell_724/MatMul:product:0 lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_724/BiasAddBiasAddlstm_cell_724/add:z:0,lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_724/splitSplit&lstm_cell_724/split/split_dim:output:0lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_724/SigmoidSigmoidlstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_1Sigmoidlstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_724/mulMullstm_cell_724/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_724/ReluRelulstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_1Mullstm_cell_724/Sigmoid:y:0 lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_724/add_1AddV2lstm_cell_724/mul:z:0lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_2Sigmoidlstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_724/Relu_1Relulstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_2Mullstm_cell_724/Sigmoid_2:y:0"lstm_cell_724/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_724_matmul_readvariableop_resource.lstm_cell_724_matmul_1_readvariableop_resource-lstm_cell_724_biasadd_readvariableop_resource*
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
while_body_4390481*
condR
while_cond_4390480*K
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
NoOpNoOp%^lstm_cell_724/BiasAdd/ReadVariableOp$^lstm_cell_724/MatMul/ReadVariableOp&^lstm_cell_724/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_724/BiasAdd/ReadVariableOp$lstm_cell_724/BiasAdd/ReadVariableOp2J
#lstm_cell_724/MatMul/ReadVariableOp#lstm_cell_724/MatMul/ReadVariableOp2N
%lstm_cell_724/MatMul_1/ReadVariableOp%lstm_cell_724/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_4386580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_723_4386604_0:	?0
while_lstm_cell_723_4386606_0:	d?,
while_lstm_cell_723_4386608_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_723_4386604:	?.
while_lstm_cell_723_4386606:	d?*
while_lstm_cell_723_4386608:	???+while/lstm_cell_723/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_723/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_723_4386604_0while_lstm_cell_723_4386606_0while_lstm_cell_723_4386608_0*
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4386521?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_723/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_723/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_723/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_723/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_723_4386604while_lstm_cell_723_4386604_0"<
while_lstm_cell_723_4386606while_lstm_cell_723_4386606_0"<
while_lstm_cell_723_4386608while_lstm_cell_723_4386608_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_723/StatefulPartitionedCall+while/lstm_cell_723/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_4390624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_724_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_724_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_724_matmul_readvariableop_resource:	d?G
4while_lstm_cell_724_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_724_biasadd_readvariableop_resource:	???*while/lstm_cell_724/BiasAdd/ReadVariableOp?)while/lstm_cell_724/MatMul/ReadVariableOp?+while/lstm_cell_724/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_724/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_724/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_724/addAddV2$while/lstm_cell_724/MatMul:product:0&while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_724/BiasAddBiasAddwhile/lstm_cell_724/add:z:02while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_724/splitSplit,while/lstm_cell_724/split/split_dim:output:0$while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_724/SigmoidSigmoid"while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_1Sigmoid"while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mulMul!while/lstm_cell_724/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_724/ReluRelu"while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_1Mulwhile/lstm_cell_724/Sigmoid:y:0&while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/add_1AddV2while/lstm_cell_724/mul:z:0while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_2Sigmoid"while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_724/Relu_1Reluwhile/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_2Mul!while/lstm_cell_724/Sigmoid_2:y:0(while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_724/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_724/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_724/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_724/BiasAdd/ReadVariableOp*^while/lstm_cell_724/MatMul/ReadVariableOp,^while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_724_biasadd_readvariableop_resource5while_lstm_cell_724_biasadd_readvariableop_resource_0"n
4while_lstm_cell_724_matmul_1_readvariableop_resource6while_lstm_cell_724_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_724_matmul_readvariableop_resource4while_lstm_cell_724_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_724/BiasAdd/ReadVariableOp*while/lstm_cell_724/BiasAdd/ReadVariableOp2V
)while/lstm_cell_724/MatMul/ReadVariableOp)while/lstm_cell_724/MatMul/ReadVariableOp2Z
+while/lstm_cell_724/MatMul_1/ReadVariableOp+while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_724_layer_call_fn_4391475

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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4386871o
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
?C
?

lstm_725_while_body_4389386.
*lstm_725_while_lstm_725_while_loop_counter4
0lstm_725_while_lstm_725_while_maximum_iterations
lstm_725_while_placeholder 
lstm_725_while_placeholder_1 
lstm_725_while_placeholder_2 
lstm_725_while_placeholder_3-
)lstm_725_while_lstm_725_strided_slice_1_0i
elstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0:2(Q
?lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0:
(L
>lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0:(
lstm_725_while_identity
lstm_725_while_identity_1
lstm_725_while_identity_2
lstm_725_while_identity_3
lstm_725_while_identity_4
lstm_725_while_identity_5+
'lstm_725_while_lstm_725_strided_slice_1g
clstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensorM
;lstm_725_while_lstm_cell_725_matmul_readvariableop_resource:2(O
=lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource:
(J
<lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource:(??3lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp?2lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp?4lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp?
@lstm_725/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_725/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensor_0lstm_725_while_placeholderIlstm_725/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_725/while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp=lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_725/while/lstm_cell_725/MatMulMatMul9lstm_725/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp?lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_725/while/lstm_cell_725/MatMul_1MatMullstm_725_while_placeholder_2<lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_725/while/lstm_cell_725/addAddV2-lstm_725/while/lstm_cell_725/MatMul:product:0/lstm_725/while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp>lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_725/while/lstm_cell_725/BiasAddBiasAdd$lstm_725/while/lstm_cell_725/add:z:0;lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_725/while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_725/while/lstm_cell_725/splitSplit5lstm_725/while/lstm_cell_725/split/split_dim:output:0-lstm_725/while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_725/while/lstm_cell_725/SigmoidSigmoid+lstm_725/while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_725/while/lstm_cell_725/Sigmoid_1Sigmoid+lstm_725/while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_725/while/lstm_cell_725/mulMul*lstm_725/while/lstm_cell_725/Sigmoid_1:y:0lstm_725_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_725/while/lstm_cell_725/ReluRelu+lstm_725/while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_725/while/lstm_cell_725/mul_1Mul(lstm_725/while/lstm_cell_725/Sigmoid:y:0/lstm_725/while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_725/while/lstm_cell_725/add_1AddV2$lstm_725/while/lstm_cell_725/mul:z:0&lstm_725/while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_725/while/lstm_cell_725/Sigmoid_2Sigmoid+lstm_725/while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_725/while/lstm_cell_725/Relu_1Relu&lstm_725/while/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_725/while/lstm_cell_725/mul_2Mul*lstm_725/while/lstm_cell_725/Sigmoid_2:y:01lstm_725/while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_725/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_725_while_placeholder_1lstm_725_while_placeholder&lstm_725/while/lstm_cell_725/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_725/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_725/while/addAddV2lstm_725_while_placeholderlstm_725/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_725/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_725/while/add_1AddV2*lstm_725_while_lstm_725_while_loop_counterlstm_725/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_725/while/IdentityIdentitylstm_725/while/add_1:z:0^lstm_725/while/NoOp*
T0*
_output_shapes
: ?
lstm_725/while/Identity_1Identity0lstm_725_while_lstm_725_while_maximum_iterations^lstm_725/while/NoOp*
T0*
_output_shapes
: t
lstm_725/while/Identity_2Identitylstm_725/while/add:z:0^lstm_725/while/NoOp*
T0*
_output_shapes
: ?
lstm_725/while/Identity_3IdentityClstm_725/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_725/while/NoOp*
T0*
_output_shapes
: ?
lstm_725/while/Identity_4Identity&lstm_725/while/lstm_cell_725/mul_2:z:0^lstm_725/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_725/while/Identity_5Identity&lstm_725/while/lstm_cell_725/add_1:z:0^lstm_725/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_725/while/NoOpNoOp4^lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp3^lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp5^lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_725_while_identity lstm_725/while/Identity:output:0"?
lstm_725_while_identity_1"lstm_725/while/Identity_1:output:0"?
lstm_725_while_identity_2"lstm_725/while/Identity_2:output:0"?
lstm_725_while_identity_3"lstm_725/while/Identity_3:output:0"?
lstm_725_while_identity_4"lstm_725/while/Identity_4:output:0"?
lstm_725_while_identity_5"lstm_725/while/Identity_5:output:0"T
'lstm_725_while_lstm_725_strided_slice_1)lstm_725_while_lstm_725_strided_slice_1_0"~
<lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource>lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0"?
=lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource?lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0"|
;lstm_725_while_lstm_cell_725_matmul_readvariableop_resource=lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0"?
clstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensorelstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp3lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp2h
2lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp2lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp2l
4lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp4lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4389476

inputsH
5lstm_723_lstm_cell_723_matmul_readvariableop_resource:	?J
7lstm_723_lstm_cell_723_matmul_1_readvariableop_resource:	d?E
6lstm_723_lstm_cell_723_biasadd_readvariableop_resource:	?H
5lstm_724_lstm_cell_724_matmul_readvariableop_resource:	d?J
7lstm_724_lstm_cell_724_matmul_1_readvariableop_resource:	2?E
6lstm_724_lstm_cell_724_biasadd_readvariableop_resource:	?G
5lstm_725_lstm_cell_725_matmul_readvariableop_resource:2(I
7lstm_725_lstm_cell_725_matmul_1_readvariableop_resource:
(D
6lstm_725_lstm_cell_725_biasadd_readvariableop_resource:(:
(dense_241_matmul_readvariableop_resource:
7
)dense_241_biasadd_readvariableop_resource:
identity?? dense_241/BiasAdd/ReadVariableOp?dense_241/MatMul/ReadVariableOp?-lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp?,lstm_723/lstm_cell_723/MatMul/ReadVariableOp?.lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp?lstm_723/while?-lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp?,lstm_724/lstm_cell_724/MatMul/ReadVariableOp?.lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp?lstm_724/while?-lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp?,lstm_725/lstm_cell_725/MatMul/ReadVariableOp?.lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp?lstm_725/whileD
lstm_723/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_723/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_723/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_723/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_723/strided_sliceStridedSlicelstm_723/Shape:output:0%lstm_723/strided_slice/stack:output:0'lstm_723/strided_slice/stack_1:output:0'lstm_723/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_723/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_723/zeros/packedPacklstm_723/strided_slice:output:0 lstm_723/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_723/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_723/zerosFilllstm_723/zeros/packed:output:0lstm_723/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_723/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_723/zeros_1/packedPacklstm_723/strided_slice:output:0"lstm_723/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_723/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_723/zeros_1Fill lstm_723/zeros_1/packed:output:0lstm_723/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_723/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_723/transpose	Transposeinputs lstm_723/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_723/Shape_1Shapelstm_723/transpose:y:0*
T0*
_output_shapes
:h
lstm_723/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_723/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_723/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_723/strided_slice_1StridedSlicelstm_723/Shape_1:output:0'lstm_723/strided_slice_1/stack:output:0)lstm_723/strided_slice_1/stack_1:output:0)lstm_723/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_723/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_723/TensorArrayV2TensorListReserve-lstm_723/TensorArrayV2/element_shape:output:0!lstm_723/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_723/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_723/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_723/transpose:y:0Glstm_723/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_723/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_723/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_723/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_723/strided_slice_2StridedSlicelstm_723/transpose:y:0'lstm_723/strided_slice_2/stack:output:0)lstm_723/strided_slice_2/stack_1:output:0)lstm_723/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_723/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp5lstm_723_lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_723/lstm_cell_723/MatMulMatMul!lstm_723/strided_slice_2:output:04lstm_723/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_723/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp7lstm_723_lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_723/lstm_cell_723/MatMul_1MatMullstm_723/zeros:output:06lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_723/lstm_cell_723/addAddV2'lstm_723/lstm_cell_723/MatMul:product:0)lstm_723/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_723/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp6lstm_723_lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_723/lstm_cell_723/BiasAddBiasAddlstm_723/lstm_cell_723/add:z:05lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_723/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_723/lstm_cell_723/splitSplit/lstm_723/lstm_cell_723/split/split_dim:output:0'lstm_723/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_723/lstm_cell_723/SigmoidSigmoid%lstm_723/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_723/lstm_cell_723/Sigmoid_1Sigmoid%lstm_723/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_723/lstm_cell_723/mulMul$lstm_723/lstm_cell_723/Sigmoid_1:y:0lstm_723/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_723/lstm_cell_723/ReluRelu%lstm_723/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_723/lstm_cell_723/mul_1Mul"lstm_723/lstm_cell_723/Sigmoid:y:0)lstm_723/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_723/lstm_cell_723/add_1AddV2lstm_723/lstm_cell_723/mul:z:0 lstm_723/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_723/lstm_cell_723/Sigmoid_2Sigmoid%lstm_723/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_723/lstm_cell_723/Relu_1Relu lstm_723/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_723/lstm_cell_723/mul_2Mul$lstm_723/lstm_cell_723/Sigmoid_2:y:0+lstm_723/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_723/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_723/TensorArrayV2_1TensorListReserve/lstm_723/TensorArrayV2_1/element_shape:output:0!lstm_723/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_723/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_723/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_723/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_723/whileWhile$lstm_723/while/loop_counter:output:0*lstm_723/while/maximum_iterations:output:0lstm_723/time:output:0!lstm_723/TensorArrayV2_1:handle:0lstm_723/zeros:output:0lstm_723/zeros_1:output:0!lstm_723/strided_slice_1:output:0@lstm_723/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_723_lstm_cell_723_matmul_readvariableop_resource7lstm_723_lstm_cell_723_matmul_1_readvariableop_resource6lstm_723_lstm_cell_723_biasadd_readvariableop_resource*
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
lstm_723_while_body_4389108*'
condR
lstm_723_while_cond_4389107*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_723/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_723/TensorArrayV2Stack/TensorListStackTensorListStacklstm_723/while:output:3Blstm_723/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_723/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_723/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_723/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_723/strided_slice_3StridedSlice4lstm_723/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_723/strided_slice_3/stack:output:0)lstm_723/strided_slice_3/stack_1:output:0)lstm_723/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_723/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_723/transpose_1	Transpose4lstm_723/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_723/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_723/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_724/ShapeShapelstm_723/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_724/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_724/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_724/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_724/strided_sliceStridedSlicelstm_724/Shape:output:0%lstm_724/strided_slice/stack:output:0'lstm_724/strided_slice/stack_1:output:0'lstm_724/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_724/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_724/zeros/packedPacklstm_724/strided_slice:output:0 lstm_724/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_724/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_724/zerosFilllstm_724/zeros/packed:output:0lstm_724/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_724/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_724/zeros_1/packedPacklstm_724/strided_slice:output:0"lstm_724/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_724/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_724/zeros_1Fill lstm_724/zeros_1/packed:output:0lstm_724/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_724/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_724/transpose	Transposelstm_723/transpose_1:y:0 lstm_724/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_724/Shape_1Shapelstm_724/transpose:y:0*
T0*
_output_shapes
:h
lstm_724/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_724/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_724/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_724/strided_slice_1StridedSlicelstm_724/Shape_1:output:0'lstm_724/strided_slice_1/stack:output:0)lstm_724/strided_slice_1/stack_1:output:0)lstm_724/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_724/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_724/TensorArrayV2TensorListReserve-lstm_724/TensorArrayV2/element_shape:output:0!lstm_724/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_724/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_724/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_724/transpose:y:0Glstm_724/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_724/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_724/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_724/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_724/strided_slice_2StridedSlicelstm_724/transpose:y:0'lstm_724/strided_slice_2/stack:output:0)lstm_724/strided_slice_2/stack_1:output:0)lstm_724/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_724/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp5lstm_724_lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_724/lstm_cell_724/MatMulMatMul!lstm_724/strided_slice_2:output:04lstm_724/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_724/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp7lstm_724_lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_724/lstm_cell_724/MatMul_1MatMullstm_724/zeros:output:06lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_724/lstm_cell_724/addAddV2'lstm_724/lstm_cell_724/MatMul:product:0)lstm_724/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_724/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp6lstm_724_lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_724/lstm_cell_724/BiasAddBiasAddlstm_724/lstm_cell_724/add:z:05lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_724/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_724/lstm_cell_724/splitSplit/lstm_724/lstm_cell_724/split/split_dim:output:0'lstm_724/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_724/lstm_cell_724/SigmoidSigmoid%lstm_724/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_724/lstm_cell_724/Sigmoid_1Sigmoid%lstm_724/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_724/lstm_cell_724/mulMul$lstm_724/lstm_cell_724/Sigmoid_1:y:0lstm_724/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_724/lstm_cell_724/ReluRelu%lstm_724/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_724/lstm_cell_724/mul_1Mul"lstm_724/lstm_cell_724/Sigmoid:y:0)lstm_724/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_724/lstm_cell_724/add_1AddV2lstm_724/lstm_cell_724/mul:z:0 lstm_724/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_724/lstm_cell_724/Sigmoid_2Sigmoid%lstm_724/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_724/lstm_cell_724/Relu_1Relu lstm_724/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_724/lstm_cell_724/mul_2Mul$lstm_724/lstm_cell_724/Sigmoid_2:y:0+lstm_724/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_724/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_724/TensorArrayV2_1TensorListReserve/lstm_724/TensorArrayV2_1/element_shape:output:0!lstm_724/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_724/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_724/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_724/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_724/whileWhile$lstm_724/while/loop_counter:output:0*lstm_724/while/maximum_iterations:output:0lstm_724/time:output:0!lstm_724/TensorArrayV2_1:handle:0lstm_724/zeros:output:0lstm_724/zeros_1:output:0!lstm_724/strided_slice_1:output:0@lstm_724/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_724_lstm_cell_724_matmul_readvariableop_resource7lstm_724_lstm_cell_724_matmul_1_readvariableop_resource6lstm_724_lstm_cell_724_biasadd_readvariableop_resource*
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
lstm_724_while_body_4389247*'
condR
lstm_724_while_cond_4389246*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_724/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_724/TensorArrayV2Stack/TensorListStackTensorListStacklstm_724/while:output:3Blstm_724/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_724/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_724/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_724/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_724/strided_slice_3StridedSlice4lstm_724/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_724/strided_slice_3/stack:output:0)lstm_724/strided_slice_3/stack_1:output:0)lstm_724/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_724/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_724/transpose_1	Transpose4lstm_724/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_724/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_724/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_725/ShapeShapelstm_724/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_725/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_725/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_725/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_725/strided_sliceStridedSlicelstm_725/Shape:output:0%lstm_725/strided_slice/stack:output:0'lstm_725/strided_slice/stack_1:output:0'lstm_725/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_725/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_725/zeros/packedPacklstm_725/strided_slice:output:0 lstm_725/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_725/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_725/zerosFilllstm_725/zeros/packed:output:0lstm_725/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_725/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_725/zeros_1/packedPacklstm_725/strided_slice:output:0"lstm_725/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_725/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_725/zeros_1Fill lstm_725/zeros_1/packed:output:0lstm_725/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_725/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_725/transpose	Transposelstm_724/transpose_1:y:0 lstm_725/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_725/Shape_1Shapelstm_725/transpose:y:0*
T0*
_output_shapes
:h
lstm_725/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_725/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_725/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_725/strided_slice_1StridedSlicelstm_725/Shape_1:output:0'lstm_725/strided_slice_1/stack:output:0)lstm_725/strided_slice_1/stack_1:output:0)lstm_725/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_725/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_725/TensorArrayV2TensorListReserve-lstm_725/TensorArrayV2/element_shape:output:0!lstm_725/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_725/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_725/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_725/transpose:y:0Glstm_725/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_725/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_725/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_725/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_725/strided_slice_2StridedSlicelstm_725/transpose:y:0'lstm_725/strided_slice_2/stack:output:0)lstm_725/strided_slice_2/stack_1:output:0)lstm_725/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_725/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp5lstm_725_lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_725/lstm_cell_725/MatMulMatMul!lstm_725/strided_slice_2:output:04lstm_725/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_725/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp7lstm_725_lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_725/lstm_cell_725/MatMul_1MatMullstm_725/zeros:output:06lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_725/lstm_cell_725/addAddV2'lstm_725/lstm_cell_725/MatMul:product:0)lstm_725/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_725/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp6lstm_725_lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_725/lstm_cell_725/BiasAddBiasAddlstm_725/lstm_cell_725/add:z:05lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_725/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_725/lstm_cell_725/splitSplit/lstm_725/lstm_cell_725/split/split_dim:output:0'lstm_725/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_725/lstm_cell_725/SigmoidSigmoid%lstm_725/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_725/lstm_cell_725/Sigmoid_1Sigmoid%lstm_725/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_725/lstm_cell_725/mulMul$lstm_725/lstm_cell_725/Sigmoid_1:y:0lstm_725/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_725/lstm_cell_725/ReluRelu%lstm_725/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_725/lstm_cell_725/mul_1Mul"lstm_725/lstm_cell_725/Sigmoid:y:0)lstm_725/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_725/lstm_cell_725/add_1AddV2lstm_725/lstm_cell_725/mul:z:0 lstm_725/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_725/lstm_cell_725/Sigmoid_2Sigmoid%lstm_725/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_725/lstm_cell_725/Relu_1Relu lstm_725/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_725/lstm_cell_725/mul_2Mul$lstm_725/lstm_cell_725/Sigmoid_2:y:0+lstm_725/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_725/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_725/TensorArrayV2_1TensorListReserve/lstm_725/TensorArrayV2_1/element_shape:output:0!lstm_725/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_725/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_725/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_725/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_725/whileWhile$lstm_725/while/loop_counter:output:0*lstm_725/while/maximum_iterations:output:0lstm_725/time:output:0!lstm_725/TensorArrayV2_1:handle:0lstm_725/zeros:output:0lstm_725/zeros_1:output:0!lstm_725/strided_slice_1:output:0@lstm_725/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_725_lstm_cell_725_matmul_readvariableop_resource7lstm_725_lstm_cell_725_matmul_1_readvariableop_resource6lstm_725_lstm_cell_725_biasadd_readvariableop_resource*
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
lstm_725_while_body_4389386*'
condR
lstm_725_while_cond_4389385*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_725/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_725/TensorArrayV2Stack/TensorListStackTensorListStacklstm_725/while:output:3Blstm_725/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_725/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_725/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_725/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_725/strided_slice_3StridedSlice4lstm_725/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_725/strided_slice_3/stack:output:0)lstm_725/strided_slice_3/stack_1:output:0)lstm_725/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_725/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_725/transpose_1	Transpose4lstm_725/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_725/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_725/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_241/MatMul/ReadVariableOpReadVariableOp(dense_241_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_241/MatMulMatMul!lstm_725/strided_slice_3:output:0'dense_241/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_241/BiasAdd/ReadVariableOpReadVariableOp)dense_241_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_241/BiasAddBiasAdddense_241/MatMul:product:0(dense_241/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_241/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_241/BiasAdd/ReadVariableOp ^dense_241/MatMul/ReadVariableOp.^lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp-^lstm_723/lstm_cell_723/MatMul/ReadVariableOp/^lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp^lstm_723/while.^lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp-^lstm_724/lstm_cell_724/MatMul/ReadVariableOp/^lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp^lstm_724/while.^lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp-^lstm_725/lstm_cell_725/MatMul/ReadVariableOp/^lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp^lstm_725/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_241/BiasAdd/ReadVariableOp dense_241/BiasAdd/ReadVariableOp2B
dense_241/MatMul/ReadVariableOpdense_241/MatMul/ReadVariableOp2^
-lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp-lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp2\
,lstm_723/lstm_cell_723/MatMul/ReadVariableOp,lstm_723/lstm_cell_723/MatMul/ReadVariableOp2`
.lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp.lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp2 
lstm_723/whilelstm_723/while2^
-lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp-lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp2\
,lstm_724/lstm_cell_724/MatMul/ReadVariableOp,lstm_724/lstm_cell_724/MatMul/ReadVariableOp2`
.lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp.lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp2 
lstm_724/whilelstm_724/while2^
-lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp-lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp2\
,lstm_725/lstm_cell_725/MatMul/ReadVariableOp,lstm_725/lstm_cell_725/MatMul/ReadVariableOp2`
.lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp.lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp2 
lstm_725/whilelstm_725/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
K__inference_sequential_241_layer_call_and_return_conditional_losses_4389049

inputsH
5lstm_723_lstm_cell_723_matmul_readvariableop_resource:	?J
7lstm_723_lstm_cell_723_matmul_1_readvariableop_resource:	d?E
6lstm_723_lstm_cell_723_biasadd_readvariableop_resource:	?H
5lstm_724_lstm_cell_724_matmul_readvariableop_resource:	d?J
7lstm_724_lstm_cell_724_matmul_1_readvariableop_resource:	2?E
6lstm_724_lstm_cell_724_biasadd_readvariableop_resource:	?G
5lstm_725_lstm_cell_725_matmul_readvariableop_resource:2(I
7lstm_725_lstm_cell_725_matmul_1_readvariableop_resource:
(D
6lstm_725_lstm_cell_725_biasadd_readvariableop_resource:(:
(dense_241_matmul_readvariableop_resource:
7
)dense_241_biasadd_readvariableop_resource:
identity?? dense_241/BiasAdd/ReadVariableOp?dense_241/MatMul/ReadVariableOp?-lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp?,lstm_723/lstm_cell_723/MatMul/ReadVariableOp?.lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp?lstm_723/while?-lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp?,lstm_724/lstm_cell_724/MatMul/ReadVariableOp?.lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp?lstm_724/while?-lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp?,lstm_725/lstm_cell_725/MatMul/ReadVariableOp?.lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp?lstm_725/whileD
lstm_723/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_723/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_723/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_723/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_723/strided_sliceStridedSlicelstm_723/Shape:output:0%lstm_723/strided_slice/stack:output:0'lstm_723/strided_slice/stack_1:output:0'lstm_723/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_723/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_723/zeros/packedPacklstm_723/strided_slice:output:0 lstm_723/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_723/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_723/zerosFilllstm_723/zeros/packed:output:0lstm_723/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_723/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_723/zeros_1/packedPacklstm_723/strided_slice:output:0"lstm_723/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_723/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_723/zeros_1Fill lstm_723/zeros_1/packed:output:0lstm_723/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_723/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_723/transpose	Transposeinputs lstm_723/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_723/Shape_1Shapelstm_723/transpose:y:0*
T0*
_output_shapes
:h
lstm_723/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_723/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_723/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_723/strided_slice_1StridedSlicelstm_723/Shape_1:output:0'lstm_723/strided_slice_1/stack:output:0)lstm_723/strided_slice_1/stack_1:output:0)lstm_723/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_723/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_723/TensorArrayV2TensorListReserve-lstm_723/TensorArrayV2/element_shape:output:0!lstm_723/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_723/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_723/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_723/transpose:y:0Glstm_723/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_723/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_723/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_723/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_723/strided_slice_2StridedSlicelstm_723/transpose:y:0'lstm_723/strided_slice_2/stack:output:0)lstm_723/strided_slice_2/stack_1:output:0)lstm_723/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_723/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp5lstm_723_lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_723/lstm_cell_723/MatMulMatMul!lstm_723/strided_slice_2:output:04lstm_723/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_723/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp7lstm_723_lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_723/lstm_cell_723/MatMul_1MatMullstm_723/zeros:output:06lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_723/lstm_cell_723/addAddV2'lstm_723/lstm_cell_723/MatMul:product:0)lstm_723/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_723/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp6lstm_723_lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_723/lstm_cell_723/BiasAddBiasAddlstm_723/lstm_cell_723/add:z:05lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_723/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_723/lstm_cell_723/splitSplit/lstm_723/lstm_cell_723/split/split_dim:output:0'lstm_723/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_723/lstm_cell_723/SigmoidSigmoid%lstm_723/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_723/lstm_cell_723/Sigmoid_1Sigmoid%lstm_723/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_723/lstm_cell_723/mulMul$lstm_723/lstm_cell_723/Sigmoid_1:y:0lstm_723/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_723/lstm_cell_723/ReluRelu%lstm_723/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_723/lstm_cell_723/mul_1Mul"lstm_723/lstm_cell_723/Sigmoid:y:0)lstm_723/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_723/lstm_cell_723/add_1AddV2lstm_723/lstm_cell_723/mul:z:0 lstm_723/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_723/lstm_cell_723/Sigmoid_2Sigmoid%lstm_723/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_723/lstm_cell_723/Relu_1Relu lstm_723/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_723/lstm_cell_723/mul_2Mul$lstm_723/lstm_cell_723/Sigmoid_2:y:0+lstm_723/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_723/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_723/TensorArrayV2_1TensorListReserve/lstm_723/TensorArrayV2_1/element_shape:output:0!lstm_723/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_723/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_723/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_723/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_723/whileWhile$lstm_723/while/loop_counter:output:0*lstm_723/while/maximum_iterations:output:0lstm_723/time:output:0!lstm_723/TensorArrayV2_1:handle:0lstm_723/zeros:output:0lstm_723/zeros_1:output:0!lstm_723/strided_slice_1:output:0@lstm_723/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_723_lstm_cell_723_matmul_readvariableop_resource7lstm_723_lstm_cell_723_matmul_1_readvariableop_resource6lstm_723_lstm_cell_723_biasadd_readvariableop_resource*
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
lstm_723_while_body_4388681*'
condR
lstm_723_while_cond_4388680*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_723/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_723/TensorArrayV2Stack/TensorListStackTensorListStacklstm_723/while:output:3Blstm_723/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_723/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_723/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_723/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_723/strided_slice_3StridedSlice4lstm_723/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_723/strided_slice_3/stack:output:0)lstm_723/strided_slice_3/stack_1:output:0)lstm_723/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_723/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_723/transpose_1	Transpose4lstm_723/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_723/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_723/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_724/ShapeShapelstm_723/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_724/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_724/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_724/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_724/strided_sliceStridedSlicelstm_724/Shape:output:0%lstm_724/strided_slice/stack:output:0'lstm_724/strided_slice/stack_1:output:0'lstm_724/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_724/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_724/zeros/packedPacklstm_724/strided_slice:output:0 lstm_724/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_724/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_724/zerosFilllstm_724/zeros/packed:output:0lstm_724/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_724/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_724/zeros_1/packedPacklstm_724/strided_slice:output:0"lstm_724/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_724/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_724/zeros_1Fill lstm_724/zeros_1/packed:output:0lstm_724/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_724/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_724/transpose	Transposelstm_723/transpose_1:y:0 lstm_724/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_724/Shape_1Shapelstm_724/transpose:y:0*
T0*
_output_shapes
:h
lstm_724/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_724/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_724/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_724/strided_slice_1StridedSlicelstm_724/Shape_1:output:0'lstm_724/strided_slice_1/stack:output:0)lstm_724/strided_slice_1/stack_1:output:0)lstm_724/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_724/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_724/TensorArrayV2TensorListReserve-lstm_724/TensorArrayV2/element_shape:output:0!lstm_724/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_724/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_724/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_724/transpose:y:0Glstm_724/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_724/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_724/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_724/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_724/strided_slice_2StridedSlicelstm_724/transpose:y:0'lstm_724/strided_slice_2/stack:output:0)lstm_724/strided_slice_2/stack_1:output:0)lstm_724/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_724/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp5lstm_724_lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_724/lstm_cell_724/MatMulMatMul!lstm_724/strided_slice_2:output:04lstm_724/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_724/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp7lstm_724_lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_724/lstm_cell_724/MatMul_1MatMullstm_724/zeros:output:06lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_724/lstm_cell_724/addAddV2'lstm_724/lstm_cell_724/MatMul:product:0)lstm_724/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_724/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp6lstm_724_lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_724/lstm_cell_724/BiasAddBiasAddlstm_724/lstm_cell_724/add:z:05lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_724/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_724/lstm_cell_724/splitSplit/lstm_724/lstm_cell_724/split/split_dim:output:0'lstm_724/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_724/lstm_cell_724/SigmoidSigmoid%lstm_724/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_724/lstm_cell_724/Sigmoid_1Sigmoid%lstm_724/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_724/lstm_cell_724/mulMul$lstm_724/lstm_cell_724/Sigmoid_1:y:0lstm_724/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_724/lstm_cell_724/ReluRelu%lstm_724/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_724/lstm_cell_724/mul_1Mul"lstm_724/lstm_cell_724/Sigmoid:y:0)lstm_724/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_724/lstm_cell_724/add_1AddV2lstm_724/lstm_cell_724/mul:z:0 lstm_724/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_724/lstm_cell_724/Sigmoid_2Sigmoid%lstm_724/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_724/lstm_cell_724/Relu_1Relu lstm_724/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_724/lstm_cell_724/mul_2Mul$lstm_724/lstm_cell_724/Sigmoid_2:y:0+lstm_724/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_724/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_724/TensorArrayV2_1TensorListReserve/lstm_724/TensorArrayV2_1/element_shape:output:0!lstm_724/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_724/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_724/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_724/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_724/whileWhile$lstm_724/while/loop_counter:output:0*lstm_724/while/maximum_iterations:output:0lstm_724/time:output:0!lstm_724/TensorArrayV2_1:handle:0lstm_724/zeros:output:0lstm_724/zeros_1:output:0!lstm_724/strided_slice_1:output:0@lstm_724/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_724_lstm_cell_724_matmul_readvariableop_resource7lstm_724_lstm_cell_724_matmul_1_readvariableop_resource6lstm_724_lstm_cell_724_biasadd_readvariableop_resource*
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
lstm_724_while_body_4388820*'
condR
lstm_724_while_cond_4388819*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_724/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_724/TensorArrayV2Stack/TensorListStackTensorListStacklstm_724/while:output:3Blstm_724/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_724/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_724/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_724/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_724/strided_slice_3StridedSlice4lstm_724/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_724/strided_slice_3/stack:output:0)lstm_724/strided_slice_3/stack_1:output:0)lstm_724/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_724/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_724/transpose_1	Transpose4lstm_724/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_724/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_724/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_725/ShapeShapelstm_724/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_725/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_725/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_725/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_725/strided_sliceStridedSlicelstm_725/Shape:output:0%lstm_725/strided_slice/stack:output:0'lstm_725/strided_slice/stack_1:output:0'lstm_725/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_725/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_725/zeros/packedPacklstm_725/strided_slice:output:0 lstm_725/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_725/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_725/zerosFilllstm_725/zeros/packed:output:0lstm_725/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_725/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_725/zeros_1/packedPacklstm_725/strided_slice:output:0"lstm_725/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_725/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_725/zeros_1Fill lstm_725/zeros_1/packed:output:0lstm_725/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_725/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_725/transpose	Transposelstm_724/transpose_1:y:0 lstm_725/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_725/Shape_1Shapelstm_725/transpose:y:0*
T0*
_output_shapes
:h
lstm_725/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_725/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_725/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_725/strided_slice_1StridedSlicelstm_725/Shape_1:output:0'lstm_725/strided_slice_1/stack:output:0)lstm_725/strided_slice_1/stack_1:output:0)lstm_725/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_725/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_725/TensorArrayV2TensorListReserve-lstm_725/TensorArrayV2/element_shape:output:0!lstm_725/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_725/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_725/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_725/transpose:y:0Glstm_725/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_725/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_725/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_725/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_725/strided_slice_2StridedSlicelstm_725/transpose:y:0'lstm_725/strided_slice_2/stack:output:0)lstm_725/strided_slice_2/stack_1:output:0)lstm_725/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_725/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp5lstm_725_lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_725/lstm_cell_725/MatMulMatMul!lstm_725/strided_slice_2:output:04lstm_725/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_725/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp7lstm_725_lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_725/lstm_cell_725/MatMul_1MatMullstm_725/zeros:output:06lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_725/lstm_cell_725/addAddV2'lstm_725/lstm_cell_725/MatMul:product:0)lstm_725/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_725/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp6lstm_725_lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_725/lstm_cell_725/BiasAddBiasAddlstm_725/lstm_cell_725/add:z:05lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_725/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_725/lstm_cell_725/splitSplit/lstm_725/lstm_cell_725/split/split_dim:output:0'lstm_725/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_725/lstm_cell_725/SigmoidSigmoid%lstm_725/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_725/lstm_cell_725/Sigmoid_1Sigmoid%lstm_725/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_725/lstm_cell_725/mulMul$lstm_725/lstm_cell_725/Sigmoid_1:y:0lstm_725/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_725/lstm_cell_725/ReluRelu%lstm_725/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_725/lstm_cell_725/mul_1Mul"lstm_725/lstm_cell_725/Sigmoid:y:0)lstm_725/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_725/lstm_cell_725/add_1AddV2lstm_725/lstm_cell_725/mul:z:0 lstm_725/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_725/lstm_cell_725/Sigmoid_2Sigmoid%lstm_725/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_725/lstm_cell_725/Relu_1Relu lstm_725/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_725/lstm_cell_725/mul_2Mul$lstm_725/lstm_cell_725/Sigmoid_2:y:0+lstm_725/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_725/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_725/TensorArrayV2_1TensorListReserve/lstm_725/TensorArrayV2_1/element_shape:output:0!lstm_725/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_725/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_725/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_725/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_725/whileWhile$lstm_725/while/loop_counter:output:0*lstm_725/while/maximum_iterations:output:0lstm_725/time:output:0!lstm_725/TensorArrayV2_1:handle:0lstm_725/zeros:output:0lstm_725/zeros_1:output:0!lstm_725/strided_slice_1:output:0@lstm_725/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_725_lstm_cell_725_matmul_readvariableop_resource7lstm_725_lstm_cell_725_matmul_1_readvariableop_resource6lstm_725_lstm_cell_725_biasadd_readvariableop_resource*
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
lstm_725_while_body_4388959*'
condR
lstm_725_while_cond_4388958*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_725/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_725/TensorArrayV2Stack/TensorListStackTensorListStacklstm_725/while:output:3Blstm_725/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_725/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_725/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_725/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_725/strided_slice_3StridedSlice4lstm_725/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_725/strided_slice_3/stack:output:0)lstm_725/strided_slice_3/stack_1:output:0)lstm_725/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_725/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_725/transpose_1	Transpose4lstm_725/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_725/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_725/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_241/MatMul/ReadVariableOpReadVariableOp(dense_241_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_241/MatMulMatMul!lstm_725/strided_slice_3:output:0'dense_241/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_241/BiasAdd/ReadVariableOpReadVariableOp)dense_241_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_241/BiasAddBiasAdddense_241/MatMul:product:0(dense_241/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_241/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_241/BiasAdd/ReadVariableOp ^dense_241/MatMul/ReadVariableOp.^lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp-^lstm_723/lstm_cell_723/MatMul/ReadVariableOp/^lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp^lstm_723/while.^lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp-^lstm_724/lstm_cell_724/MatMul/ReadVariableOp/^lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp^lstm_724/while.^lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp-^lstm_725/lstm_cell_725/MatMul/ReadVariableOp/^lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp^lstm_725/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_241/BiasAdd/ReadVariableOp dense_241/BiasAdd/ReadVariableOp2B
dense_241/MatMul/ReadVariableOpdense_241/MatMul/ReadVariableOp2^
-lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp-lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp2\
,lstm_723/lstm_cell_723/MatMul/ReadVariableOp,lstm_723/lstm_cell_723/MatMul/ReadVariableOp2`
.lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp.lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp2 
lstm_723/whilelstm_723/while2^
-lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp-lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp2\
,lstm_724/lstm_cell_724/MatMul/ReadVariableOp,lstm_724/lstm_cell_724/MatMul/ReadVariableOp2`
.lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp.lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp2 
lstm_724/whilelstm_724/while2^
-lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp-lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp2\
,lstm_725/lstm_cell_725/MatMul/ReadVariableOp,lstm_725/lstm_cell_725/MatMul/ReadVariableOp2`
.lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp.lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp2 
lstm_725/whilelstm_725/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391324

inputs>
,lstm_cell_725_matmul_readvariableop_resource:2(@
.lstm_cell_725_matmul_1_readvariableop_resource:
(;
-lstm_cell_725_biasadd_readvariableop_resource:(
identity??$lstm_cell_725/BiasAdd/ReadVariableOp?#lstm_cell_725/MatMul/ReadVariableOp?%lstm_cell_725/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_725/MatMul/ReadVariableOpReadVariableOp,lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_725/MatMulMatMulstrided_slice_2:output:0+lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_725/MatMul_1MatMulzeros:output:0-lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_725/addAddV2lstm_cell_725/MatMul:product:0 lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_725/BiasAddBiasAddlstm_cell_725/add:z:0,lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_725/splitSplit&lstm_cell_725/split/split_dim:output:0lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_725/SigmoidSigmoidlstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_1Sigmoidlstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_725/mulMullstm_cell_725/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_725/ReluRelulstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_1Mullstm_cell_725/Sigmoid:y:0 lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_725/add_1AddV2lstm_cell_725/mul:z:0lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_2Sigmoidlstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_725/Relu_1Relulstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_2Mullstm_cell_725/Sigmoid_2:y:0"lstm_cell_725/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_725_matmul_readvariableop_resource.lstm_cell_725_matmul_1_readvariableop_resource-lstm_cell_725_biasadd_readvariableop_resource*
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
while_body_4391240*
condR
while_cond_4391239*K
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
NoOpNoOp%^lstm_cell_725/BiasAdd/ReadVariableOp$^lstm_cell_725/MatMul/ReadVariableOp&^lstm_cell_725/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_725/BiasAdd/ReadVariableOp$lstm_cell_725/BiasAdd/ReadVariableOp2J
#lstm_cell_725/MatMul/ReadVariableOp#lstm_cell_725/MatMul/ReadVariableOp2N
%lstm_cell_725/MatMul_1/ReadVariableOp%lstm_cell_725/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4388104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_724_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_724_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_724_matmul_readvariableop_resource:	d?G
4while_lstm_cell_724_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_724_biasadd_readvariableop_resource:	???*while/lstm_cell_724/BiasAdd/ReadVariableOp?)while/lstm_cell_724/MatMul/ReadVariableOp?+while/lstm_cell_724/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_724/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_724/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_724/addAddV2$while/lstm_cell_724/MatMul:product:0&while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_724/BiasAddBiasAddwhile/lstm_cell_724/add:z:02while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_724/splitSplit,while/lstm_cell_724/split/split_dim:output:0$while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_724/SigmoidSigmoid"while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_1Sigmoid"while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mulMul!while/lstm_cell_724/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_724/ReluRelu"while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_1Mulwhile/lstm_cell_724/Sigmoid:y:0&while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/add_1AddV2while/lstm_cell_724/mul:z:0while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_2Sigmoid"while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_724/Relu_1Reluwhile/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_2Mul!while/lstm_cell_724/Sigmoid_2:y:0(while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_724/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_724/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_724/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_724/BiasAdd/ReadVariableOp*^while/lstm_cell_724/MatMul/ReadVariableOp,^while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_724_biasadd_readvariableop_resource5while_lstm_cell_724_biasadd_readvariableop_resource_0"n
4while_lstm_cell_724_matmul_1_readvariableop_resource6while_lstm_cell_724_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_724_matmul_readvariableop_resource4while_lstm_cell_724_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_724/BiasAdd/ReadVariableOp*while/lstm_cell_724/BiasAdd/ReadVariableOp2V
)while/lstm_cell_724/MatMul/ReadVariableOp)while/lstm_cell_724/MatMul/ReadVariableOp2Z
+while/lstm_cell_724/MatMul_1/ReadVariableOp+while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4390481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_724_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_724_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_724_matmul_readvariableop_resource:	d?G
4while_lstm_cell_724_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_724_biasadd_readvariableop_resource:	???*while/lstm_cell_724/BiasAdd/ReadVariableOp?)while/lstm_cell_724/MatMul/ReadVariableOp?+while/lstm_cell_724/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_724/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_724/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_724/addAddV2$while/lstm_cell_724/MatMul:product:0&while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_724/BiasAddBiasAddwhile/lstm_cell_724/add:z:02while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_724/splitSplit,while/lstm_cell_724/split/split_dim:output:0$while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_724/SigmoidSigmoid"while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_1Sigmoid"while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mulMul!while/lstm_cell_724/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_724/ReluRelu"while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_1Mulwhile/lstm_cell_724/Sigmoid:y:0&while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/add_1AddV2while/lstm_cell_724/mul:z:0while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_2Sigmoid"while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_724/Relu_1Reluwhile/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_2Mul!while/lstm_cell_724/Sigmoid_2:y:0(while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_724/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_724/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_724/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_724/BiasAdd/ReadVariableOp*^while/lstm_cell_724/MatMul/ReadVariableOp,^while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_724_biasadd_readvariableop_resource5while_lstm_cell_724_biasadd_readvariableop_resource_0"n
4while_lstm_cell_724_matmul_1_readvariableop_resource6while_lstm_cell_724_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_724_matmul_readvariableop_resource4while_lstm_cell_724_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_724/BiasAdd/ReadVariableOp*while/lstm_cell_724/BiasAdd/ReadVariableOp2V
)while/lstm_cell_724/MatMul/ReadVariableOp)while/lstm_cell_724/MatMul/ReadVariableOp2Z
+while/lstm_cell_724/MatMul_1/ReadVariableOp+while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391038
inputs_0>
,lstm_cell_725_matmul_readvariableop_resource:2(@
.lstm_cell_725_matmul_1_readvariableop_resource:
(;
-lstm_cell_725_biasadd_readvariableop_resource:(
identity??$lstm_cell_725/BiasAdd/ReadVariableOp?#lstm_cell_725/MatMul/ReadVariableOp?%lstm_cell_725/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_725/MatMul/ReadVariableOpReadVariableOp,lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_725/MatMulMatMulstrided_slice_2:output:0+lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_725/MatMul_1MatMulzeros:output:0-lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_725/addAddV2lstm_cell_725/MatMul:product:0 lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_725/BiasAddBiasAddlstm_cell_725/add:z:0,lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_725/splitSplit&lstm_cell_725/split/split_dim:output:0lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_725/SigmoidSigmoidlstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_1Sigmoidlstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_725/mulMullstm_cell_725/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_725/ReluRelulstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_1Mullstm_cell_725/Sigmoid:y:0 lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_725/add_1AddV2lstm_cell_725/mul:z:0lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_2Sigmoidlstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_725/Relu_1Relulstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_2Mullstm_cell_725/Sigmoid_2:y:0"lstm_cell_725/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_725_matmul_readvariableop_resource.lstm_cell_725_matmul_1_readvariableop_resource-lstm_cell_725_biasadd_readvariableop_resource*
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
while_body_4390954*
condR
while_cond_4390953*K
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
NoOpNoOp%^lstm_cell_725/BiasAdd/ReadVariableOp$^lstm_cell_725/MatMul/ReadVariableOp&^lstm_cell_725/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_725/BiasAdd/ReadVariableOp$lstm_cell_725/BiasAdd/ReadVariableOp2J
#lstm_cell_725/MatMul/ReadVariableOp#lstm_cell_725/MatMul/ReadVariableOp2N
%lstm_cell_725/MatMul_1/ReadVariableOp%lstm_cell_725/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_724_layer_call_fn_4390125

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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4387657s
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
/__inference_lstm_cell_725_layer_call_fn_4391556

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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4387075o
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

?
lstm_725_while_cond_4389385.
*lstm_725_while_lstm_725_while_loop_counter4
0lstm_725_while_lstm_725_while_maximum_iterations
lstm_725_while_placeholder 
lstm_725_while_placeholder_1 
lstm_725_while_placeholder_2 
lstm_725_while_placeholder_30
,lstm_725_while_less_lstm_725_strided_slice_1G
Clstm_725_while_lstm_725_while_cond_4389385___redundant_placeholder0G
Clstm_725_while_lstm_725_while_cond_4389385___redundant_placeholder1G
Clstm_725_while_lstm_725_while_cond_4389385___redundant_placeholder2G
Clstm_725_while_lstm_725_while_cond_4389385___redundant_placeholder3
lstm_725_while_identity
?
lstm_725/while/LessLesslstm_725_while_placeholder,lstm_725_while_less_lstm_725_strided_slice_1*
T0*
_output_shapes
: ]
lstm_725/while/IdentityIdentitylstm_725/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_725_while_identity lstm_725/while/Identity:output:0*(
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
*__inference_lstm_723_layer_call_fn_4389509

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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4387507s
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
while_cond_4390480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4390480___redundant_placeholder05
1while_while_cond_4390480___redundant_placeholder15
1while_while_cond_4390480___redundant_placeholder25
1while_while_cond_4390480___redundant_placeholder3
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
while_cond_4387279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4387279___redundant_placeholder05
1while_while_cond_4387279___redundant_placeholder15
1while_while_cond_4387279___redundant_placeholder25
1while_while_cond_4387279___redundant_placeholder3
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
*__inference_lstm_725_layer_call_fn_4390752

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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4388023o
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4391539

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
??
?
"__inference__wrapped_model_4386308
lstm_723_inputW
Dsequential_241_lstm_723_lstm_cell_723_matmul_readvariableop_resource:	?Y
Fsequential_241_lstm_723_lstm_cell_723_matmul_1_readvariableop_resource:	d?T
Esequential_241_lstm_723_lstm_cell_723_biasadd_readvariableop_resource:	?W
Dsequential_241_lstm_724_lstm_cell_724_matmul_readvariableop_resource:	d?Y
Fsequential_241_lstm_724_lstm_cell_724_matmul_1_readvariableop_resource:	2?T
Esequential_241_lstm_724_lstm_cell_724_biasadd_readvariableop_resource:	?V
Dsequential_241_lstm_725_lstm_cell_725_matmul_readvariableop_resource:2(X
Fsequential_241_lstm_725_lstm_cell_725_matmul_1_readvariableop_resource:
(S
Esequential_241_lstm_725_lstm_cell_725_biasadd_readvariableop_resource:(I
7sequential_241_dense_241_matmul_readvariableop_resource:
F
8sequential_241_dense_241_biasadd_readvariableop_resource:
identity??/sequential_241/dense_241/BiasAdd/ReadVariableOp?.sequential_241/dense_241/MatMul/ReadVariableOp?<sequential_241/lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp?;sequential_241/lstm_723/lstm_cell_723/MatMul/ReadVariableOp?=sequential_241/lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp?sequential_241/lstm_723/while?<sequential_241/lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp?;sequential_241/lstm_724/lstm_cell_724/MatMul/ReadVariableOp?=sequential_241/lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp?sequential_241/lstm_724/while?<sequential_241/lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp?;sequential_241/lstm_725/lstm_cell_725/MatMul/ReadVariableOp?=sequential_241/lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp?sequential_241/lstm_725/while[
sequential_241/lstm_723/ShapeShapelstm_723_input*
T0*
_output_shapes
:u
+sequential_241/lstm_723/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_241/lstm_723/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_241/lstm_723/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_241/lstm_723/strided_sliceStridedSlice&sequential_241/lstm_723/Shape:output:04sequential_241/lstm_723/strided_slice/stack:output:06sequential_241/lstm_723/strided_slice/stack_1:output:06sequential_241/lstm_723/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_241/lstm_723/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_241/lstm_723/zeros/packedPack.sequential_241/lstm_723/strided_slice:output:0/sequential_241/lstm_723/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_241/lstm_723/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_241/lstm_723/zerosFill-sequential_241/lstm_723/zeros/packed:output:0,sequential_241/lstm_723/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_241/lstm_723/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_241/lstm_723/zeros_1/packedPack.sequential_241/lstm_723/strided_slice:output:01sequential_241/lstm_723/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_241/lstm_723/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_241/lstm_723/zeros_1Fill/sequential_241/lstm_723/zeros_1/packed:output:0.sequential_241/lstm_723/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_241/lstm_723/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_241/lstm_723/transpose	Transposelstm_723_input/sequential_241/lstm_723/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_241/lstm_723/Shape_1Shape%sequential_241/lstm_723/transpose:y:0*
T0*
_output_shapes
:w
-sequential_241/lstm_723/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_723/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_241/lstm_723/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_723/strided_slice_1StridedSlice(sequential_241/lstm_723/Shape_1:output:06sequential_241/lstm_723/strided_slice_1/stack:output:08sequential_241/lstm_723/strided_slice_1/stack_1:output:08sequential_241/lstm_723/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_241/lstm_723/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_241/lstm_723/TensorArrayV2TensorListReserve<sequential_241/lstm_723/TensorArrayV2/element_shape:output:00sequential_241/lstm_723/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_241/lstm_723/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_241/lstm_723/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_241/lstm_723/transpose:y:0Vsequential_241/lstm_723/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_241/lstm_723/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_723/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_241/lstm_723/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_723/strided_slice_2StridedSlice%sequential_241/lstm_723/transpose:y:06sequential_241/lstm_723/strided_slice_2/stack:output:08sequential_241/lstm_723/strided_slice_2/stack_1:output:08sequential_241/lstm_723/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_241/lstm_723/lstm_cell_723/MatMul/ReadVariableOpReadVariableOpDsequential_241_lstm_723_lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_241/lstm_723/lstm_cell_723/MatMulMatMul0sequential_241/lstm_723/strided_slice_2:output:0Csequential_241/lstm_723/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_241/lstm_723/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOpFsequential_241_lstm_723_lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_241/lstm_723/lstm_cell_723/MatMul_1MatMul&sequential_241/lstm_723/zeros:output:0Esequential_241/lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_241/lstm_723/lstm_cell_723/addAddV26sequential_241/lstm_723/lstm_cell_723/MatMul:product:08sequential_241/lstm_723/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_241/lstm_723/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOpEsequential_241_lstm_723_lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_241/lstm_723/lstm_cell_723/BiasAddBiasAdd-sequential_241/lstm_723/lstm_cell_723/add:z:0Dsequential_241/lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_241/lstm_723/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_241/lstm_723/lstm_cell_723/splitSplit>sequential_241/lstm_723/lstm_cell_723/split/split_dim:output:06sequential_241/lstm_723/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_241/lstm_723/lstm_cell_723/SigmoidSigmoid4sequential_241/lstm_723/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_241/lstm_723/lstm_cell_723/Sigmoid_1Sigmoid4sequential_241/lstm_723/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_241/lstm_723/lstm_cell_723/mulMul3sequential_241/lstm_723/lstm_cell_723/Sigmoid_1:y:0(sequential_241/lstm_723/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_241/lstm_723/lstm_cell_723/ReluRelu4sequential_241/lstm_723/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_241/lstm_723/lstm_cell_723/mul_1Mul1sequential_241/lstm_723/lstm_cell_723/Sigmoid:y:08sequential_241/lstm_723/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_241/lstm_723/lstm_cell_723/add_1AddV2-sequential_241/lstm_723/lstm_cell_723/mul:z:0/sequential_241/lstm_723/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_241/lstm_723/lstm_cell_723/Sigmoid_2Sigmoid4sequential_241/lstm_723/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_241/lstm_723/lstm_cell_723/Relu_1Relu/sequential_241/lstm_723/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_241/lstm_723/lstm_cell_723/mul_2Mul3sequential_241/lstm_723/lstm_cell_723/Sigmoid_2:y:0:sequential_241/lstm_723/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_241/lstm_723/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_241/lstm_723/TensorArrayV2_1TensorListReserve>sequential_241/lstm_723/TensorArrayV2_1/element_shape:output:00sequential_241/lstm_723/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_241/lstm_723/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_241/lstm_723/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_241/lstm_723/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_241/lstm_723/whileWhile3sequential_241/lstm_723/while/loop_counter:output:09sequential_241/lstm_723/while/maximum_iterations:output:0%sequential_241/lstm_723/time:output:00sequential_241/lstm_723/TensorArrayV2_1:handle:0&sequential_241/lstm_723/zeros:output:0(sequential_241/lstm_723/zeros_1:output:00sequential_241/lstm_723/strided_slice_1:output:0Osequential_241/lstm_723/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_241_lstm_723_lstm_cell_723_matmul_readvariableop_resourceFsequential_241_lstm_723_lstm_cell_723_matmul_1_readvariableop_resourceEsequential_241_lstm_723_lstm_cell_723_biasadd_readvariableop_resource*
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
*sequential_241_lstm_723_while_body_4385940*6
cond.R,
*sequential_241_lstm_723_while_cond_4385939*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_241/lstm_723/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_241/lstm_723/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_241/lstm_723/while:output:3Qsequential_241/lstm_723/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_241/lstm_723/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_241/lstm_723/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_723/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_723/strided_slice_3StridedSliceCsequential_241/lstm_723/TensorArrayV2Stack/TensorListStack:tensor:06sequential_241/lstm_723/strided_slice_3/stack:output:08sequential_241/lstm_723/strided_slice_3/stack_1:output:08sequential_241/lstm_723/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_241/lstm_723/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_241/lstm_723/transpose_1	TransposeCsequential_241/lstm_723/TensorArrayV2Stack/TensorListStack:tensor:01sequential_241/lstm_723/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_241/lstm_723/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_241/lstm_724/ShapeShape'sequential_241/lstm_723/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_241/lstm_724/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_241/lstm_724/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_241/lstm_724/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_241/lstm_724/strided_sliceStridedSlice&sequential_241/lstm_724/Shape:output:04sequential_241/lstm_724/strided_slice/stack:output:06sequential_241/lstm_724/strided_slice/stack_1:output:06sequential_241/lstm_724/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_241/lstm_724/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_241/lstm_724/zeros/packedPack.sequential_241/lstm_724/strided_slice:output:0/sequential_241/lstm_724/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_241/lstm_724/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_241/lstm_724/zerosFill-sequential_241/lstm_724/zeros/packed:output:0,sequential_241/lstm_724/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_241/lstm_724/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_241/lstm_724/zeros_1/packedPack.sequential_241/lstm_724/strided_slice:output:01sequential_241/lstm_724/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_241/lstm_724/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_241/lstm_724/zeros_1Fill/sequential_241/lstm_724/zeros_1/packed:output:0.sequential_241/lstm_724/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_241/lstm_724/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_241/lstm_724/transpose	Transpose'sequential_241/lstm_723/transpose_1:y:0/sequential_241/lstm_724/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_241/lstm_724/Shape_1Shape%sequential_241/lstm_724/transpose:y:0*
T0*
_output_shapes
:w
-sequential_241/lstm_724/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_724/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_241/lstm_724/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_724/strided_slice_1StridedSlice(sequential_241/lstm_724/Shape_1:output:06sequential_241/lstm_724/strided_slice_1/stack:output:08sequential_241/lstm_724/strided_slice_1/stack_1:output:08sequential_241/lstm_724/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_241/lstm_724/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_241/lstm_724/TensorArrayV2TensorListReserve<sequential_241/lstm_724/TensorArrayV2/element_shape:output:00sequential_241/lstm_724/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_241/lstm_724/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_241/lstm_724/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_241/lstm_724/transpose:y:0Vsequential_241/lstm_724/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_241/lstm_724/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_724/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_241/lstm_724/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_724/strided_slice_2StridedSlice%sequential_241/lstm_724/transpose:y:06sequential_241/lstm_724/strided_slice_2/stack:output:08sequential_241/lstm_724/strided_slice_2/stack_1:output:08sequential_241/lstm_724/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_241/lstm_724/lstm_cell_724/MatMul/ReadVariableOpReadVariableOpDsequential_241_lstm_724_lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_241/lstm_724/lstm_cell_724/MatMulMatMul0sequential_241/lstm_724/strided_slice_2:output:0Csequential_241/lstm_724/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_241/lstm_724/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOpFsequential_241_lstm_724_lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_241/lstm_724/lstm_cell_724/MatMul_1MatMul&sequential_241/lstm_724/zeros:output:0Esequential_241/lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_241/lstm_724/lstm_cell_724/addAddV26sequential_241/lstm_724/lstm_cell_724/MatMul:product:08sequential_241/lstm_724/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_241/lstm_724/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOpEsequential_241_lstm_724_lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_241/lstm_724/lstm_cell_724/BiasAddBiasAdd-sequential_241/lstm_724/lstm_cell_724/add:z:0Dsequential_241/lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_241/lstm_724/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_241/lstm_724/lstm_cell_724/splitSplit>sequential_241/lstm_724/lstm_cell_724/split/split_dim:output:06sequential_241/lstm_724/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_241/lstm_724/lstm_cell_724/SigmoidSigmoid4sequential_241/lstm_724/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_241/lstm_724/lstm_cell_724/Sigmoid_1Sigmoid4sequential_241/lstm_724/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_241/lstm_724/lstm_cell_724/mulMul3sequential_241/lstm_724/lstm_cell_724/Sigmoid_1:y:0(sequential_241/lstm_724/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_241/lstm_724/lstm_cell_724/ReluRelu4sequential_241/lstm_724/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_241/lstm_724/lstm_cell_724/mul_1Mul1sequential_241/lstm_724/lstm_cell_724/Sigmoid:y:08sequential_241/lstm_724/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_241/lstm_724/lstm_cell_724/add_1AddV2-sequential_241/lstm_724/lstm_cell_724/mul:z:0/sequential_241/lstm_724/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_241/lstm_724/lstm_cell_724/Sigmoid_2Sigmoid4sequential_241/lstm_724/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_241/lstm_724/lstm_cell_724/Relu_1Relu/sequential_241/lstm_724/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_241/lstm_724/lstm_cell_724/mul_2Mul3sequential_241/lstm_724/lstm_cell_724/Sigmoid_2:y:0:sequential_241/lstm_724/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_241/lstm_724/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_241/lstm_724/TensorArrayV2_1TensorListReserve>sequential_241/lstm_724/TensorArrayV2_1/element_shape:output:00sequential_241/lstm_724/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_241/lstm_724/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_241/lstm_724/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_241/lstm_724/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_241/lstm_724/whileWhile3sequential_241/lstm_724/while/loop_counter:output:09sequential_241/lstm_724/while/maximum_iterations:output:0%sequential_241/lstm_724/time:output:00sequential_241/lstm_724/TensorArrayV2_1:handle:0&sequential_241/lstm_724/zeros:output:0(sequential_241/lstm_724/zeros_1:output:00sequential_241/lstm_724/strided_slice_1:output:0Osequential_241/lstm_724/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_241_lstm_724_lstm_cell_724_matmul_readvariableop_resourceFsequential_241_lstm_724_lstm_cell_724_matmul_1_readvariableop_resourceEsequential_241_lstm_724_lstm_cell_724_biasadd_readvariableop_resource*
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
*sequential_241_lstm_724_while_body_4386079*6
cond.R,
*sequential_241_lstm_724_while_cond_4386078*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_241/lstm_724/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_241/lstm_724/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_241/lstm_724/while:output:3Qsequential_241/lstm_724/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_241/lstm_724/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_241/lstm_724/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_724/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_724/strided_slice_3StridedSliceCsequential_241/lstm_724/TensorArrayV2Stack/TensorListStack:tensor:06sequential_241/lstm_724/strided_slice_3/stack:output:08sequential_241/lstm_724/strided_slice_3/stack_1:output:08sequential_241/lstm_724/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_241/lstm_724/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_241/lstm_724/transpose_1	TransposeCsequential_241/lstm_724/TensorArrayV2Stack/TensorListStack:tensor:01sequential_241/lstm_724/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_241/lstm_724/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_241/lstm_725/ShapeShape'sequential_241/lstm_724/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_241/lstm_725/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_241/lstm_725/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_241/lstm_725/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_241/lstm_725/strided_sliceStridedSlice&sequential_241/lstm_725/Shape:output:04sequential_241/lstm_725/strided_slice/stack:output:06sequential_241/lstm_725/strided_slice/stack_1:output:06sequential_241/lstm_725/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_241/lstm_725/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_241/lstm_725/zeros/packedPack.sequential_241/lstm_725/strided_slice:output:0/sequential_241/lstm_725/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_241/lstm_725/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_241/lstm_725/zerosFill-sequential_241/lstm_725/zeros/packed:output:0,sequential_241/lstm_725/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_241/lstm_725/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_241/lstm_725/zeros_1/packedPack.sequential_241/lstm_725/strided_slice:output:01sequential_241/lstm_725/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_241/lstm_725/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_241/lstm_725/zeros_1Fill/sequential_241/lstm_725/zeros_1/packed:output:0.sequential_241/lstm_725/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_241/lstm_725/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_241/lstm_725/transpose	Transpose'sequential_241/lstm_724/transpose_1:y:0/sequential_241/lstm_725/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_241/lstm_725/Shape_1Shape%sequential_241/lstm_725/transpose:y:0*
T0*
_output_shapes
:w
-sequential_241/lstm_725/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_725/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_241/lstm_725/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_725/strided_slice_1StridedSlice(sequential_241/lstm_725/Shape_1:output:06sequential_241/lstm_725/strided_slice_1/stack:output:08sequential_241/lstm_725/strided_slice_1/stack_1:output:08sequential_241/lstm_725/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_241/lstm_725/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_241/lstm_725/TensorArrayV2TensorListReserve<sequential_241/lstm_725/TensorArrayV2/element_shape:output:00sequential_241/lstm_725/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_241/lstm_725/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_241/lstm_725/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_241/lstm_725/transpose:y:0Vsequential_241/lstm_725/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_241/lstm_725/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_725/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_241/lstm_725/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_725/strided_slice_2StridedSlice%sequential_241/lstm_725/transpose:y:06sequential_241/lstm_725/strided_slice_2/stack:output:08sequential_241/lstm_725/strided_slice_2/stack_1:output:08sequential_241/lstm_725/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_241/lstm_725/lstm_cell_725/MatMul/ReadVariableOpReadVariableOpDsequential_241_lstm_725_lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_241/lstm_725/lstm_cell_725/MatMulMatMul0sequential_241/lstm_725/strided_slice_2:output:0Csequential_241/lstm_725/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_241/lstm_725/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOpFsequential_241_lstm_725_lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_241/lstm_725/lstm_cell_725/MatMul_1MatMul&sequential_241/lstm_725/zeros:output:0Esequential_241/lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_241/lstm_725/lstm_cell_725/addAddV26sequential_241/lstm_725/lstm_cell_725/MatMul:product:08sequential_241/lstm_725/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_241/lstm_725/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOpEsequential_241_lstm_725_lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_241/lstm_725/lstm_cell_725/BiasAddBiasAdd-sequential_241/lstm_725/lstm_cell_725/add:z:0Dsequential_241/lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_241/lstm_725/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_241/lstm_725/lstm_cell_725/splitSplit>sequential_241/lstm_725/lstm_cell_725/split/split_dim:output:06sequential_241/lstm_725/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_241/lstm_725/lstm_cell_725/SigmoidSigmoid4sequential_241/lstm_725/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_241/lstm_725/lstm_cell_725/Sigmoid_1Sigmoid4sequential_241/lstm_725/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_241/lstm_725/lstm_cell_725/mulMul3sequential_241/lstm_725/lstm_cell_725/Sigmoid_1:y:0(sequential_241/lstm_725/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_241/lstm_725/lstm_cell_725/ReluRelu4sequential_241/lstm_725/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_241/lstm_725/lstm_cell_725/mul_1Mul1sequential_241/lstm_725/lstm_cell_725/Sigmoid:y:08sequential_241/lstm_725/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_241/lstm_725/lstm_cell_725/add_1AddV2-sequential_241/lstm_725/lstm_cell_725/mul:z:0/sequential_241/lstm_725/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_241/lstm_725/lstm_cell_725/Sigmoid_2Sigmoid4sequential_241/lstm_725/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_241/lstm_725/lstm_cell_725/Relu_1Relu/sequential_241/lstm_725/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_241/lstm_725/lstm_cell_725/mul_2Mul3sequential_241/lstm_725/lstm_cell_725/Sigmoid_2:y:0:sequential_241/lstm_725/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_241/lstm_725/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_241/lstm_725/TensorArrayV2_1TensorListReserve>sequential_241/lstm_725/TensorArrayV2_1/element_shape:output:00sequential_241/lstm_725/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_241/lstm_725/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_241/lstm_725/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_241/lstm_725/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_241/lstm_725/whileWhile3sequential_241/lstm_725/while/loop_counter:output:09sequential_241/lstm_725/while/maximum_iterations:output:0%sequential_241/lstm_725/time:output:00sequential_241/lstm_725/TensorArrayV2_1:handle:0&sequential_241/lstm_725/zeros:output:0(sequential_241/lstm_725/zeros_1:output:00sequential_241/lstm_725/strided_slice_1:output:0Osequential_241/lstm_725/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_241_lstm_725_lstm_cell_725_matmul_readvariableop_resourceFsequential_241_lstm_725_lstm_cell_725_matmul_1_readvariableop_resourceEsequential_241_lstm_725_lstm_cell_725_biasadd_readvariableop_resource*
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
*sequential_241_lstm_725_while_body_4386218*6
cond.R,
*sequential_241_lstm_725_while_cond_4386217*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_241/lstm_725/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_241/lstm_725/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_241/lstm_725/while:output:3Qsequential_241/lstm_725/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_241/lstm_725/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_241/lstm_725/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_241/lstm_725/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_241/lstm_725/strided_slice_3StridedSliceCsequential_241/lstm_725/TensorArrayV2Stack/TensorListStack:tensor:06sequential_241/lstm_725/strided_slice_3/stack:output:08sequential_241/lstm_725/strided_slice_3/stack_1:output:08sequential_241/lstm_725/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_241/lstm_725/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_241/lstm_725/transpose_1	TransposeCsequential_241/lstm_725/TensorArrayV2Stack/TensorListStack:tensor:01sequential_241/lstm_725/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_241/lstm_725/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_241/dense_241/MatMul/ReadVariableOpReadVariableOp7sequential_241_dense_241_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_241/dense_241/MatMulMatMul0sequential_241/lstm_725/strided_slice_3:output:06sequential_241/dense_241/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_241/dense_241/BiasAdd/ReadVariableOpReadVariableOp8sequential_241_dense_241_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_241/dense_241/BiasAddBiasAdd)sequential_241/dense_241/MatMul:product:07sequential_241/dense_241/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_241/dense_241/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_241/dense_241/BiasAdd/ReadVariableOp/^sequential_241/dense_241/MatMul/ReadVariableOp=^sequential_241/lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp<^sequential_241/lstm_723/lstm_cell_723/MatMul/ReadVariableOp>^sequential_241/lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp^sequential_241/lstm_723/while=^sequential_241/lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp<^sequential_241/lstm_724/lstm_cell_724/MatMul/ReadVariableOp>^sequential_241/lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp^sequential_241/lstm_724/while=^sequential_241/lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp<^sequential_241/lstm_725/lstm_cell_725/MatMul/ReadVariableOp>^sequential_241/lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp^sequential_241/lstm_725/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_241/dense_241/BiasAdd/ReadVariableOp/sequential_241/dense_241/BiasAdd/ReadVariableOp2`
.sequential_241/dense_241/MatMul/ReadVariableOp.sequential_241/dense_241/MatMul/ReadVariableOp2|
<sequential_241/lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp<sequential_241/lstm_723/lstm_cell_723/BiasAdd/ReadVariableOp2z
;sequential_241/lstm_723/lstm_cell_723/MatMul/ReadVariableOp;sequential_241/lstm_723/lstm_cell_723/MatMul/ReadVariableOp2~
=sequential_241/lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp=sequential_241/lstm_723/lstm_cell_723/MatMul_1/ReadVariableOp2>
sequential_241/lstm_723/whilesequential_241/lstm_723/while2|
<sequential_241/lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp<sequential_241/lstm_724/lstm_cell_724/BiasAdd/ReadVariableOp2z
;sequential_241/lstm_724/lstm_cell_724/MatMul/ReadVariableOp;sequential_241/lstm_724/lstm_cell_724/MatMul/ReadVariableOp2~
=sequential_241/lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp=sequential_241/lstm_724/lstm_cell_724/MatMul_1/ReadVariableOp2>
sequential_241/lstm_724/whilesequential_241/lstm_724/while2|
<sequential_241/lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp<sequential_241/lstm_725/lstm_cell_725/BiasAdd/ReadVariableOp2z
;sequential_241/lstm_725/lstm_cell_725/MatMul/ReadVariableOp;sequential_241/lstm_725/lstm_cell_725/MatMul/ReadVariableOp2~
=sequential_241/lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp=sequential_241/lstm_725/lstm_cell_725/MatMul_1/ReadVariableOp2>
sequential_241/lstm_725/whilesequential_241/lstm_725/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_723_input
?J
?
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389949

inputs?
,lstm_cell_723_matmul_readvariableop_resource:	?A
.lstm_cell_723_matmul_1_readvariableop_resource:	d?<
-lstm_cell_723_biasadd_readvariableop_resource:	?
identity??$lstm_cell_723/BiasAdd/ReadVariableOp?#lstm_cell_723/MatMul/ReadVariableOp?%lstm_cell_723/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_723/MatMul/ReadVariableOpReadVariableOp,lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_723/MatMulMatMulstrided_slice_2:output:0+lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_723/MatMul_1MatMulzeros:output:0-lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_723/addAddV2lstm_cell_723/MatMul:product:0 lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_723/BiasAddBiasAddlstm_cell_723/add:z:0,lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_723/splitSplit&lstm_cell_723/split/split_dim:output:0lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_723/SigmoidSigmoidlstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_1Sigmoidlstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_723/mulMullstm_cell_723/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_723/ReluRelulstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_1Mullstm_cell_723/Sigmoid:y:0 lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_723/add_1AddV2lstm_cell_723/mul:z:0lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_2Sigmoidlstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_723/Relu_1Relulstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_2Mullstm_cell_723/Sigmoid_2:y:0"lstm_cell_723/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_723_matmul_readvariableop_resource.lstm_cell_723_matmul_1_readvariableop_resource-lstm_cell_723_biasadd_readvariableop_resource*
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
while_body_4389865*
condR
while_cond_4389864*K
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
NoOpNoOp%^lstm_cell_723/BiasAdd/ReadVariableOp$^lstm_cell_723/MatMul/ReadVariableOp&^lstm_cell_723/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_723/BiasAdd/ReadVariableOp$lstm_cell_723/BiasAdd/ReadVariableOp2J
#lstm_cell_723/MatMul/ReadVariableOp#lstm_cell_723/MatMul/ReadVariableOp2N
%lstm_cell_723/MatMul_1/ReadVariableOp%lstm_cell_723/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4388268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4388268___redundant_placeholder05
1while_while_cond_4388268___redundant_placeholder15
1while_while_cond_4388268___redundant_placeholder25
1while_while_cond_4388268___redundant_placeholder3
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
while_cond_4390953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4390953___redundant_placeholder05
1while_while_cond_4390953___redundant_placeholder15
1while_while_cond_4390953___redundant_placeholder25
1while_while_cond_4390953___redundant_placeholder3
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
while_cond_4390194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4390194___redundant_placeholder05
1while_while_cond_4390194___redundant_placeholder15
1while_while_cond_4390194___redundant_placeholder25
1while_while_cond_4390194___redundant_placeholder3
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4386725

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
while_body_4390338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_724_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_724_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_724_matmul_readvariableop_resource:	d?G
4while_lstm_cell_724_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_724_biasadd_readvariableop_resource:	???*while/lstm_cell_724/BiasAdd/ReadVariableOp?)while/lstm_cell_724/MatMul/ReadVariableOp?+while/lstm_cell_724/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_724/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_724/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_724/addAddV2$while/lstm_cell_724/MatMul:product:0&while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_724/BiasAddBiasAddwhile/lstm_cell_724/add:z:02while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_724/splitSplit,while/lstm_cell_724/split/split_dim:output:0$while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_724/SigmoidSigmoid"while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_1Sigmoid"while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mulMul!while/lstm_cell_724/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_724/ReluRelu"while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_1Mulwhile/lstm_cell_724/Sigmoid:y:0&while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/add_1AddV2while/lstm_cell_724/mul:z:0while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_2Sigmoid"while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_724/Relu_1Reluwhile/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_2Mul!while/lstm_cell_724/Sigmoid_2:y:0(while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_724/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_724/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_724/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_724/BiasAdd/ReadVariableOp*^while/lstm_cell_724/MatMul/ReadVariableOp,^while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_724_biasadd_readvariableop_resource5while_lstm_cell_724_biasadd_readvariableop_resource_0"n
4while_lstm_cell_724_matmul_1_readvariableop_resource6while_lstm_cell_724_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_724_matmul_readvariableop_resource4while_lstm_cell_724_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_724/BiasAdd/ReadVariableOp*while/lstm_cell_724/BiasAdd/ReadVariableOp2V
)while/lstm_cell_724/MatMul/ReadVariableOp)while/lstm_cell_724/MatMul/ReadVariableOp2Z
+while/lstm_cell_724/MatMul_1/ReadVariableOp+while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390708

inputs?
,lstm_cell_724_matmul_readvariableop_resource:	d?A
.lstm_cell_724_matmul_1_readvariableop_resource:	2?<
-lstm_cell_724_biasadd_readvariableop_resource:	?
identity??$lstm_cell_724/BiasAdd/ReadVariableOp?#lstm_cell_724/MatMul/ReadVariableOp?%lstm_cell_724/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_724/MatMul/ReadVariableOpReadVariableOp,lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_724/MatMulMatMulstrided_slice_2:output:0+lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_724/MatMul_1MatMulzeros:output:0-lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_724/addAddV2lstm_cell_724/MatMul:product:0 lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_724/BiasAddBiasAddlstm_cell_724/add:z:0,lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_724/splitSplit&lstm_cell_724/split/split_dim:output:0lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_724/SigmoidSigmoidlstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_1Sigmoidlstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_724/mulMullstm_cell_724/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_724/ReluRelulstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_1Mullstm_cell_724/Sigmoid:y:0 lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_724/add_1AddV2lstm_cell_724/mul:z:0lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_2Sigmoidlstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_724/Relu_1Relulstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_2Mullstm_cell_724/Sigmoid_2:y:0"lstm_cell_724/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_724_matmul_readvariableop_resource.lstm_cell_724_matmul_1_readvariableop_resource-lstm_cell_724_biasadd_readvariableop_resource*
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
while_body_4390624*
condR
while_cond_4390623*K
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
NoOpNoOp%^lstm_cell_724/BiasAdd/ReadVariableOp$^lstm_cell_724/MatMul/ReadVariableOp&^lstm_cell_724/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_724/BiasAdd/ReadVariableOp$lstm_cell_724/BiasAdd/ReadVariableOp2J
#lstm_cell_724/MatMul/ReadVariableOp#lstm_cell_724/MatMul/ReadVariableOp2N
%lstm_cell_724/MatMul_1/ReadVariableOp%lstm_cell_724/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_4388568
lstm_723_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_723_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4386308o
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
_user_specified_namelstm_723_input
?
?
/__inference_lstm_cell_723_layer_call_fn_4391360

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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4386375o
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4391637

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
?K
?
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389663
inputs_0?
,lstm_cell_723_matmul_readvariableop_resource:	?A
.lstm_cell_723_matmul_1_readvariableop_resource:	d?<
-lstm_cell_723_biasadd_readvariableop_resource:	?
identity??$lstm_cell_723/BiasAdd/ReadVariableOp?#lstm_cell_723/MatMul/ReadVariableOp?%lstm_cell_723/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_723/MatMul/ReadVariableOpReadVariableOp,lstm_cell_723_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_723/MatMulMatMulstrided_slice_2:output:0+lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_723_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_723/MatMul_1MatMulzeros:output:0-lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_723/addAddV2lstm_cell_723/MatMul:product:0 lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_723_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_723/BiasAddBiasAddlstm_cell_723/add:z:0,lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_723/splitSplit&lstm_cell_723/split/split_dim:output:0lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_723/SigmoidSigmoidlstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_1Sigmoidlstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_723/mulMullstm_cell_723/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_723/ReluRelulstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_1Mullstm_cell_723/Sigmoid:y:0 lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_723/add_1AddV2lstm_cell_723/mul:z:0lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_723/Sigmoid_2Sigmoidlstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_723/Relu_1Relulstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_723/mul_2Mullstm_cell_723/Sigmoid_2:y:0"lstm_cell_723/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_723_matmul_readvariableop_resource.lstm_cell_723_matmul_1_readvariableop_resource-lstm_cell_723_biasadd_readvariableop_resource*
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
while_body_4389579*
condR
while_cond_4389578*K
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
NoOpNoOp%^lstm_cell_723/BiasAdd/ReadVariableOp$^lstm_cell_723/MatMul/ReadVariableOp&^lstm_cell_723/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_723/BiasAdd/ReadVariableOp$lstm_cell_723/BiasAdd/ReadVariableOp2J
#lstm_cell_723/MatMul/ReadVariableOp#lstm_cell_723/MatMul/ReadVariableOp2N
%lstm_cell_723/MatMul_1/ReadVariableOp%lstm_cell_723/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_724_layer_call_fn_4390114
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4386999|
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
while_body_4389865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_723_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_723_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_723_matmul_readvariableop_resource:	?G
4while_lstm_cell_723_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_723_biasadd_readvariableop_resource:	???*while/lstm_cell_723/BiasAdd/ReadVariableOp?)while/lstm_cell_723/MatMul/ReadVariableOp?+while/lstm_cell_723/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_723/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_723/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_723/addAddV2$while/lstm_cell_723/MatMul:product:0&while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_723/BiasAddBiasAddwhile/lstm_cell_723/add:z:02while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_723/splitSplit,while/lstm_cell_723/split/split_dim:output:0$while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_723/SigmoidSigmoid"while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_1Sigmoid"while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mulMul!while/lstm_cell_723/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_723/ReluRelu"while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_1Mulwhile/lstm_cell_723/Sigmoid:y:0&while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/add_1AddV2while/lstm_cell_723/mul:z:0while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_2Sigmoid"while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_723/Relu_1Reluwhile/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_2Mul!while/lstm_cell_723/Sigmoid_2:y:0(while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_723/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_723/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_723/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_723/BiasAdd/ReadVariableOp*^while/lstm_cell_723/MatMul/ReadVariableOp,^while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_723_biasadd_readvariableop_resource5while_lstm_cell_723_biasadd_readvariableop_resource_0"n
4while_lstm_cell_723_matmul_1_readvariableop_resource6while_lstm_cell_723_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_723_matmul_readvariableop_resource4while_lstm_cell_723_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_723/BiasAdd/ReadVariableOp*while/lstm_cell_723/BiasAdd/ReadVariableOp2V
)while/lstm_cell_723/MatMul/ReadVariableOp)while/lstm_cell_723/MatMul/ReadVariableOp2Z
+while/lstm_cell_723/MatMul_1/ReadVariableOp+while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4389864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4389864___redundant_placeholder05
1while_while_cond_4389864___redundant_placeholder15
1while_while_cond_4389864___redundant_placeholder25
1while_while_cond_4389864___redundant_placeholder3
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
while_body_4390954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_725_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_725_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_725_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_725_matmul_readvariableop_resource:2(F
4while_lstm_cell_725_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_725_biasadd_readvariableop_resource:(??*while/lstm_cell_725/BiasAdd/ReadVariableOp?)while/lstm_cell_725/MatMul/ReadVariableOp?+while/lstm_cell_725/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_725/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_725/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_725/addAddV2$while/lstm_cell_725/MatMul:product:0&while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_725/BiasAddBiasAddwhile/lstm_cell_725/add:z:02while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_725/splitSplit,while/lstm_cell_725/split/split_dim:output:0$while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_725/SigmoidSigmoid"while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_1Sigmoid"while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mulMul!while/lstm_cell_725/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_725/ReluRelu"while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_1Mulwhile/lstm_cell_725/Sigmoid:y:0&while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/add_1AddV2while/lstm_cell_725/mul:z:0while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_2Sigmoid"while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_725/Relu_1Reluwhile/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_2Mul!while/lstm_cell_725/Sigmoid_2:y:0(while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_725/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_725/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_725/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_725/BiasAdd/ReadVariableOp*^while/lstm_cell_725/MatMul/ReadVariableOp,^while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_725_biasadd_readvariableop_resource5while_lstm_cell_725_biasadd_readvariableop_resource_0"n
4while_lstm_cell_725_matmul_1_readvariableop_resource6while_lstm_cell_725_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_725_matmul_readvariableop_resource4while_lstm_cell_725_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_725/BiasAdd/ReadVariableOp*while/lstm_cell_725/BiasAdd/ReadVariableOp2V
)while/lstm_cell_725/MatMul/ReadVariableOp)while/lstm_cell_725/MatMul/ReadVariableOp2Z
+while/lstm_cell_725/MatMul_1/ReadVariableOp+while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_725_while_cond_4388958.
*lstm_725_while_lstm_725_while_loop_counter4
0lstm_725_while_lstm_725_while_maximum_iterations
lstm_725_while_placeholder 
lstm_725_while_placeholder_1 
lstm_725_while_placeholder_2 
lstm_725_while_placeholder_30
,lstm_725_while_less_lstm_725_strided_slice_1G
Clstm_725_while_lstm_725_while_cond_4388958___redundant_placeholder0G
Clstm_725_while_lstm_725_while_cond_4388958___redundant_placeholder1G
Clstm_725_while_lstm_725_while_cond_4388958___redundant_placeholder2G
Clstm_725_while_lstm_725_while_cond_4388958___redundant_placeholder3
lstm_725_while_identity
?
lstm_725/while/LessLesslstm_725_while_placeholder,lstm_725_while_less_lstm_725_strided_slice_1*
T0*
_output_shapes
: ]
lstm_725/while/IdentityIdentitylstm_725/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_725_while_identity lstm_725/while/Identity:output:0*(
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
*sequential_241_lstm_723_while_body_4385940L
Hsequential_241_lstm_723_while_sequential_241_lstm_723_while_loop_counterR
Nsequential_241_lstm_723_while_sequential_241_lstm_723_while_maximum_iterations-
)sequential_241_lstm_723_while_placeholder/
+sequential_241_lstm_723_while_placeholder_1/
+sequential_241_lstm_723_while_placeholder_2/
+sequential_241_lstm_723_while_placeholder_3K
Gsequential_241_lstm_723_while_sequential_241_lstm_723_strided_slice_1_0?
?sequential_241_lstm_723_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_723_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_241_lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0:	?a
Nsequential_241_lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?\
Msequential_241_lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0:	?*
&sequential_241_lstm_723_while_identity,
(sequential_241_lstm_723_while_identity_1,
(sequential_241_lstm_723_while_identity_2,
(sequential_241_lstm_723_while_identity_3,
(sequential_241_lstm_723_while_identity_4,
(sequential_241_lstm_723_while_identity_5I
Esequential_241_lstm_723_while_sequential_241_lstm_723_strided_slice_1?
?sequential_241_lstm_723_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_723_tensorarrayunstack_tensorlistfromtensor]
Jsequential_241_lstm_723_while_lstm_cell_723_matmul_readvariableop_resource:	?_
Lsequential_241_lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource:	d?Z
Ksequential_241_lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource:	???Bsequential_241/lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp?Asequential_241/lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp?Csequential_241/lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp?
Osequential_241/lstm_723/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_241/lstm_723/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_241_lstm_723_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_723_tensorarrayunstack_tensorlistfromtensor_0)sequential_241_lstm_723_while_placeholderXsequential_241/lstm_723/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_241/lstm_723/while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOpLsequential_241_lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_241/lstm_723/while/lstm_cell_723/MatMulMatMulHsequential_241/lstm_723/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_241/lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_241/lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOpNsequential_241_lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_241/lstm_723/while/lstm_cell_723/MatMul_1MatMul+sequential_241_lstm_723_while_placeholder_2Ksequential_241/lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_241/lstm_723/while/lstm_cell_723/addAddV2<sequential_241/lstm_723/while/lstm_cell_723/MatMul:product:0>sequential_241/lstm_723/while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_241/lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOpMsequential_241_lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_241/lstm_723/while/lstm_cell_723/BiasAddBiasAdd3sequential_241/lstm_723/while/lstm_cell_723/add:z:0Jsequential_241/lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_241/lstm_723/while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_241/lstm_723/while/lstm_cell_723/splitSplitDsequential_241/lstm_723/while/lstm_cell_723/split/split_dim:output:0<sequential_241/lstm_723/while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_241/lstm_723/while/lstm_cell_723/SigmoidSigmoid:sequential_241/lstm_723/while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_241/lstm_723/while/lstm_cell_723/Sigmoid_1Sigmoid:sequential_241/lstm_723/while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_241/lstm_723/while/lstm_cell_723/mulMul9sequential_241/lstm_723/while/lstm_cell_723/Sigmoid_1:y:0+sequential_241_lstm_723_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_241/lstm_723/while/lstm_cell_723/ReluRelu:sequential_241/lstm_723/while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_241/lstm_723/while/lstm_cell_723/mul_1Mul7sequential_241/lstm_723/while/lstm_cell_723/Sigmoid:y:0>sequential_241/lstm_723/while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_241/lstm_723/while/lstm_cell_723/add_1AddV23sequential_241/lstm_723/while/lstm_cell_723/mul:z:05sequential_241/lstm_723/while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_241/lstm_723/while/lstm_cell_723/Sigmoid_2Sigmoid:sequential_241/lstm_723/while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_241/lstm_723/while/lstm_cell_723/Relu_1Relu5sequential_241/lstm_723/while/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_241/lstm_723/while/lstm_cell_723/mul_2Mul9sequential_241/lstm_723/while/lstm_cell_723/Sigmoid_2:y:0@sequential_241/lstm_723/while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_241/lstm_723/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_241_lstm_723_while_placeholder_1)sequential_241_lstm_723_while_placeholder5sequential_241/lstm_723/while/lstm_cell_723/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_241/lstm_723/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_241/lstm_723/while/addAddV2)sequential_241_lstm_723_while_placeholder,sequential_241/lstm_723/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_241/lstm_723/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_241/lstm_723/while/add_1AddV2Hsequential_241_lstm_723_while_sequential_241_lstm_723_while_loop_counter.sequential_241/lstm_723/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_241/lstm_723/while/IdentityIdentity'sequential_241/lstm_723/while/add_1:z:0#^sequential_241/lstm_723/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_723/while/Identity_1IdentityNsequential_241_lstm_723_while_sequential_241_lstm_723_while_maximum_iterations#^sequential_241/lstm_723/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_723/while/Identity_2Identity%sequential_241/lstm_723/while/add:z:0#^sequential_241/lstm_723/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_723/while/Identity_3IdentityRsequential_241/lstm_723/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_241/lstm_723/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_723/while/Identity_4Identity5sequential_241/lstm_723/while/lstm_cell_723/mul_2:z:0#^sequential_241/lstm_723/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_241/lstm_723/while/Identity_5Identity5sequential_241/lstm_723/while/lstm_cell_723/add_1:z:0#^sequential_241/lstm_723/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_241/lstm_723/while/NoOpNoOpC^sequential_241/lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOpB^sequential_241/lstm_723/while/lstm_cell_723/MatMul/ReadVariableOpD^sequential_241/lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_241_lstm_723_while_identity/sequential_241/lstm_723/while/Identity:output:0"]
(sequential_241_lstm_723_while_identity_11sequential_241/lstm_723/while/Identity_1:output:0"]
(sequential_241_lstm_723_while_identity_21sequential_241/lstm_723/while/Identity_2:output:0"]
(sequential_241_lstm_723_while_identity_31sequential_241/lstm_723/while/Identity_3:output:0"]
(sequential_241_lstm_723_while_identity_41sequential_241/lstm_723/while/Identity_4:output:0"]
(sequential_241_lstm_723_while_identity_51sequential_241/lstm_723/while/Identity_5:output:0"?
Ksequential_241_lstm_723_while_lstm_cell_723_biasadd_readvariableop_resourceMsequential_241_lstm_723_while_lstm_cell_723_biasadd_readvariableop_resource_0"?
Lsequential_241_lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resourceNsequential_241_lstm_723_while_lstm_cell_723_matmul_1_readvariableop_resource_0"?
Jsequential_241_lstm_723_while_lstm_cell_723_matmul_readvariableop_resourceLsequential_241_lstm_723_while_lstm_cell_723_matmul_readvariableop_resource_0"?
Esequential_241_lstm_723_while_sequential_241_lstm_723_strided_slice_1Gsequential_241_lstm_723_while_sequential_241_lstm_723_strided_slice_1_0"?
?sequential_241_lstm_723_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_723_tensorarrayunstack_tensorlistfromtensor?sequential_241_lstm_723_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_723_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_241/lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOpBsequential_241/lstm_723/while/lstm_cell_723/BiasAdd/ReadVariableOp2?
Asequential_241/lstm_723/while/lstm_cell_723/MatMul/ReadVariableOpAsequential_241/lstm_723/while/lstm_cell_723/MatMul/ReadVariableOp2?
Csequential_241/lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOpCsequential_241/lstm_723/while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4390895
inputs_0>
,lstm_cell_725_matmul_readvariableop_resource:2(@
.lstm_cell_725_matmul_1_readvariableop_resource:
(;
-lstm_cell_725_biasadd_readvariableop_resource:(
identity??$lstm_cell_725/BiasAdd/ReadVariableOp?#lstm_cell_725/MatMul/ReadVariableOp?%lstm_cell_725/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_725/MatMul/ReadVariableOpReadVariableOp,lstm_cell_725_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_725/MatMulMatMulstrided_slice_2:output:0+lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_725_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_725/MatMul_1MatMulzeros:output:0-lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_725/addAddV2lstm_cell_725/MatMul:product:0 lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_725_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_725/BiasAddBiasAddlstm_cell_725/add:z:0,lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_725/splitSplit&lstm_cell_725/split/split_dim:output:0lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_725/SigmoidSigmoidlstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_1Sigmoidlstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_725/mulMullstm_cell_725/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_725/ReluRelulstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_1Mullstm_cell_725/Sigmoid:y:0 lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_725/add_1AddV2lstm_cell_725/mul:z:0lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_725/Sigmoid_2Sigmoidlstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_725/Relu_1Relulstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_725/mul_2Mullstm_cell_725/Sigmoid_2:y:0"lstm_cell_725/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_725_matmul_readvariableop_resource.lstm_cell_725_matmul_1_readvariableop_resource-lstm_cell_725_biasadd_readvariableop_resource*
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
while_body_4390811*
condR
while_cond_4390810*K
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
NoOpNoOp%^lstm_cell_725/BiasAdd/ReadVariableOp$^lstm_cell_725/MatMul/ReadVariableOp&^lstm_cell_725/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_725/BiasAdd/ReadVariableOp$lstm_cell_725/BiasAdd/ReadVariableOp2J
#lstm_cell_725/MatMul/ReadVariableOp#lstm_cell_725/MatMul/ReadVariableOp2N
%lstm_cell_725/MatMul_1/ReadVariableOp%lstm_cell_725/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_4387573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_724_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_724_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_724_matmul_readvariableop_resource:	d?G
4while_lstm_cell_724_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_724_biasadd_readvariableop_resource:	???*while/lstm_cell_724/BiasAdd/ReadVariableOp?)while/lstm_cell_724/MatMul/ReadVariableOp?+while/lstm_cell_724/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_724/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_724/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_724/addAddV2$while/lstm_cell_724/MatMul:product:0&while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_724/BiasAddBiasAddwhile/lstm_cell_724/add:z:02while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_724/splitSplit,while/lstm_cell_724/split/split_dim:output:0$while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_724/SigmoidSigmoid"while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_1Sigmoid"while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mulMul!while/lstm_cell_724/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_724/ReluRelu"while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_1Mulwhile/lstm_cell_724/Sigmoid:y:0&while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/add_1AddV2while/lstm_cell_724/mul:z:0while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_2Sigmoid"while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_724/Relu_1Reluwhile/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_2Mul!while/lstm_cell_724/Sigmoid_2:y:0(while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_724/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_724/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_724/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_724/BiasAdd/ReadVariableOp*^while/lstm_cell_724/MatMul/ReadVariableOp,^while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_724_biasadd_readvariableop_resource5while_lstm_cell_724_biasadd_readvariableop_resource_0"n
4while_lstm_cell_724_matmul_1_readvariableop_resource6while_lstm_cell_724_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_724_matmul_readvariableop_resource4while_lstm_cell_724_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_724/BiasAdd/ReadVariableOp*while/lstm_cell_724/BiasAdd/ReadVariableOp2V
)while/lstm_cell_724/MatMul/ReadVariableOp)while/lstm_cell_724/MatMul/ReadVariableOp2Z
+while/lstm_cell_724/MatMul_1/ReadVariableOp+while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4389578
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4389578___redundant_placeholder05
1while_while_cond_4389578___redundant_placeholder15
1while_while_cond_4389578___redundant_placeholder25
1while_while_cond_4389578___redundant_placeholder3
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
*__inference_lstm_723_layer_call_fn_4389520

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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4388353s
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
while_body_4390195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_724_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_724_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_724_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_724_matmul_readvariableop_resource:	d?G
4while_lstm_cell_724_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_724_biasadd_readvariableop_resource:	???*while/lstm_cell_724/BiasAdd/ReadVariableOp?)while/lstm_cell_724/MatMul/ReadVariableOp?+while/lstm_cell_724/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_724/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_724_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_724/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_724_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_724/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_724/addAddV2$while/lstm_cell_724/MatMul:product:0&while/lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_724_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_724/BiasAddBiasAddwhile/lstm_cell_724/add:z:02while/lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_724/splitSplit,while/lstm_cell_724/split/split_dim:output:0$while/lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_724/SigmoidSigmoid"while/lstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_1Sigmoid"while/lstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mulMul!while/lstm_cell_724/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_724/ReluRelu"while/lstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_1Mulwhile/lstm_cell_724/Sigmoid:y:0&while/lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/add_1AddV2while/lstm_cell_724/mul:z:0while/lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_724/Sigmoid_2Sigmoid"while/lstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_724/Relu_1Reluwhile/lstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_724/mul_2Mul!while/lstm_cell_724/Sigmoid_2:y:0(while/lstm_cell_724/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_724/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_724/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_724/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_724/BiasAdd/ReadVariableOp*^while/lstm_cell_724/MatMul/ReadVariableOp,^while/lstm_cell_724/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_724_biasadd_readvariableop_resource5while_lstm_cell_724_biasadd_readvariableop_resource_0"n
4while_lstm_cell_724_matmul_1_readvariableop_resource6while_lstm_cell_724_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_724_matmul_readvariableop_resource4while_lstm_cell_724_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_724/BiasAdd/ReadVariableOp*while/lstm_cell_724/BiasAdd/ReadVariableOp2V
)while/lstm_cell_724/MatMul/ReadVariableOp)while/lstm_cell_724/MatMul/ReadVariableOp2Z
+while/lstm_cell_724/MatMul_1/ReadVariableOp+while/lstm_cell_724/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4386871

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
while_body_4389722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_723_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_723_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_723_matmul_readvariableop_resource:	?G
4while_lstm_cell_723_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_723_biasadd_readvariableop_resource:	???*while/lstm_cell_723/BiasAdd/ReadVariableOp?)while/lstm_cell_723/MatMul/ReadVariableOp?+while/lstm_cell_723/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_723/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_723/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_723/addAddV2$while/lstm_cell_723/MatMul:product:0&while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_723/BiasAddBiasAddwhile/lstm_cell_723/add:z:02while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_723/splitSplit,while/lstm_cell_723/split/split_dim:output:0$while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_723/SigmoidSigmoid"while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_1Sigmoid"while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mulMul!while/lstm_cell_723/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_723/ReluRelu"while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_1Mulwhile/lstm_cell_723/Sigmoid:y:0&while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/add_1AddV2while/lstm_cell_723/mul:z:0while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_2Sigmoid"while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_723/Relu_1Reluwhile/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_2Mul!while/lstm_cell_723/Sigmoid_2:y:0(while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_723/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_723/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_723/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_723/BiasAdd/ReadVariableOp*^while/lstm_cell_723/MatMul/ReadVariableOp,^while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_723_biasadd_readvariableop_resource5while_lstm_cell_723_biasadd_readvariableop_resource_0"n
4while_lstm_cell_723_matmul_1_readvariableop_resource6while_lstm_cell_723_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_723_matmul_readvariableop_resource4while_lstm_cell_723_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_723/BiasAdd/ReadVariableOp*while/lstm_cell_723/BiasAdd/ReadVariableOp2V
)while/lstm_cell_723/MatMul/ReadVariableOp)while/lstm_cell_723/MatMul/ReadVariableOp2Z
+while/lstm_cell_723/MatMul_1/ReadVariableOp+while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_723_layer_call_fn_4389498
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4386649|
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4386808

inputs(
lstm_cell_724_4386726:	d?(
lstm_cell_724_4386728:	2?$
lstm_cell_724_4386730:	?
identity??%lstm_cell_724/StatefulPartitionedCall?while;
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
%lstm_cell_724/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_724_4386726lstm_cell_724_4386728lstm_cell_724_4386730*
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4386725n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_724_4386726lstm_cell_724_4386728lstm_cell_724_4386730*
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
while_body_4386739*
condR
while_cond_4386738*K
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
NoOpNoOp&^lstm_cell_724/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_724/StatefulPartitionedCall%lstm_cell_724/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_4386389
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_723_4386413_0:	?0
while_lstm_cell_723_4386415_0:	d?,
while_lstm_cell_723_4386417_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_723_4386413:	?.
while_lstm_cell_723_4386415:	d?*
while_lstm_cell_723_4386417:	???+while/lstm_cell_723/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_723/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_723_4386413_0while_lstm_cell_723_4386415_0while_lstm_cell_723_4386417_0*
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4386375?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_723/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_723/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_723/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_723/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_723_4386413while_lstm_cell_723_4386413_0"<
while_lstm_cell_723_4386415while_lstm_cell_723_4386415_0"<
while_lstm_cell_723_4386417while_lstm_cell_723_4386417_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_723/StatefulPartitionedCall+while/lstm_cell_723/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_725_while_body_4388959.
*lstm_725_while_lstm_725_while_loop_counter4
0lstm_725_while_lstm_725_while_maximum_iterations
lstm_725_while_placeholder 
lstm_725_while_placeholder_1 
lstm_725_while_placeholder_2 
lstm_725_while_placeholder_3-
)lstm_725_while_lstm_725_strided_slice_1_0i
elstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0:2(Q
?lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0:
(L
>lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0:(
lstm_725_while_identity
lstm_725_while_identity_1
lstm_725_while_identity_2
lstm_725_while_identity_3
lstm_725_while_identity_4
lstm_725_while_identity_5+
'lstm_725_while_lstm_725_strided_slice_1g
clstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensorM
;lstm_725_while_lstm_cell_725_matmul_readvariableop_resource:2(O
=lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource:
(J
<lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource:(??3lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp?2lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp?4lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp?
@lstm_725/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_725/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensor_0lstm_725_while_placeholderIlstm_725/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_725/while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp=lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_725/while/lstm_cell_725/MatMulMatMul9lstm_725/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp?lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_725/while/lstm_cell_725/MatMul_1MatMullstm_725_while_placeholder_2<lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_725/while/lstm_cell_725/addAddV2-lstm_725/while/lstm_cell_725/MatMul:product:0/lstm_725/while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp>lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_725/while/lstm_cell_725/BiasAddBiasAdd$lstm_725/while/lstm_cell_725/add:z:0;lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_725/while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_725/while/lstm_cell_725/splitSplit5lstm_725/while/lstm_cell_725/split/split_dim:output:0-lstm_725/while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_725/while/lstm_cell_725/SigmoidSigmoid+lstm_725/while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_725/while/lstm_cell_725/Sigmoid_1Sigmoid+lstm_725/while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_725/while/lstm_cell_725/mulMul*lstm_725/while/lstm_cell_725/Sigmoid_1:y:0lstm_725_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_725/while/lstm_cell_725/ReluRelu+lstm_725/while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_725/while/lstm_cell_725/mul_1Mul(lstm_725/while/lstm_cell_725/Sigmoid:y:0/lstm_725/while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_725/while/lstm_cell_725/add_1AddV2$lstm_725/while/lstm_cell_725/mul:z:0&lstm_725/while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_725/while/lstm_cell_725/Sigmoid_2Sigmoid+lstm_725/while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_725/while/lstm_cell_725/Relu_1Relu&lstm_725/while/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_725/while/lstm_cell_725/mul_2Mul*lstm_725/while/lstm_cell_725/Sigmoid_2:y:01lstm_725/while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_725/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_725_while_placeholder_1lstm_725_while_placeholder&lstm_725/while/lstm_cell_725/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_725/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_725/while/addAddV2lstm_725_while_placeholderlstm_725/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_725/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_725/while/add_1AddV2*lstm_725_while_lstm_725_while_loop_counterlstm_725/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_725/while/IdentityIdentitylstm_725/while/add_1:z:0^lstm_725/while/NoOp*
T0*
_output_shapes
: ?
lstm_725/while/Identity_1Identity0lstm_725_while_lstm_725_while_maximum_iterations^lstm_725/while/NoOp*
T0*
_output_shapes
: t
lstm_725/while/Identity_2Identitylstm_725/while/add:z:0^lstm_725/while/NoOp*
T0*
_output_shapes
: ?
lstm_725/while/Identity_3IdentityClstm_725/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_725/while/NoOp*
T0*
_output_shapes
: ?
lstm_725/while/Identity_4Identity&lstm_725/while/lstm_cell_725/mul_2:z:0^lstm_725/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_725/while/Identity_5Identity&lstm_725/while/lstm_cell_725/add_1:z:0^lstm_725/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_725/while/NoOpNoOp4^lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp3^lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp5^lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_725_while_identity lstm_725/while/Identity:output:0"?
lstm_725_while_identity_1"lstm_725/while/Identity_1:output:0"?
lstm_725_while_identity_2"lstm_725/while/Identity_2:output:0"?
lstm_725_while_identity_3"lstm_725/while/Identity_3:output:0"?
lstm_725_while_identity_4"lstm_725/while/Identity_4:output:0"?
lstm_725_while_identity_5"lstm_725/while/Identity_5:output:0"T
'lstm_725_while_lstm_725_strided_slice_1)lstm_725_while_lstm_725_strided_slice_1_0"~
<lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource>lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0"?
=lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource?lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0"|
;lstm_725_while_lstm_cell_725_matmul_readvariableop_resource=lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0"?
clstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensorelstm_725_while_tensorarrayv2read_tensorlistgetitem_lstm_725_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp3lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp2h
2lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp2lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp2l
4lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp4lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4390810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4390810___redundant_placeholder05
1while_while_cond_4390810___redundant_placeholder15
1while_while_cond_4390810___redundant_placeholder25
1while_while_cond_4390810___redundant_placeholder3
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
*sequential_241_lstm_725_while_cond_4386217L
Hsequential_241_lstm_725_while_sequential_241_lstm_725_while_loop_counterR
Nsequential_241_lstm_725_while_sequential_241_lstm_725_while_maximum_iterations-
)sequential_241_lstm_725_while_placeholder/
+sequential_241_lstm_725_while_placeholder_1/
+sequential_241_lstm_725_while_placeholder_2/
+sequential_241_lstm_725_while_placeholder_3N
Jsequential_241_lstm_725_while_less_sequential_241_lstm_725_strided_slice_1e
asequential_241_lstm_725_while_sequential_241_lstm_725_while_cond_4386217___redundant_placeholder0e
asequential_241_lstm_725_while_sequential_241_lstm_725_while_cond_4386217___redundant_placeholder1e
asequential_241_lstm_725_while_sequential_241_lstm_725_while_cond_4386217___redundant_placeholder2e
asequential_241_lstm_725_while_sequential_241_lstm_725_while_cond_4386217___redundant_placeholder3*
&sequential_241_lstm_725_while_identity
?
"sequential_241/lstm_725/while/LessLess)sequential_241_lstm_725_while_placeholderJsequential_241_lstm_725_while_less_sequential_241_lstm_725_strided_slice_1*
T0*
_output_shapes
: {
&sequential_241/lstm_725/while/IdentityIdentity&sequential_241/lstm_725/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_241_lstm_725_while_identity/sequential_241/lstm_725/while/Identity:output:0*(
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4391409

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
while_body_4388269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_723_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_723_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_723_matmul_readvariableop_resource:	?G
4while_lstm_cell_723_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_723_biasadd_readvariableop_resource:	???*while/lstm_cell_723/BiasAdd/ReadVariableOp?)while/lstm_cell_723/MatMul/ReadVariableOp?+while/lstm_cell_723/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_723/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_723/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_723/addAddV2$while/lstm_cell_723/MatMul:product:0&while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_723/BiasAddBiasAddwhile/lstm_cell_723/add:z:02while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_723/splitSplit,while/lstm_cell_723/split/split_dim:output:0$while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_723/SigmoidSigmoid"while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_1Sigmoid"while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mulMul!while/lstm_cell_723/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_723/ReluRelu"while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_1Mulwhile/lstm_cell_723/Sigmoid:y:0&while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/add_1AddV2while/lstm_cell_723/mul:z:0while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_2Sigmoid"while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_723/Relu_1Reluwhile/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_2Mul!while/lstm_cell_723/Sigmoid_2:y:0(while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_723/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_723/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_723/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_723/BiasAdd/ReadVariableOp*^while/lstm_cell_723/MatMul/ReadVariableOp,^while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_723_biasadd_readvariableop_resource5while_lstm_cell_723_biasadd_readvariableop_resource_0"n
4while_lstm_cell_723_matmul_1_readvariableop_resource6while_lstm_cell_723_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_723_matmul_readvariableop_resource4while_lstm_cell_723_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_723/BiasAdd/ReadVariableOp*while/lstm_cell_723/BiasAdd/ReadVariableOp2V
)while/lstm_cell_723/MatMul/ReadVariableOp)while/lstm_cell_723/MatMul/ReadVariableOp2Z
+while/lstm_cell_723/MatMul_1/ReadVariableOp+while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390422
inputs_0?
,lstm_cell_724_matmul_readvariableop_resource:	d?A
.lstm_cell_724_matmul_1_readvariableop_resource:	2?<
-lstm_cell_724_biasadd_readvariableop_resource:	?
identity??$lstm_cell_724/BiasAdd/ReadVariableOp?#lstm_cell_724/MatMul/ReadVariableOp?%lstm_cell_724/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_724/MatMul/ReadVariableOpReadVariableOp,lstm_cell_724_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_724/MatMulMatMulstrided_slice_2:output:0+lstm_cell_724/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_724/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_724_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_724/MatMul_1MatMulzeros:output:0-lstm_cell_724/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_724/addAddV2lstm_cell_724/MatMul:product:0 lstm_cell_724/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_724/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_724_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_724/BiasAddBiasAddlstm_cell_724/add:z:0,lstm_cell_724/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_724/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_724/splitSplit&lstm_cell_724/split/split_dim:output:0lstm_cell_724/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_724/SigmoidSigmoidlstm_cell_724/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_1Sigmoidlstm_cell_724/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_724/mulMullstm_cell_724/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_724/ReluRelulstm_cell_724/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_1Mullstm_cell_724/Sigmoid:y:0 lstm_cell_724/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_724/add_1AddV2lstm_cell_724/mul:z:0lstm_cell_724/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_724/Sigmoid_2Sigmoidlstm_cell_724/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_724/Relu_1Relulstm_cell_724/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_724/mul_2Mullstm_cell_724/Sigmoid_2:y:0"lstm_cell_724/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_724_matmul_readvariableop_resource.lstm_cell_724_matmul_1_readvariableop_resource-lstm_cell_724_biasadd_readvariableop_resource*
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
while_body_4390338*
condR
while_cond_4390337*K
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
NoOpNoOp%^lstm_cell_724/BiasAdd/ReadVariableOp$^lstm_cell_724/MatMul/ReadVariableOp&^lstm_cell_724/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_724/BiasAdd/ReadVariableOp$lstm_cell_724/BiasAdd/ReadVariableOp2J
#lstm_cell_724/MatMul/ReadVariableOp#lstm_cell_724/MatMul/ReadVariableOp2N
%lstm_cell_724/MatMul_1/ReadVariableOp%lstm_cell_724/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_4389579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_723_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_723_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_723_matmul_readvariableop_resource:	?G
4while_lstm_cell_723_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_723_biasadd_readvariableop_resource:	???*while/lstm_cell_723/BiasAdd/ReadVariableOp?)while/lstm_cell_723/MatMul/ReadVariableOp?+while/lstm_cell_723/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_723/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_723/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_723/addAddV2$while/lstm_cell_723/MatMul:product:0&while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_723/BiasAddBiasAddwhile/lstm_cell_723/add:z:02while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_723/splitSplit,while/lstm_cell_723/split/split_dim:output:0$while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_723/SigmoidSigmoid"while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_1Sigmoid"while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mulMul!while/lstm_cell_723/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_723/ReluRelu"while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_1Mulwhile/lstm_cell_723/Sigmoid:y:0&while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/add_1AddV2while/lstm_cell_723/mul:z:0while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_2Sigmoid"while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_723/Relu_1Reluwhile/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_2Mul!while/lstm_cell_723/Sigmoid_2:y:0(while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_723/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_723/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_723/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_723/BiasAdd/ReadVariableOp*^while/lstm_cell_723/MatMul/ReadVariableOp,^while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_723_biasadd_readvariableop_resource5while_lstm_cell_723_biasadd_readvariableop_resource_0"n
4while_lstm_cell_723_matmul_1_readvariableop_resource6while_lstm_cell_723_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_723_matmul_readvariableop_resource4while_lstm_cell_723_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_723/BiasAdd/ReadVariableOp*while/lstm_cell_723/BiasAdd/ReadVariableOp2V
)while/lstm_cell_723/MatMul/ReadVariableOp)while/lstm_cell_723/MatMul/ReadVariableOp2Z
+while/lstm_cell_723/MatMul_1/ReadVariableOp+while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4387088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4387088___redundant_placeholder05
1while_while_cond_4387088___redundant_placeholder15
1while_while_cond_4387088___redundant_placeholder25
1while_while_cond_4387088___redundant_placeholder3
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
lstm_724_while_cond_4388819.
*lstm_724_while_lstm_724_while_loop_counter4
0lstm_724_while_lstm_724_while_maximum_iterations
lstm_724_while_placeholder 
lstm_724_while_placeholder_1 
lstm_724_while_placeholder_2 
lstm_724_while_placeholder_30
,lstm_724_while_less_lstm_724_strided_slice_1G
Clstm_724_while_lstm_724_while_cond_4388819___redundant_placeholder0G
Clstm_724_while_lstm_724_while_cond_4388819___redundant_placeholder1G
Clstm_724_while_lstm_724_while_cond_4388819___redundant_placeholder2G
Clstm_724_while_lstm_724_while_cond_4388819___redundant_placeholder3
lstm_724_while_identity
?
lstm_724/while/LessLesslstm_724_while_placeholder,lstm_724_while_less_lstm_724_strided_slice_1*
T0*
_output_shapes
: ]
lstm_724/while/IdentityIdentitylstm_724/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_724_while_identity lstm_724/while/Identity:output:0*(
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4386649

inputs(
lstm_cell_723_4386567:	?(
lstm_cell_723_4386569:	d?$
lstm_cell_723_4386571:	?
identity??%lstm_cell_723/StatefulPartitionedCall?while;
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
%lstm_cell_723/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_723_4386567lstm_cell_723_4386569lstm_cell_723_4386571*
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4386521n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_723_4386567lstm_cell_723_4386569lstm_cell_723_4386571*
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
while_body_4386580*
condR
while_cond_4386579*K
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
NoOpNoOp&^lstm_cell_723/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_723/StatefulPartitionedCall%lstm_cell_723/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
0__inference_sequential_241_layer_call_fn_4387857
lstm_723_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_723_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4387832o
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
_user_specified_namelstm_723_input
?8
?
while_body_4387423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_723_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_723_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_723_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_723_matmul_readvariableop_resource:	?G
4while_lstm_cell_723_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_723_biasadd_readvariableop_resource:	???*while/lstm_cell_723/BiasAdd/ReadVariableOp?)while/lstm_cell_723/MatMul/ReadVariableOp?+while/lstm_cell_723/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_723/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_723_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_723/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_723/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_723/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_723_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_723/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_723/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_723/addAddV2$while/lstm_cell_723/MatMul:product:0&while/lstm_cell_723/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_723/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_723_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_723/BiasAddBiasAddwhile/lstm_cell_723/add:z:02while/lstm_cell_723/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_723/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_723/splitSplit,while/lstm_cell_723/split/split_dim:output:0$while/lstm_cell_723/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_723/SigmoidSigmoid"while/lstm_cell_723/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_1Sigmoid"while/lstm_cell_723/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mulMul!while/lstm_cell_723/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_723/ReluRelu"while/lstm_cell_723/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_1Mulwhile/lstm_cell_723/Sigmoid:y:0&while/lstm_cell_723/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/add_1AddV2while/lstm_cell_723/mul:z:0while/lstm_cell_723/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_723/Sigmoid_2Sigmoid"while/lstm_cell_723/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_723/Relu_1Reluwhile/lstm_cell_723/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_723/mul_2Mul!while/lstm_cell_723/Sigmoid_2:y:0(while/lstm_cell_723/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_723/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_723/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_723/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_723/BiasAdd/ReadVariableOp*^while/lstm_cell_723/MatMul/ReadVariableOp,^while/lstm_cell_723/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_723_biasadd_readvariableop_resource5while_lstm_cell_723_biasadd_readvariableop_resource_0"n
4while_lstm_cell_723_matmul_1_readvariableop_resource6while_lstm_cell_723_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_723_matmul_readvariableop_resource4while_lstm_cell_723_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_723/BiasAdd/ReadVariableOp*while/lstm_cell_723/BiasAdd/ReadVariableOp2V
)while/lstm_cell_723/MatMul/ReadVariableOp)while/lstm_cell_723/MatMul/ReadVariableOp2Z
+while/lstm_cell_723/MatMul_1/ReadVariableOp+while/lstm_cell_723/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_725_layer_call_fn_4390719
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4387158o
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
0__inference_sequential_241_layer_call_fn_4388595

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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4387832o
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
while_cond_4390007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4390007___redundant_placeholder05
1while_while_cond_4390007___redundant_placeholder15
1while_while_cond_4390007___redundant_placeholder25
1while_while_cond_4390007___redundant_placeholder3
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
*__inference_lstm_725_layer_call_fn_4390730
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4387349o
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
while_cond_4386929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4386929___redundant_placeholder05
1while_while_cond_4386929___redundant_placeholder15
1while_while_cond_4386929___redundant_placeholder25
1while_while_cond_4386929___redundant_placeholder3
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
*__inference_lstm_725_layer_call_fn_4390741

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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4387807o
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
while_body_4391240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_725_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_725_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_725_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_725_matmul_readvariableop_resource:2(F
4while_lstm_cell_725_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_725_biasadd_readvariableop_resource:(??*while/lstm_cell_725/BiasAdd/ReadVariableOp?)while/lstm_cell_725/MatMul/ReadVariableOp?+while/lstm_cell_725/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_725/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_725/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_725/addAddV2$while/lstm_cell_725/MatMul:product:0&while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_725/BiasAddBiasAddwhile/lstm_cell_725/add:z:02while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_725/splitSplit,while/lstm_cell_725/split/split_dim:output:0$while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_725/SigmoidSigmoid"while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_1Sigmoid"while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mulMul!while/lstm_cell_725/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_725/ReluRelu"while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_1Mulwhile/lstm_cell_725/Sigmoid:y:0&while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/add_1AddV2while/lstm_cell_725/mul:z:0while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_725/Sigmoid_2Sigmoid"while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_725/Relu_1Reluwhile/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_725/mul_2Mul!while/lstm_cell_725/Sigmoid_2:y:0(while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_725/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_725/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_725/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_725/BiasAdd/ReadVariableOp*^while/lstm_cell_725/MatMul/ReadVariableOp,^while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_725_biasadd_readvariableop_resource5while_lstm_cell_725_biasadd_readvariableop_resource_0"n
4while_lstm_cell_725_matmul_1_readvariableop_resource6while_lstm_cell_725_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_725_matmul_readvariableop_resource4while_lstm_cell_725_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_725/BiasAdd/ReadVariableOp*while/lstm_cell_725/BiasAdd/ReadVariableOp2V
)while/lstm_cell_725/MatMul/ReadVariableOp)while/lstm_cell_725/MatMul/ReadVariableOp2Z
+while/lstm_cell_725/MatMul_1/ReadVariableOp+while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4387722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4387722___redundant_placeholder05
1while_while_cond_4387722___redundant_placeholder15
1while_while_cond_4387722___redundant_placeholder25
1while_while_cond_4387722___redundant_placeholder3
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4387075

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
?
?
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388503
lstm_723_input#
lstm_723_4388476:	?#
lstm_723_4388478:	d?
lstm_723_4388480:	?#
lstm_724_4388483:	d?#
lstm_724_4388485:	2?
lstm_724_4388487:	?"
lstm_725_4388490:2("
lstm_725_4388492:
(
lstm_725_4388494:(#
dense_241_4388497:

dense_241_4388499:
identity??!dense_241/StatefulPartitionedCall? lstm_723/StatefulPartitionedCall? lstm_724/StatefulPartitionedCall? lstm_725/StatefulPartitionedCall?
 lstm_723/StatefulPartitionedCallStatefulPartitionedCalllstm_723_inputlstm_723_4388476lstm_723_4388478lstm_723_4388480*
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4387507?
 lstm_724/StatefulPartitionedCallStatefulPartitionedCall)lstm_723/StatefulPartitionedCall:output:0lstm_724_4388483lstm_724_4388485lstm_724_4388487*
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4387657?
 lstm_725/StatefulPartitionedCallStatefulPartitionedCall)lstm_724/StatefulPartitionedCall:output:0lstm_725_4388490lstm_725_4388492lstm_725_4388494*
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4387807?
!dense_241/StatefulPartitionedCallStatefulPartitionedCall)lstm_725/StatefulPartitionedCall:output:0dense_241_4388497dense_241_4388499*
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
F__inference_dense_241_layer_call_and_return_conditional_losses_4387825y
IdentityIdentity*dense_241/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_241/StatefulPartitionedCall!^lstm_723/StatefulPartitionedCall!^lstm_724/StatefulPartitionedCall!^lstm_725/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_241/StatefulPartitionedCall!dense_241/StatefulPartitionedCall2D
 lstm_723/StatefulPartitionedCall lstm_723/StatefulPartitionedCall2D
 lstm_724/StatefulPartitionedCall lstm_724/StatefulPartitionedCall2D
 lstm_725/StatefulPartitionedCall lstm_725/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_723_input
?
?
/__inference_lstm_cell_724_layer_call_fn_4391458

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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4386725o
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
while_cond_4390337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4390337___redundant_placeholder05
1while_while_cond_4390337___redundant_placeholder15
1while_while_cond_4390337___redundant_placeholder25
1while_while_cond_4390337___redundant_placeholder3
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
*sequential_241_lstm_725_while_body_4386218L
Hsequential_241_lstm_725_while_sequential_241_lstm_725_while_loop_counterR
Nsequential_241_lstm_725_while_sequential_241_lstm_725_while_maximum_iterations-
)sequential_241_lstm_725_while_placeholder/
+sequential_241_lstm_725_while_placeholder_1/
+sequential_241_lstm_725_while_placeholder_2/
+sequential_241_lstm_725_while_placeholder_3K
Gsequential_241_lstm_725_while_sequential_241_lstm_725_strided_slice_1_0?
?sequential_241_lstm_725_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_725_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_241_lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0:2(`
Nsequential_241_lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0:
([
Msequential_241_lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0:(*
&sequential_241_lstm_725_while_identity,
(sequential_241_lstm_725_while_identity_1,
(sequential_241_lstm_725_while_identity_2,
(sequential_241_lstm_725_while_identity_3,
(sequential_241_lstm_725_while_identity_4,
(sequential_241_lstm_725_while_identity_5I
Esequential_241_lstm_725_while_sequential_241_lstm_725_strided_slice_1?
?sequential_241_lstm_725_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_725_tensorarrayunstack_tensorlistfromtensor\
Jsequential_241_lstm_725_while_lstm_cell_725_matmul_readvariableop_resource:2(^
Lsequential_241_lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource:
(Y
Ksequential_241_lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource:(??Bsequential_241/lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp?Asequential_241/lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp?Csequential_241/lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp?
Osequential_241/lstm_725/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_241/lstm_725/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_241_lstm_725_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_725_tensorarrayunstack_tensorlistfromtensor_0)sequential_241_lstm_725_while_placeholderXsequential_241/lstm_725/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_241/lstm_725/while/lstm_cell_725/MatMul/ReadVariableOpReadVariableOpLsequential_241_lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_241/lstm_725/while/lstm_cell_725/MatMulMatMulHsequential_241/lstm_725/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_241/lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_241/lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOpReadVariableOpNsequential_241_lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_241/lstm_725/while/lstm_cell_725/MatMul_1MatMul+sequential_241_lstm_725_while_placeholder_2Ksequential_241/lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_241/lstm_725/while/lstm_cell_725/addAddV2<sequential_241/lstm_725/while/lstm_cell_725/MatMul:product:0>sequential_241/lstm_725/while/lstm_cell_725/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_241/lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOpReadVariableOpMsequential_241_lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_241/lstm_725/while/lstm_cell_725/BiasAddBiasAdd3sequential_241/lstm_725/while/lstm_cell_725/add:z:0Jsequential_241/lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_241/lstm_725/while/lstm_cell_725/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_241/lstm_725/while/lstm_cell_725/splitSplitDsequential_241/lstm_725/while/lstm_cell_725/split/split_dim:output:0<sequential_241/lstm_725/while/lstm_cell_725/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_241/lstm_725/while/lstm_cell_725/SigmoidSigmoid:sequential_241/lstm_725/while/lstm_cell_725/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_241/lstm_725/while/lstm_cell_725/Sigmoid_1Sigmoid:sequential_241/lstm_725/while/lstm_cell_725/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_241/lstm_725/while/lstm_cell_725/mulMul9sequential_241/lstm_725/while/lstm_cell_725/Sigmoid_1:y:0+sequential_241_lstm_725_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_241/lstm_725/while/lstm_cell_725/ReluRelu:sequential_241/lstm_725/while/lstm_cell_725/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_241/lstm_725/while/lstm_cell_725/mul_1Mul7sequential_241/lstm_725/while/lstm_cell_725/Sigmoid:y:0>sequential_241/lstm_725/while/lstm_cell_725/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_241/lstm_725/while/lstm_cell_725/add_1AddV23sequential_241/lstm_725/while/lstm_cell_725/mul:z:05sequential_241/lstm_725/while/lstm_cell_725/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_241/lstm_725/while/lstm_cell_725/Sigmoid_2Sigmoid:sequential_241/lstm_725/while/lstm_cell_725/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_241/lstm_725/while/lstm_cell_725/Relu_1Relu5sequential_241/lstm_725/while/lstm_cell_725/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_241/lstm_725/while/lstm_cell_725/mul_2Mul9sequential_241/lstm_725/while/lstm_cell_725/Sigmoid_2:y:0@sequential_241/lstm_725/while/lstm_cell_725/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_241/lstm_725/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_241_lstm_725_while_placeholder_1)sequential_241_lstm_725_while_placeholder5sequential_241/lstm_725/while/lstm_cell_725/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_241/lstm_725/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_241/lstm_725/while/addAddV2)sequential_241_lstm_725_while_placeholder,sequential_241/lstm_725/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_241/lstm_725/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_241/lstm_725/while/add_1AddV2Hsequential_241_lstm_725_while_sequential_241_lstm_725_while_loop_counter.sequential_241/lstm_725/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_241/lstm_725/while/IdentityIdentity'sequential_241/lstm_725/while/add_1:z:0#^sequential_241/lstm_725/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_725/while/Identity_1IdentityNsequential_241_lstm_725_while_sequential_241_lstm_725_while_maximum_iterations#^sequential_241/lstm_725/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_725/while/Identity_2Identity%sequential_241/lstm_725/while/add:z:0#^sequential_241/lstm_725/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_725/while/Identity_3IdentityRsequential_241/lstm_725/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_241/lstm_725/while/NoOp*
T0*
_output_shapes
: ?
(sequential_241/lstm_725/while/Identity_4Identity5sequential_241/lstm_725/while/lstm_cell_725/mul_2:z:0#^sequential_241/lstm_725/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_241/lstm_725/while/Identity_5Identity5sequential_241/lstm_725/while/lstm_cell_725/add_1:z:0#^sequential_241/lstm_725/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_241/lstm_725/while/NoOpNoOpC^sequential_241/lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOpB^sequential_241/lstm_725/while/lstm_cell_725/MatMul/ReadVariableOpD^sequential_241/lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_241_lstm_725_while_identity/sequential_241/lstm_725/while/Identity:output:0"]
(sequential_241_lstm_725_while_identity_11sequential_241/lstm_725/while/Identity_1:output:0"]
(sequential_241_lstm_725_while_identity_21sequential_241/lstm_725/while/Identity_2:output:0"]
(sequential_241_lstm_725_while_identity_31sequential_241/lstm_725/while/Identity_3:output:0"]
(sequential_241_lstm_725_while_identity_41sequential_241/lstm_725/while/Identity_4:output:0"]
(sequential_241_lstm_725_while_identity_51sequential_241/lstm_725/while/Identity_5:output:0"?
Ksequential_241_lstm_725_while_lstm_cell_725_biasadd_readvariableop_resourceMsequential_241_lstm_725_while_lstm_cell_725_biasadd_readvariableop_resource_0"?
Lsequential_241_lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resourceNsequential_241_lstm_725_while_lstm_cell_725_matmul_1_readvariableop_resource_0"?
Jsequential_241_lstm_725_while_lstm_cell_725_matmul_readvariableop_resourceLsequential_241_lstm_725_while_lstm_cell_725_matmul_readvariableop_resource_0"?
Esequential_241_lstm_725_while_sequential_241_lstm_725_strided_slice_1Gsequential_241_lstm_725_while_sequential_241_lstm_725_strided_slice_1_0"?
?sequential_241_lstm_725_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_725_tensorarrayunstack_tensorlistfromtensor?sequential_241_lstm_725_while_tensorarrayv2read_tensorlistgetitem_sequential_241_lstm_725_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_241/lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOpBsequential_241/lstm_725/while/lstm_cell_725/BiasAdd/ReadVariableOp2?
Asequential_241/lstm_725/while/lstm_cell_725/MatMul/ReadVariableOpAsequential_241/lstm_725/while/lstm_cell_725/MatMul/ReadVariableOp2?
Csequential_241/lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOpCsequential_241/lstm_725/while/lstm_cell_725/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_723_while_cond_4389107.
*lstm_723_while_lstm_723_while_loop_counter4
0lstm_723_while_lstm_723_while_maximum_iterations
lstm_723_while_placeholder 
lstm_723_while_placeholder_1 
lstm_723_while_placeholder_2 
lstm_723_while_placeholder_30
,lstm_723_while_less_lstm_723_strided_slice_1G
Clstm_723_while_lstm_723_while_cond_4389107___redundant_placeholder0G
Clstm_723_while_lstm_723_while_cond_4389107___redundant_placeholder1G
Clstm_723_while_lstm_723_while_cond_4389107___redundant_placeholder2G
Clstm_723_while_lstm_723_while_cond_4389107___redundant_placeholder3
lstm_723_while_identity
?
lstm_723/while/LessLesslstm_723_while_placeholder,lstm_723_while_less_lstm_723_strided_slice_1*
T0*
_output_shapes
: ]
lstm_723/while/IdentityIdentitylstm_723/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_723_while_identity lstm_723/while/Identity:output:0*(
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
lstm_723_input;
 serving_default_lstm_723_input:0?????????=
	dense_2410
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
2dense_241/kernel
:2dense_241/bias
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
0:.	?2lstm_723/lstm_cell_723/kernel
::8	d?2'lstm_723/lstm_cell_723/recurrent_kernel
*:(?2lstm_723/lstm_cell_723/bias
0:.	d?2lstm_724/lstm_cell_724/kernel
::8	2?2'lstm_724/lstm_cell_724/recurrent_kernel
*:(?2lstm_724/lstm_cell_724/bias
/:-2(2lstm_725/lstm_cell_725/kernel
9:7
(2'lstm_725/lstm_cell_725/recurrent_kernel
):'(2lstm_725/lstm_cell_725/bias
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
2Adam/dense_241/kernel/m
!:2Adam/dense_241/bias/m
5:3	?2$Adam/lstm_723/lstm_cell_723/kernel/m
?:=	d?2.Adam/lstm_723/lstm_cell_723/recurrent_kernel/m
/:-?2"Adam/lstm_723/lstm_cell_723/bias/m
5:3	d?2$Adam/lstm_724/lstm_cell_724/kernel/m
?:=	2?2.Adam/lstm_724/lstm_cell_724/recurrent_kernel/m
/:-?2"Adam/lstm_724/lstm_cell_724/bias/m
4:22(2$Adam/lstm_725/lstm_cell_725/kernel/m
>:<
(2.Adam/lstm_725/lstm_cell_725/recurrent_kernel/m
.:,(2"Adam/lstm_725/lstm_cell_725/bias/m
':%
2Adam/dense_241/kernel/v
!:2Adam/dense_241/bias/v
5:3	?2$Adam/lstm_723/lstm_cell_723/kernel/v
?:=	d?2.Adam/lstm_723/lstm_cell_723/recurrent_kernel/v
/:-?2"Adam/lstm_723/lstm_cell_723/bias/v
5:3	d?2$Adam/lstm_724/lstm_cell_724/kernel/v
?:=	2?2.Adam/lstm_724/lstm_cell_724/recurrent_kernel/v
/:-?2"Adam/lstm_724/lstm_cell_724/bias/v
4:22(2$Adam/lstm_725/lstm_cell_725/kernel/v
>:<
(2.Adam/lstm_725/lstm_cell_725/recurrent_kernel/v
.:,(2"Adam/lstm_725/lstm_cell_725/bias/v
?2?
0__inference_sequential_241_layer_call_fn_4387857
0__inference_sequential_241_layer_call_fn_4388595
0__inference_sequential_241_layer_call_fn_4388622
0__inference_sequential_241_layer_call_fn_4388473?
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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4389049
K__inference_sequential_241_layer_call_and_return_conditional_losses_4389476
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388503
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388533?
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
"__inference__wrapped_model_4386308lstm_723_input"?
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
*__inference_lstm_723_layer_call_fn_4389487
*__inference_lstm_723_layer_call_fn_4389498
*__inference_lstm_723_layer_call_fn_4389509
*__inference_lstm_723_layer_call_fn_4389520?
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389663
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389806
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389949
E__inference_lstm_723_layer_call_and_return_conditional_losses_4390092?
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
*__inference_lstm_724_layer_call_fn_4390103
*__inference_lstm_724_layer_call_fn_4390114
*__inference_lstm_724_layer_call_fn_4390125
*__inference_lstm_724_layer_call_fn_4390136?
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390279
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390422
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390565
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390708?
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
*__inference_lstm_725_layer_call_fn_4390719
*__inference_lstm_725_layer_call_fn_4390730
*__inference_lstm_725_layer_call_fn_4390741
*__inference_lstm_725_layer_call_fn_4390752?
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4390895
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391038
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391181
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391324?
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
+__inference_dense_241_layer_call_fn_4391333?
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
F__inference_dense_241_layer_call_and_return_conditional_losses_4391343?
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
%__inference_signature_wrapper_4388568lstm_723_input"?
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
/__inference_lstm_cell_723_layer_call_fn_4391360
/__inference_lstm_cell_723_layer_call_fn_4391377?
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4391409
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4391441?
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
/__inference_lstm_cell_724_layer_call_fn_4391458
/__inference_lstm_cell_724_layer_call_fn_4391475?
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4391507
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4391539?
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
/__inference_lstm_cell_725_layer_call_fn_4391556
/__inference_lstm_cell_725_layer_call_fn_4391573?
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4391605
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4391637?
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
"__inference__wrapped_model_4386308?-./012345!";?8
1?.
,?)
lstm_723_input?????????
? "5?2
0
	dense_241#? 
	dense_241??????????
F__inference_dense_241_layer_call_and_return_conditional_losses_4391343\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_241_layer_call_fn_4391333O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389663?-./O?L
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389806?-./O?L
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4389949q-./??<
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
E__inference_lstm_723_layer_call_and_return_conditional_losses_4390092q-./??<
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
*__inference_lstm_723_layer_call_fn_4389487}-./O?L
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
*__inference_lstm_723_layer_call_fn_4389498}-./O?L
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
*__inference_lstm_723_layer_call_fn_4389509d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_723_layer_call_fn_4389520d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390279?012O?L
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390422?012O?L
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390565q012??<
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
E__inference_lstm_724_layer_call_and_return_conditional_losses_4390708q012??<
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
*__inference_lstm_724_layer_call_fn_4390103}012O?L
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
*__inference_lstm_724_layer_call_fn_4390114}012O?L
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
*__inference_lstm_724_layer_call_fn_4390125d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_724_layer_call_fn_4390136d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_725_layer_call_and_return_conditional_losses_4390895}345O?L
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391038}345O?L
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391181m345??<
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
E__inference_lstm_725_layer_call_and_return_conditional_losses_4391324m345??<
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
*__inference_lstm_725_layer_call_fn_4390719p345O?L
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
*__inference_lstm_725_layer_call_fn_4390730p345O?L
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
*__inference_lstm_725_layer_call_fn_4390741`345??<
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
*__inference_lstm_725_layer_call_fn_4390752`345??<
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4391409?-./??}
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
J__inference_lstm_cell_723_layer_call_and_return_conditional_losses_4391441?-./??}
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
/__inference_lstm_cell_723_layer_call_fn_4391360?-./??}
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
/__inference_lstm_cell_723_layer_call_fn_4391377?-./??}
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4391507?012??}
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
J__inference_lstm_cell_724_layer_call_and_return_conditional_losses_4391539?012??}
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
/__inference_lstm_cell_724_layer_call_fn_4391458?012??}
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
/__inference_lstm_cell_724_layer_call_fn_4391475?012??}
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4391605?345??}
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
J__inference_lstm_cell_725_layer_call_and_return_conditional_losses_4391637?345??}
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
/__inference_lstm_cell_725_layer_call_fn_4391556?345??}
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
/__inference_lstm_cell_725_layer_call_fn_4391573?345??}
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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388503y-./012345!"C?@
9?6
,?)
lstm_723_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_241_layer_call_and_return_conditional_losses_4388533y-./012345!"C?@
9?6
,?)
lstm_723_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_241_layer_call_and_return_conditional_losses_4389049q-./012345!";?8
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
K__inference_sequential_241_layer_call_and_return_conditional_losses_4389476q-./012345!";?8
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
0__inference_sequential_241_layer_call_fn_4387857l-./012345!"C?@
9?6
,?)
lstm_723_input?????????
p 

 
? "???????????
0__inference_sequential_241_layer_call_fn_4388473l-./012345!"C?@
9?6
,?)
lstm_723_input?????????
p

 
? "???????????
0__inference_sequential_241_layer_call_fn_4388595d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_241_layer_call_fn_4388622d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4388568?-./012345!"M?J
? 
C?@
>
lstm_723_input,?)
lstm_723_input?????????"5?2
0
	dense_241#? 
	dense_241?????????