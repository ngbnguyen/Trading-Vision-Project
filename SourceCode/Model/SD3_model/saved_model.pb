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
dense_261/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_261/kernel
u
$dense_261/kernel/Read/ReadVariableOpReadVariableOpdense_261/kernel*
_output_shapes

:
*
dtype0
t
dense_261/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_261/bias
m
"dense_261/bias/Read/ReadVariableOpReadVariableOpdense_261/bias*
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
lstm_783/lstm_cell_783/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_783/lstm_cell_783/kernel
?
1lstm_783/lstm_cell_783/kernel/Read/ReadVariableOpReadVariableOplstm_783/lstm_cell_783/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_783/lstm_cell_783/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_783/lstm_cell_783/recurrent_kernel
?
;lstm_783/lstm_cell_783/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_783/lstm_cell_783/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_783/lstm_cell_783/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_783/lstm_cell_783/bias
?
/lstm_783/lstm_cell_783/bias/Read/ReadVariableOpReadVariableOplstm_783/lstm_cell_783/bias*
_output_shapes	
:?*
dtype0
?
lstm_784/lstm_cell_784/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_784/lstm_cell_784/kernel
?
1lstm_784/lstm_cell_784/kernel/Read/ReadVariableOpReadVariableOplstm_784/lstm_cell_784/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_784/lstm_cell_784/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_784/lstm_cell_784/recurrent_kernel
?
;lstm_784/lstm_cell_784/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_784/lstm_cell_784/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_784/lstm_cell_784/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_784/lstm_cell_784/bias
?
/lstm_784/lstm_cell_784/bias/Read/ReadVariableOpReadVariableOplstm_784/lstm_cell_784/bias*
_output_shapes	
:?*
dtype0
?
lstm_785/lstm_cell_785/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_785/lstm_cell_785/kernel
?
1lstm_785/lstm_cell_785/kernel/Read/ReadVariableOpReadVariableOplstm_785/lstm_cell_785/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_785/lstm_cell_785/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_785/lstm_cell_785/recurrent_kernel
?
;lstm_785/lstm_cell_785/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_785/lstm_cell_785/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_785/lstm_cell_785/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_785/lstm_cell_785/bias
?
/lstm_785/lstm_cell_785/bias/Read/ReadVariableOpReadVariableOplstm_785/lstm_cell_785/bias*
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
Adam/dense_261/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_261/kernel/m
?
+Adam/dense_261/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_261/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_261/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_261/bias/m
{
)Adam/dense_261/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_261/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_783/lstm_cell_783/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_783/lstm_cell_783/kernel/m
?
8Adam/lstm_783/lstm_cell_783/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_783/lstm_cell_783/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_783/lstm_cell_783/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_783/lstm_cell_783/recurrent_kernel/m
?
BAdam/lstm_783/lstm_cell_783/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_783/lstm_cell_783/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_783/lstm_cell_783/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_783/lstm_cell_783/bias/m
?
6Adam/lstm_783/lstm_cell_783/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_783/lstm_cell_783/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_784/lstm_cell_784/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_784/lstm_cell_784/kernel/m
?
8Adam/lstm_784/lstm_cell_784/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_784/lstm_cell_784/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_784/lstm_cell_784/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_784/lstm_cell_784/recurrent_kernel/m
?
BAdam/lstm_784/lstm_cell_784/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_784/lstm_cell_784/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_784/lstm_cell_784/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_784/lstm_cell_784/bias/m
?
6Adam/lstm_784/lstm_cell_784/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_784/lstm_cell_784/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_785/lstm_cell_785/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_785/lstm_cell_785/kernel/m
?
8Adam/lstm_785/lstm_cell_785/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_785/lstm_cell_785/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_785/lstm_cell_785/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_785/lstm_cell_785/recurrent_kernel/m
?
BAdam/lstm_785/lstm_cell_785/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_785/lstm_cell_785/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_785/lstm_cell_785/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_785/lstm_cell_785/bias/m
?
6Adam/lstm_785/lstm_cell_785/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_785/lstm_cell_785/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_261/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_261/kernel/v
?
+Adam/dense_261/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_261/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_261/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_261/bias/v
{
)Adam/dense_261/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_261/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_783/lstm_cell_783/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_783/lstm_cell_783/kernel/v
?
8Adam/lstm_783/lstm_cell_783/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_783/lstm_cell_783/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_783/lstm_cell_783/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_783/lstm_cell_783/recurrent_kernel/v
?
BAdam/lstm_783/lstm_cell_783/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_783/lstm_cell_783/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_783/lstm_cell_783/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_783/lstm_cell_783/bias/v
?
6Adam/lstm_783/lstm_cell_783/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_783/lstm_cell_783/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_784/lstm_cell_784/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_784/lstm_cell_784/kernel/v
?
8Adam/lstm_784/lstm_cell_784/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_784/lstm_cell_784/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_784/lstm_cell_784/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_784/lstm_cell_784/recurrent_kernel/v
?
BAdam/lstm_784/lstm_cell_784/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_784/lstm_cell_784/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_784/lstm_cell_784/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_784/lstm_cell_784/bias/v
?
6Adam/lstm_784/lstm_cell_784/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_784/lstm_cell_784/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_785/lstm_cell_785/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_785/lstm_cell_785/kernel/v
?
8Adam/lstm_785/lstm_cell_785/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_785/lstm_cell_785/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_785/lstm_cell_785/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_785/lstm_cell_785/recurrent_kernel/v
?
BAdam/lstm_785/lstm_cell_785/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_785/lstm_cell_785/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_785/lstm_cell_785/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_785/lstm_cell_785/bias/v
?
6Adam/lstm_785/lstm_cell_785/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_785/lstm_cell_785/bias/v*
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
VARIABLE_VALUEdense_261/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_261/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_783/lstm_cell_783/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_783/lstm_cell_783/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_783/lstm_cell_783/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_784/lstm_cell_784/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_784/lstm_cell_784/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_784/lstm_cell_784/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_785/lstm_cell_785/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_785/lstm_cell_785/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_785/lstm_cell_785/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_261/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_261/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_783/lstm_cell_783/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_783/lstm_cell_783/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_783/lstm_cell_783/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_784/lstm_cell_784/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_784/lstm_cell_784/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_784/lstm_cell_784/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_785/lstm_cell_785/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_785/lstm_cell_785/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_785/lstm_cell_785/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_261/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_261/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_783/lstm_cell_783/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_783/lstm_cell_783/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_783/lstm_cell_783/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_784/lstm_cell_784/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_784/lstm_cell_784/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_784/lstm_cell_784/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_785/lstm_cell_785/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_785/lstm_cell_785/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_785/lstm_cell_785/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_783_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_783_inputlstm_783/lstm_cell_783/kernel'lstm_783/lstm_cell_783/recurrent_kernellstm_783/lstm_cell_783/biaslstm_784/lstm_cell_784/kernel'lstm_784/lstm_cell_784/recurrent_kernellstm_784/lstm_cell_784/biaslstm_785/lstm_cell_785/kernel'lstm_785/lstm_cell_785/recurrent_kernellstm_785/lstm_cell_785/biasdense_261/kerneldense_261/bias*
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
%__inference_signature_wrapper_4025917
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_261/kernel/Read/ReadVariableOp"dense_261/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_783/lstm_cell_783/kernel/Read/ReadVariableOp;lstm_783/lstm_cell_783/recurrent_kernel/Read/ReadVariableOp/lstm_783/lstm_cell_783/bias/Read/ReadVariableOp1lstm_784/lstm_cell_784/kernel/Read/ReadVariableOp;lstm_784/lstm_cell_784/recurrent_kernel/Read/ReadVariableOp/lstm_784/lstm_cell_784/bias/Read/ReadVariableOp1lstm_785/lstm_cell_785/kernel/Read/ReadVariableOp;lstm_785/lstm_cell_785/recurrent_kernel/Read/ReadVariableOp/lstm_785/lstm_cell_785/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_261/kernel/m/Read/ReadVariableOp)Adam/dense_261/bias/m/Read/ReadVariableOp8Adam/lstm_783/lstm_cell_783/kernel/m/Read/ReadVariableOpBAdam/lstm_783/lstm_cell_783/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_783/lstm_cell_783/bias/m/Read/ReadVariableOp8Adam/lstm_784/lstm_cell_784/kernel/m/Read/ReadVariableOpBAdam/lstm_784/lstm_cell_784/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_784/lstm_cell_784/bias/m/Read/ReadVariableOp8Adam/lstm_785/lstm_cell_785/kernel/m/Read/ReadVariableOpBAdam/lstm_785/lstm_cell_785/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_785/lstm_cell_785/bias/m/Read/ReadVariableOp+Adam/dense_261/kernel/v/Read/ReadVariableOp)Adam/dense_261/bias/v/Read/ReadVariableOp8Adam/lstm_783/lstm_cell_783/kernel/v/Read/ReadVariableOpBAdam/lstm_783/lstm_cell_783/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_783/lstm_cell_783/bias/v/Read/ReadVariableOp8Adam/lstm_784/lstm_cell_784/kernel/v/Read/ReadVariableOpBAdam/lstm_784/lstm_cell_784/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_784/lstm_cell_784/bias/v/Read/ReadVariableOp8Adam/lstm_785/lstm_cell_785/kernel/v/Read/ReadVariableOpBAdam/lstm_785/lstm_cell_785/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_785/lstm_cell_785/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_4029129
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_261/kerneldense_261/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_783/lstm_cell_783/kernel'lstm_783/lstm_cell_783/recurrent_kernellstm_783/lstm_cell_783/biaslstm_784/lstm_cell_784/kernel'lstm_784/lstm_cell_784/recurrent_kernellstm_784/lstm_cell_784/biaslstm_785/lstm_cell_785/kernel'lstm_785/lstm_cell_785/recurrent_kernellstm_785/lstm_cell_785/biastotalcountAdam/dense_261/kernel/mAdam/dense_261/bias/m$Adam/lstm_783/lstm_cell_783/kernel/m.Adam/lstm_783/lstm_cell_783/recurrent_kernel/m"Adam/lstm_783/lstm_cell_783/bias/m$Adam/lstm_784/lstm_cell_784/kernel/m.Adam/lstm_784/lstm_cell_784/recurrent_kernel/m"Adam/lstm_784/lstm_cell_784/bias/m$Adam/lstm_785/lstm_cell_785/kernel/m.Adam/lstm_785/lstm_cell_785/recurrent_kernel/m"Adam/lstm_785/lstm_cell_785/bias/mAdam/dense_261/kernel/vAdam/dense_261/bias/v$Adam/lstm_783/lstm_cell_783/kernel/v.Adam/lstm_783/lstm_cell_783/recurrent_kernel/v"Adam/lstm_783/lstm_cell_783/bias/v$Adam/lstm_784/lstm_cell_784/kernel/v.Adam/lstm_784/lstm_cell_784/recurrent_kernel/v"Adam/lstm_784/lstm_cell_784/bias/v$Adam/lstm_785/lstm_cell_785/kernel/v.Adam/lstm_785/lstm_cell_785/recurrent_kernel/v"Adam/lstm_785/lstm_cell_785/bias/v*4
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
#__inference__traced_restore_4029259??+
?8
?
while_body_4024772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_663_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_663_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_663_matmul_readvariableop_resource:	?G
4while_lstm_cell_663_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_663_biasadd_readvariableop_resource:	???*while/lstm_cell_663/BiasAdd/ReadVariableOp?)while/lstm_cell_663/MatMul/ReadVariableOp?+while/lstm_cell_663/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_663/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_663/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_663/addAddV2$while/lstm_cell_663/MatMul:product:0&while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_663/BiasAddBiasAddwhile/lstm_cell_663/add:z:02while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_663/splitSplit,while/lstm_cell_663/split/split_dim:output:0$while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_663/SigmoidSigmoid"while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_1Sigmoid"while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mulMul!while/lstm_cell_663/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_663/ReluRelu"while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_1Mulwhile/lstm_cell_663/Sigmoid:y:0&while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/add_1AddV2while/lstm_cell_663/mul:z:0while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_2Sigmoid"while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_663/Relu_1Reluwhile/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_2Mul!while/lstm_cell_663/Sigmoid_2:y:0(while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_663/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_663/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_663/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_663/BiasAdd/ReadVariableOp*^while/lstm_cell_663/MatMul/ReadVariableOp,^while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_663_biasadd_readvariableop_resource5while_lstm_cell_663_biasadd_readvariableop_resource_0"n
4while_lstm_cell_663_matmul_1_readvariableop_resource6while_lstm_cell_663_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_663_matmul_readvariableop_resource4while_lstm_cell_663_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_663/BiasAdd/ReadVariableOp*while/lstm_cell_663/BiasAdd/ReadVariableOp2V
)while/lstm_cell_663/MatMul/ReadVariableOp)while/lstm_cell_663/MatMul/ReadVariableOp2Z
+while/lstm_cell_663/MatMul_1/ReadVariableOp+while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4025072
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_665_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_665_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_665_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_665_matmul_readvariableop_resource:2(F
4while_lstm_cell_665_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_665_biasadd_readvariableop_resource:(??*while/lstm_cell_665/BiasAdd/ReadVariableOp?)while/lstm_cell_665/MatMul/ReadVariableOp?+while/lstm_cell_665/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_665/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_665/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_665/addAddV2$while/lstm_cell_665/MatMul:product:0&while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_665/BiasAddBiasAddwhile/lstm_cell_665/add:z:02while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_665/splitSplit,while/lstm_cell_665/split/split_dim:output:0$while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_665/SigmoidSigmoid"while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_1Sigmoid"while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mulMul!while/lstm_cell_665/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_665/ReluRelu"while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_1Mulwhile/lstm_cell_665/Sigmoid:y:0&while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/add_1AddV2while/lstm_cell_665/mul:z:0while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_2Sigmoid"while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_665/Relu_1Reluwhile/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_2Mul!while/lstm_cell_665/Sigmoid_2:y:0(while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_665/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_665/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_665/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_665/BiasAdd/ReadVariableOp*^while/lstm_cell_665/MatMul/ReadVariableOp,^while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_665_biasadd_readvariableop_resource5while_lstm_cell_665_biasadd_readvariableop_resource_0"n
4while_lstm_cell_665_matmul_1_readvariableop_resource6while_lstm_cell_665_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_665_matmul_readvariableop_resource4while_lstm_cell_665_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_665/BiasAdd/ReadVariableOp*while/lstm_cell_665/BiasAdd/ReadVariableOp2V
)while/lstm_cell_665/MatMul/ReadVariableOp)while/lstm_cell_665/MatMul/ReadVariableOp2Z
+while/lstm_cell_665/MatMul_1/ReadVariableOp+while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4024088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_664_4024112_0:	d?0
while_lstm_cell_664_4024114_0:	2?,
while_lstm_cell_664_4024116_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_664_4024112:	d?.
while_lstm_cell_664_4024114:	2?*
while_lstm_cell_664_4024116:	???+while/lstm_cell_664/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_664/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_664_4024112_0while_lstm_cell_664_4024114_0while_lstm_cell_664_4024116_0*
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4024074?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_664/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_664/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_664/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_664/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_664_4024112while_lstm_cell_664_4024112_0"<
while_lstm_cell_664_4024114while_lstm_cell_664_4024114_0"<
while_lstm_cell_664_4024116while_lstm_cell_664_4024116_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_664/StatefulPartitionedCall+while/lstm_cell_664/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4024220

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
?T
?
*sequential_261_lstm_784_while_body_4023428L
Hsequential_261_lstm_784_while_sequential_261_lstm_784_while_loop_counterR
Nsequential_261_lstm_784_while_sequential_261_lstm_784_while_maximum_iterations-
)sequential_261_lstm_784_while_placeholder/
+sequential_261_lstm_784_while_placeholder_1/
+sequential_261_lstm_784_while_placeholder_2/
+sequential_261_lstm_784_while_placeholder_3K
Gsequential_261_lstm_784_while_sequential_261_lstm_784_strided_slice_1_0?
?sequential_261_lstm_784_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_784_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_261_lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0:	d?a
Nsequential_261_lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?\
Msequential_261_lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0:	?*
&sequential_261_lstm_784_while_identity,
(sequential_261_lstm_784_while_identity_1,
(sequential_261_lstm_784_while_identity_2,
(sequential_261_lstm_784_while_identity_3,
(sequential_261_lstm_784_while_identity_4,
(sequential_261_lstm_784_while_identity_5I
Esequential_261_lstm_784_while_sequential_261_lstm_784_strided_slice_1?
?sequential_261_lstm_784_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_784_tensorarrayunstack_tensorlistfromtensor]
Jsequential_261_lstm_784_while_lstm_cell_664_matmul_readvariableop_resource:	d?_
Lsequential_261_lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource:	2?Z
Ksequential_261_lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource:	???Bsequential_261/lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp?Asequential_261/lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp?Csequential_261/lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp?
Osequential_261/lstm_784/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
Asequential_261/lstm_784/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_261_lstm_784_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_784_tensorarrayunstack_tensorlistfromtensor_0)sequential_261_lstm_784_while_placeholderXsequential_261/lstm_784/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
Asequential_261/lstm_784/while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOpLsequential_261_lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
2sequential_261/lstm_784/while/lstm_cell_664/MatMulMatMulHsequential_261/lstm_784/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_261/lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_261/lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOpNsequential_261_lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
4sequential_261/lstm_784/while/lstm_cell_664/MatMul_1MatMul+sequential_261_lstm_784_while_placeholder_2Ksequential_261/lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_261/lstm_784/while/lstm_cell_664/addAddV2<sequential_261/lstm_784/while/lstm_cell_664/MatMul:product:0>sequential_261/lstm_784/while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_261/lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOpMsequential_261_lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_261/lstm_784/while/lstm_cell_664/BiasAddBiasAdd3sequential_261/lstm_784/while/lstm_cell_664/add:z:0Jsequential_261/lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_261/lstm_784/while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_261/lstm_784/while/lstm_cell_664/splitSplitDsequential_261/lstm_784/while/lstm_cell_664/split/split_dim:output:0<sequential_261/lstm_784/while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
3sequential_261/lstm_784/while/lstm_cell_664/SigmoidSigmoid:sequential_261/lstm_784/while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2?
5sequential_261/lstm_784/while/lstm_cell_664/Sigmoid_1Sigmoid:sequential_261/lstm_784/while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
/sequential_261/lstm_784/while/lstm_cell_664/mulMul9sequential_261/lstm_784/while/lstm_cell_664/Sigmoid_1:y:0+sequential_261_lstm_784_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
0sequential_261/lstm_784/while/lstm_cell_664/ReluRelu:sequential_261/lstm_784/while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
1sequential_261/lstm_784/while/lstm_cell_664/mul_1Mul7sequential_261/lstm_784/while/lstm_cell_664/Sigmoid:y:0>sequential_261/lstm_784/while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
1sequential_261/lstm_784/while/lstm_cell_664/add_1AddV23sequential_261/lstm_784/while/lstm_cell_664/mul:z:05sequential_261/lstm_784/while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
5sequential_261/lstm_784/while/lstm_cell_664/Sigmoid_2Sigmoid:sequential_261/lstm_784/while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2?
2sequential_261/lstm_784/while/lstm_cell_664/Relu_1Relu5sequential_261/lstm_784/while/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
1sequential_261/lstm_784/while/lstm_cell_664/mul_2Mul9sequential_261/lstm_784/while/lstm_cell_664/Sigmoid_2:y:0@sequential_261/lstm_784/while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Bsequential_261/lstm_784/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_261_lstm_784_while_placeholder_1)sequential_261_lstm_784_while_placeholder5sequential_261/lstm_784/while/lstm_cell_664/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_261/lstm_784/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_261/lstm_784/while/addAddV2)sequential_261_lstm_784_while_placeholder,sequential_261/lstm_784/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_261/lstm_784/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_261/lstm_784/while/add_1AddV2Hsequential_261_lstm_784_while_sequential_261_lstm_784_while_loop_counter.sequential_261/lstm_784/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_261/lstm_784/while/IdentityIdentity'sequential_261/lstm_784/while/add_1:z:0#^sequential_261/lstm_784/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_784/while/Identity_1IdentityNsequential_261_lstm_784_while_sequential_261_lstm_784_while_maximum_iterations#^sequential_261/lstm_784/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_784/while/Identity_2Identity%sequential_261/lstm_784/while/add:z:0#^sequential_261/lstm_784/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_784/while/Identity_3IdentityRsequential_261/lstm_784/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_261/lstm_784/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_784/while/Identity_4Identity5sequential_261/lstm_784/while/lstm_cell_664/mul_2:z:0#^sequential_261/lstm_784/while/NoOp*
T0*'
_output_shapes
:?????????2?
(sequential_261/lstm_784/while/Identity_5Identity5sequential_261/lstm_784/while/lstm_cell_664/add_1:z:0#^sequential_261/lstm_784/while/NoOp*
T0*'
_output_shapes
:?????????2?
"sequential_261/lstm_784/while/NoOpNoOpC^sequential_261/lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOpB^sequential_261/lstm_784/while/lstm_cell_664/MatMul/ReadVariableOpD^sequential_261/lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_261_lstm_784_while_identity/sequential_261/lstm_784/while/Identity:output:0"]
(sequential_261_lstm_784_while_identity_11sequential_261/lstm_784/while/Identity_1:output:0"]
(sequential_261_lstm_784_while_identity_21sequential_261/lstm_784/while/Identity_2:output:0"]
(sequential_261_lstm_784_while_identity_31sequential_261/lstm_784/while/Identity_3:output:0"]
(sequential_261_lstm_784_while_identity_41sequential_261/lstm_784/while/Identity_4:output:0"]
(sequential_261_lstm_784_while_identity_51sequential_261/lstm_784/while/Identity_5:output:0"?
Ksequential_261_lstm_784_while_lstm_cell_664_biasadd_readvariableop_resourceMsequential_261_lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0"?
Lsequential_261_lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resourceNsequential_261_lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0"?
Jsequential_261_lstm_784_while_lstm_cell_664_matmul_readvariableop_resourceLsequential_261_lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0"?
Esequential_261_lstm_784_while_sequential_261_lstm_784_strided_slice_1Gsequential_261_lstm_784_while_sequential_261_lstm_784_strided_slice_1_0"?
?sequential_261_lstm_784_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_784_tensorarrayunstack_tensorlistfromtensor?sequential_261_lstm_784_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_784_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Bsequential_261/lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOpBsequential_261/lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp2?
Asequential_261/lstm_784/while/lstm_cell_664/MatMul/ReadVariableOpAsequential_261/lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp2?
Csequential_261/lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOpCsequential_261/lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4028758

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
while_cond_4028302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4028302___redundant_placeholder05
1while_while_cond_4028302___redundant_placeholder15
1while_while_cond_4028302___redundant_placeholder25
1while_while_cond_4028302___redundant_placeholder3
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
"__inference__wrapped_model_4023657
lstm_783_inputW
Dsequential_261_lstm_783_lstm_cell_663_matmul_readvariableop_resource:	?Y
Fsequential_261_lstm_783_lstm_cell_663_matmul_1_readvariableop_resource:	d?T
Esequential_261_lstm_783_lstm_cell_663_biasadd_readvariableop_resource:	?W
Dsequential_261_lstm_784_lstm_cell_664_matmul_readvariableop_resource:	d?Y
Fsequential_261_lstm_784_lstm_cell_664_matmul_1_readvariableop_resource:	2?T
Esequential_261_lstm_784_lstm_cell_664_biasadd_readvariableop_resource:	?V
Dsequential_261_lstm_785_lstm_cell_665_matmul_readvariableop_resource:2(X
Fsequential_261_lstm_785_lstm_cell_665_matmul_1_readvariableop_resource:
(S
Esequential_261_lstm_785_lstm_cell_665_biasadd_readvariableop_resource:(I
7sequential_261_dense_261_matmul_readvariableop_resource:
F
8sequential_261_dense_261_biasadd_readvariableop_resource:
identity??/sequential_261/dense_261/BiasAdd/ReadVariableOp?.sequential_261/dense_261/MatMul/ReadVariableOp?<sequential_261/lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp?;sequential_261/lstm_783/lstm_cell_663/MatMul/ReadVariableOp?=sequential_261/lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp?sequential_261/lstm_783/while?<sequential_261/lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp?;sequential_261/lstm_784/lstm_cell_664/MatMul/ReadVariableOp?=sequential_261/lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp?sequential_261/lstm_784/while?<sequential_261/lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp?;sequential_261/lstm_785/lstm_cell_665/MatMul/ReadVariableOp?=sequential_261/lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp?sequential_261/lstm_785/while[
sequential_261/lstm_783/ShapeShapelstm_783_input*
T0*
_output_shapes
:u
+sequential_261/lstm_783/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_261/lstm_783/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_261/lstm_783/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_261/lstm_783/strided_sliceStridedSlice&sequential_261/lstm_783/Shape:output:04sequential_261/lstm_783/strided_slice/stack:output:06sequential_261/lstm_783/strided_slice/stack_1:output:06sequential_261/lstm_783/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_261/lstm_783/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
$sequential_261/lstm_783/zeros/packedPack.sequential_261/lstm_783/strided_slice:output:0/sequential_261/lstm_783/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_261/lstm_783/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_261/lstm_783/zerosFill-sequential_261/lstm_783/zeros/packed:output:0,sequential_261/lstm_783/zeros/Const:output:0*
T0*'
_output_shapes
:?????????dj
(sequential_261/lstm_783/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
&sequential_261/lstm_783/zeros_1/packedPack.sequential_261/lstm_783/strided_slice:output:01sequential_261/lstm_783/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_261/lstm_783/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_261/lstm_783/zeros_1Fill/sequential_261/lstm_783/zeros_1/packed:output:0.sequential_261/lstm_783/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????d{
&sequential_261/lstm_783/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_261/lstm_783/transpose	Transposelstm_783_input/sequential_261/lstm_783/transpose/perm:output:0*
T0*+
_output_shapes
:?????????t
sequential_261/lstm_783/Shape_1Shape%sequential_261/lstm_783/transpose:y:0*
T0*
_output_shapes
:w
-sequential_261/lstm_783/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_783/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_261/lstm_783/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_783/strided_slice_1StridedSlice(sequential_261/lstm_783/Shape_1:output:06sequential_261/lstm_783/strided_slice_1/stack:output:08sequential_261/lstm_783/strided_slice_1/stack_1:output:08sequential_261/lstm_783/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_261/lstm_783/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_261/lstm_783/TensorArrayV2TensorListReserve<sequential_261/lstm_783/TensorArrayV2/element_shape:output:00sequential_261/lstm_783/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_261/lstm_783/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
?sequential_261/lstm_783/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_261/lstm_783/transpose:y:0Vsequential_261/lstm_783/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_261/lstm_783/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_783/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_261/lstm_783/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_783/strided_slice_2StridedSlice%sequential_261/lstm_783/transpose:y:06sequential_261/lstm_783/strided_slice_2/stack:output:08sequential_261/lstm_783/strided_slice_2/stack_1:output:08sequential_261/lstm_783/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
;sequential_261/lstm_783/lstm_cell_663/MatMul/ReadVariableOpReadVariableOpDsequential_261_lstm_783_lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
,sequential_261/lstm_783/lstm_cell_663/MatMulMatMul0sequential_261/lstm_783/strided_slice_2:output:0Csequential_261/lstm_783/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_261/lstm_783/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOpFsequential_261_lstm_783_lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
.sequential_261/lstm_783/lstm_cell_663/MatMul_1MatMul&sequential_261/lstm_783/zeros:output:0Esequential_261/lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_261/lstm_783/lstm_cell_663/addAddV26sequential_261/lstm_783/lstm_cell_663/MatMul:product:08sequential_261/lstm_783/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_261/lstm_783/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOpEsequential_261_lstm_783_lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_261/lstm_783/lstm_cell_663/BiasAddBiasAdd-sequential_261/lstm_783/lstm_cell_663/add:z:0Dsequential_261/lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_261/lstm_783/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_261/lstm_783/lstm_cell_663/splitSplit>sequential_261/lstm_783/lstm_cell_663/split/split_dim:output:06sequential_261/lstm_783/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
-sequential_261/lstm_783/lstm_cell_663/SigmoidSigmoid4sequential_261/lstm_783/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d?
/sequential_261/lstm_783/lstm_cell_663/Sigmoid_1Sigmoid4sequential_261/lstm_783/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
)sequential_261/lstm_783/lstm_cell_663/mulMul3sequential_261/lstm_783/lstm_cell_663/Sigmoid_1:y:0(sequential_261/lstm_783/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_261/lstm_783/lstm_cell_663/ReluRelu4sequential_261/lstm_783/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
+sequential_261/lstm_783/lstm_cell_663/mul_1Mul1sequential_261/lstm_783/lstm_cell_663/Sigmoid:y:08sequential_261/lstm_783/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
+sequential_261/lstm_783/lstm_cell_663/add_1AddV2-sequential_261/lstm_783/lstm_cell_663/mul:z:0/sequential_261/lstm_783/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
/sequential_261/lstm_783/lstm_cell_663/Sigmoid_2Sigmoid4sequential_261/lstm_783/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????d?
,sequential_261/lstm_783/lstm_cell_663/Relu_1Relu/sequential_261/lstm_783/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
+sequential_261/lstm_783/lstm_cell_663/mul_2Mul3sequential_261/lstm_783/lstm_cell_663/Sigmoid_2:y:0:sequential_261/lstm_783/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
5sequential_261/lstm_783/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'sequential_261/lstm_783/TensorArrayV2_1TensorListReserve>sequential_261/lstm_783/TensorArrayV2_1/element_shape:output:00sequential_261/lstm_783/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_261/lstm_783/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_261/lstm_783/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_261/lstm_783/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_261/lstm_783/whileWhile3sequential_261/lstm_783/while/loop_counter:output:09sequential_261/lstm_783/while/maximum_iterations:output:0%sequential_261/lstm_783/time:output:00sequential_261/lstm_783/TensorArrayV2_1:handle:0&sequential_261/lstm_783/zeros:output:0(sequential_261/lstm_783/zeros_1:output:00sequential_261/lstm_783/strided_slice_1:output:0Osequential_261/lstm_783/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_261_lstm_783_lstm_cell_663_matmul_readvariableop_resourceFsequential_261_lstm_783_lstm_cell_663_matmul_1_readvariableop_resourceEsequential_261_lstm_783_lstm_cell_663_biasadd_readvariableop_resource*
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
*sequential_261_lstm_783_while_body_4023289*6
cond.R,
*sequential_261_lstm_783_while_cond_4023288*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Hsequential_261/lstm_783/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
:sequential_261/lstm_783/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_261/lstm_783/while:output:3Qsequential_261/lstm_783/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0?
-sequential_261/lstm_783/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_261/lstm_783/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_783/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_783/strided_slice_3StridedSliceCsequential_261/lstm_783/TensorArrayV2Stack/TensorListStack:tensor:06sequential_261/lstm_783/strided_slice_3/stack:output:08sequential_261/lstm_783/strided_slice_3/stack_1:output:08sequential_261/lstm_783/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask}
(sequential_261/lstm_783/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_261/lstm_783/transpose_1	TransposeCsequential_261/lstm_783/TensorArrayV2Stack/TensorListStack:tensor:01sequential_261/lstm_783/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????ds
sequential_261/lstm_783/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_261/lstm_784/ShapeShape'sequential_261/lstm_783/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_261/lstm_784/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_261/lstm_784/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_261/lstm_784/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_261/lstm_784/strided_sliceStridedSlice&sequential_261/lstm_784/Shape:output:04sequential_261/lstm_784/strided_slice/stack:output:06sequential_261/lstm_784/strided_slice/stack_1:output:06sequential_261/lstm_784/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_261/lstm_784/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
$sequential_261/lstm_784/zeros/packedPack.sequential_261/lstm_784/strided_slice:output:0/sequential_261/lstm_784/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_261/lstm_784/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_261/lstm_784/zerosFill-sequential_261/lstm_784/zeros/packed:output:0,sequential_261/lstm_784/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2j
(sequential_261/lstm_784/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
&sequential_261/lstm_784/zeros_1/packedPack.sequential_261/lstm_784/strided_slice:output:01sequential_261/lstm_784/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_261/lstm_784/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_261/lstm_784/zeros_1Fill/sequential_261/lstm_784/zeros_1/packed:output:0.sequential_261/lstm_784/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2{
&sequential_261/lstm_784/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_261/lstm_784/transpose	Transpose'sequential_261/lstm_783/transpose_1:y:0/sequential_261/lstm_784/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dt
sequential_261/lstm_784/Shape_1Shape%sequential_261/lstm_784/transpose:y:0*
T0*
_output_shapes
:w
-sequential_261/lstm_784/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_784/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_261/lstm_784/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_784/strided_slice_1StridedSlice(sequential_261/lstm_784/Shape_1:output:06sequential_261/lstm_784/strided_slice_1/stack:output:08sequential_261/lstm_784/strided_slice_1/stack_1:output:08sequential_261/lstm_784/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_261/lstm_784/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_261/lstm_784/TensorArrayV2TensorListReserve<sequential_261/lstm_784/TensorArrayV2/element_shape:output:00sequential_261/lstm_784/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_261/lstm_784/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
?sequential_261/lstm_784/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_261/lstm_784/transpose:y:0Vsequential_261/lstm_784/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_261/lstm_784/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_784/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_261/lstm_784/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_784/strided_slice_2StridedSlice%sequential_261/lstm_784/transpose:y:06sequential_261/lstm_784/strided_slice_2/stack:output:08sequential_261/lstm_784/strided_slice_2/stack_1:output:08sequential_261/lstm_784/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
;sequential_261/lstm_784/lstm_cell_664/MatMul/ReadVariableOpReadVariableOpDsequential_261_lstm_784_lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
,sequential_261/lstm_784/lstm_cell_664/MatMulMatMul0sequential_261/lstm_784/strided_slice_2:output:0Csequential_261/lstm_784/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=sequential_261/lstm_784/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOpFsequential_261_lstm_784_lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
.sequential_261/lstm_784/lstm_cell_664/MatMul_1MatMul&sequential_261/lstm_784/zeros:output:0Esequential_261/lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_261/lstm_784/lstm_cell_664/addAddV26sequential_261/lstm_784/lstm_cell_664/MatMul:product:08sequential_261/lstm_784/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
<sequential_261/lstm_784/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOpEsequential_261_lstm_784_lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
-sequential_261/lstm_784/lstm_cell_664/BiasAddBiasAdd-sequential_261/lstm_784/lstm_cell_664/add:z:0Dsequential_261/lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
5sequential_261/lstm_784/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_261/lstm_784/lstm_cell_664/splitSplit>sequential_261/lstm_784/lstm_cell_664/split/split_dim:output:06sequential_261/lstm_784/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
-sequential_261/lstm_784/lstm_cell_664/SigmoidSigmoid4sequential_261/lstm_784/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_261/lstm_784/lstm_cell_664/Sigmoid_1Sigmoid4sequential_261/lstm_784/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
)sequential_261/lstm_784/lstm_cell_664/mulMul3sequential_261/lstm_784/lstm_cell_664/Sigmoid_1:y:0(sequential_261/lstm_784/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
*sequential_261/lstm_784/lstm_cell_664/ReluRelu4sequential_261/lstm_784/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
+sequential_261/lstm_784/lstm_cell_664/mul_1Mul1sequential_261/lstm_784/lstm_cell_664/Sigmoid:y:08sequential_261/lstm_784/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
+sequential_261/lstm_784/lstm_cell_664/add_1AddV2-sequential_261/lstm_784/lstm_cell_664/mul:z:0/sequential_261/lstm_784/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
/sequential_261/lstm_784/lstm_cell_664/Sigmoid_2Sigmoid4sequential_261/lstm_784/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2?
,sequential_261/lstm_784/lstm_cell_664/Relu_1Relu/sequential_261/lstm_784/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
+sequential_261/lstm_784/lstm_cell_664/mul_2Mul3sequential_261/lstm_784/lstm_cell_664/Sigmoid_2:y:0:sequential_261/lstm_784/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
5sequential_261/lstm_784/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'sequential_261/lstm_784/TensorArrayV2_1TensorListReserve>sequential_261/lstm_784/TensorArrayV2_1/element_shape:output:00sequential_261/lstm_784/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_261/lstm_784/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_261/lstm_784/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_261/lstm_784/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_261/lstm_784/whileWhile3sequential_261/lstm_784/while/loop_counter:output:09sequential_261/lstm_784/while/maximum_iterations:output:0%sequential_261/lstm_784/time:output:00sequential_261/lstm_784/TensorArrayV2_1:handle:0&sequential_261/lstm_784/zeros:output:0(sequential_261/lstm_784/zeros_1:output:00sequential_261/lstm_784/strided_slice_1:output:0Osequential_261/lstm_784/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_261_lstm_784_lstm_cell_664_matmul_readvariableop_resourceFsequential_261_lstm_784_lstm_cell_664_matmul_1_readvariableop_resourceEsequential_261_lstm_784_lstm_cell_664_biasadd_readvariableop_resource*
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
*sequential_261_lstm_784_while_body_4023428*6
cond.R,
*sequential_261_lstm_784_while_cond_4023427*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Hsequential_261/lstm_784/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
:sequential_261/lstm_784/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_261/lstm_784/while:output:3Qsequential_261/lstm_784/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0?
-sequential_261/lstm_784/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_261/lstm_784/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_784/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_784/strided_slice_3StridedSliceCsequential_261/lstm_784/TensorArrayV2Stack/TensorListStack:tensor:06sequential_261/lstm_784/strided_slice_3/stack:output:08sequential_261/lstm_784/strided_slice_3/stack_1:output:08sequential_261/lstm_784/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask}
(sequential_261/lstm_784/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_261/lstm_784/transpose_1	TransposeCsequential_261/lstm_784/TensorArrayV2Stack/TensorListStack:tensor:01sequential_261/lstm_784/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2s
sequential_261/lstm_784/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_261/lstm_785/ShapeShape'sequential_261/lstm_784/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_261/lstm_785/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_261/lstm_785/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_261/lstm_785/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%sequential_261/lstm_785/strided_sliceStridedSlice&sequential_261/lstm_785/Shape:output:04sequential_261/lstm_785/strided_slice/stack:output:06sequential_261/lstm_785/strided_slice/stack_1:output:06sequential_261/lstm_785/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_261/lstm_785/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
$sequential_261/lstm_785/zeros/packedPack.sequential_261/lstm_785/strided_slice:output:0/sequential_261/lstm_785/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_261/lstm_785/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_261/lstm_785/zerosFill-sequential_261/lstm_785/zeros/packed:output:0,sequential_261/lstm_785/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
j
(sequential_261/lstm_785/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&sequential_261/lstm_785/zeros_1/packedPack.sequential_261/lstm_785/strided_slice:output:01sequential_261/lstm_785/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_261/lstm_785/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_261/lstm_785/zeros_1Fill/sequential_261/lstm_785/zeros_1/packed:output:0.sequential_261/lstm_785/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
{
&sequential_261/lstm_785/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
!sequential_261/lstm_785/transpose	Transpose'sequential_261/lstm_784/transpose_1:y:0/sequential_261/lstm_785/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2t
sequential_261/lstm_785/Shape_1Shape%sequential_261/lstm_785/transpose:y:0*
T0*
_output_shapes
:w
-sequential_261/lstm_785/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_785/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_261/lstm_785/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_785/strided_slice_1StridedSlice(sequential_261/lstm_785/Shape_1:output:06sequential_261/lstm_785/strided_slice_1/stack:output:08sequential_261/lstm_785/strided_slice_1/stack_1:output:08sequential_261/lstm_785/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_261/lstm_785/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%sequential_261/lstm_785/TensorArrayV2TensorListReserve<sequential_261/lstm_785/TensorArrayV2/element_shape:output:00sequential_261/lstm_785/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Msequential_261/lstm_785/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
?sequential_261/lstm_785/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_261/lstm_785/transpose:y:0Vsequential_261/lstm_785/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???w
-sequential_261/lstm_785/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_785/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_261/lstm_785/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_785/strided_slice_2StridedSlice%sequential_261/lstm_785/transpose:y:06sequential_261/lstm_785/strided_slice_2/stack:output:08sequential_261/lstm_785/strided_slice_2/stack_1:output:08sequential_261/lstm_785/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
;sequential_261/lstm_785/lstm_cell_665/MatMul/ReadVariableOpReadVariableOpDsequential_261_lstm_785_lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
,sequential_261/lstm_785/lstm_cell_665/MatMulMatMul0sequential_261/lstm_785/strided_slice_2:output:0Csequential_261/lstm_785/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
=sequential_261/lstm_785/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOpFsequential_261_lstm_785_lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
.sequential_261/lstm_785/lstm_cell_665/MatMul_1MatMul&sequential_261/lstm_785/zeros:output:0Esequential_261/lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)sequential_261/lstm_785/lstm_cell_665/addAddV26sequential_261/lstm_785/lstm_cell_665/MatMul:product:08sequential_261/lstm_785/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
<sequential_261/lstm_785/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOpEsequential_261_lstm_785_lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
-sequential_261/lstm_785/lstm_cell_665/BiasAddBiasAdd-sequential_261/lstm_785/lstm_cell_665/add:z:0Dsequential_261/lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(w
5sequential_261/lstm_785/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
+sequential_261/lstm_785/lstm_cell_665/splitSplit>sequential_261/lstm_785/lstm_cell_665/split/split_dim:output:06sequential_261/lstm_785/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
-sequential_261/lstm_785/lstm_cell_665/SigmoidSigmoid4sequential_261/lstm_785/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
?
/sequential_261/lstm_785/lstm_cell_665/Sigmoid_1Sigmoid4sequential_261/lstm_785/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
)sequential_261/lstm_785/lstm_cell_665/mulMul3sequential_261/lstm_785/lstm_cell_665/Sigmoid_1:y:0(sequential_261/lstm_785/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
*sequential_261/lstm_785/lstm_cell_665/ReluRelu4sequential_261/lstm_785/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
+sequential_261/lstm_785/lstm_cell_665/mul_1Mul1sequential_261/lstm_785/lstm_cell_665/Sigmoid:y:08sequential_261/lstm_785/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
+sequential_261/lstm_785/lstm_cell_665/add_1AddV2-sequential_261/lstm_785/lstm_cell_665/mul:z:0/sequential_261/lstm_785/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
/sequential_261/lstm_785/lstm_cell_665/Sigmoid_2Sigmoid4sequential_261/lstm_785/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
?
,sequential_261/lstm_785/lstm_cell_665/Relu_1Relu/sequential_261/lstm_785/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
+sequential_261/lstm_785/lstm_cell_665/mul_2Mul3sequential_261/lstm_785/lstm_cell_665/Sigmoid_2:y:0:sequential_261/lstm_785/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
5sequential_261/lstm_785/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
'sequential_261/lstm_785/TensorArrayV2_1TensorListReserve>sequential_261/lstm_785/TensorArrayV2_1/element_shape:output:00sequential_261/lstm_785/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???^
sequential_261/lstm_785/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_261/lstm_785/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????l
*sequential_261/lstm_785/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_261/lstm_785/whileWhile3sequential_261/lstm_785/while/loop_counter:output:09sequential_261/lstm_785/while/maximum_iterations:output:0%sequential_261/lstm_785/time:output:00sequential_261/lstm_785/TensorArrayV2_1:handle:0&sequential_261/lstm_785/zeros:output:0(sequential_261/lstm_785/zeros_1:output:00sequential_261/lstm_785/strided_slice_1:output:0Osequential_261/lstm_785/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_261_lstm_785_lstm_cell_665_matmul_readvariableop_resourceFsequential_261_lstm_785_lstm_cell_665_matmul_1_readvariableop_resourceEsequential_261_lstm_785_lstm_cell_665_biasadd_readvariableop_resource*
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
*sequential_261_lstm_785_while_body_4023567*6
cond.R,
*sequential_261_lstm_785_while_cond_4023566*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Hsequential_261/lstm_785/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
:sequential_261/lstm_785/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_261/lstm_785/while:output:3Qsequential_261/lstm_785/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0?
-sequential_261/lstm_785/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????y
/sequential_261/lstm_785/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_261/lstm_785/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'sequential_261/lstm_785/strided_slice_3StridedSliceCsequential_261/lstm_785/TensorArrayV2Stack/TensorListStack:tensor:06sequential_261/lstm_785/strided_slice_3/stack:output:08sequential_261/lstm_785/strided_slice_3/stack_1:output:08sequential_261/lstm_785/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask}
(sequential_261/lstm_785/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
#sequential_261/lstm_785/transpose_1	TransposeCsequential_261/lstm_785/TensorArrayV2Stack/TensorListStack:tensor:01sequential_261/lstm_785/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
s
sequential_261/lstm_785/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
.sequential_261/dense_261/MatMul/ReadVariableOpReadVariableOp7sequential_261_dense_261_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_261/dense_261/MatMulMatMul0sequential_261/lstm_785/strided_slice_3:output:06sequential_261/dense_261/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/sequential_261/dense_261/BiasAdd/ReadVariableOpReadVariableOp8sequential_261_dense_261_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_261/dense_261/BiasAddBiasAdd)sequential_261/dense_261/MatMul:product:07sequential_261/dense_261/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
IdentityIdentity)sequential_261/dense_261/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_261/dense_261/BiasAdd/ReadVariableOp/^sequential_261/dense_261/MatMul/ReadVariableOp=^sequential_261/lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp<^sequential_261/lstm_783/lstm_cell_663/MatMul/ReadVariableOp>^sequential_261/lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp^sequential_261/lstm_783/while=^sequential_261/lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp<^sequential_261/lstm_784/lstm_cell_664/MatMul/ReadVariableOp>^sequential_261/lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp^sequential_261/lstm_784/while=^sequential_261/lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp<^sequential_261/lstm_785/lstm_cell_665/MatMul/ReadVariableOp>^sequential_261/lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp^sequential_261/lstm_785/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2b
/sequential_261/dense_261/BiasAdd/ReadVariableOp/sequential_261/dense_261/BiasAdd/ReadVariableOp2`
.sequential_261/dense_261/MatMul/ReadVariableOp.sequential_261/dense_261/MatMul/ReadVariableOp2|
<sequential_261/lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp<sequential_261/lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp2z
;sequential_261/lstm_783/lstm_cell_663/MatMul/ReadVariableOp;sequential_261/lstm_783/lstm_cell_663/MatMul/ReadVariableOp2~
=sequential_261/lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp=sequential_261/lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp2>
sequential_261/lstm_783/whilesequential_261/lstm_783/while2|
<sequential_261/lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp<sequential_261/lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp2z
;sequential_261/lstm_784/lstm_cell_664/MatMul/ReadVariableOp;sequential_261/lstm_784/lstm_cell_664/MatMul/ReadVariableOp2~
=sequential_261/lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp=sequential_261/lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp2>
sequential_261/lstm_784/whilesequential_261/lstm_784/while2|
<sequential_261/lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp<sequential_261/lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp2z
;sequential_261/lstm_785/lstm_cell_665/MatMul/ReadVariableOp;sequential_261/lstm_785/lstm_cell_665/MatMul/ReadVariableOp2~
=sequential_261/lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp=sequential_261/lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp2>
sequential_261/lstm_785/whilesequential_261/lstm_785/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_783_input
?
?
while_cond_4024087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4024087___redundant_placeholder05
1while_while_cond_4024087___redundant_placeholder15
1while_while_cond_4024087___redundant_placeholder25
1while_while_cond_4024087___redundant_placeholder3
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
lstm_785_while_cond_4026307.
*lstm_785_while_lstm_785_while_loop_counter4
0lstm_785_while_lstm_785_while_maximum_iterations
lstm_785_while_placeholder 
lstm_785_while_placeholder_1 
lstm_785_while_placeholder_2 
lstm_785_while_placeholder_30
,lstm_785_while_less_lstm_785_strided_slice_1G
Clstm_785_while_lstm_785_while_cond_4026307___redundant_placeholder0G
Clstm_785_while_lstm_785_while_cond_4026307___redundant_placeholder1G
Clstm_785_while_lstm_785_while_cond_4026307___redundant_placeholder2G
Clstm_785_while_lstm_785_while_cond_4026307___redundant_placeholder3
lstm_785_while_identity
?
lstm_785/while/LessLesslstm_785_while_placeholder,lstm_785_while_less_lstm_785_strided_slice_1*
T0*
_output_shapes
: ]
lstm_785/while/IdentityIdentitylstm_785/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_785_while_identity lstm_785/while/Identity:output:0*(
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4023807

inputs(
lstm_cell_663_4023725:	?(
lstm_cell_663_4023727:	d?$
lstm_cell_663_4023729:	?
identity??%lstm_cell_663/StatefulPartitionedCall?while;
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
%lstm_cell_663/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_663_4023725lstm_cell_663_4023727lstm_cell_663_4023729*
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4023724n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_663_4023725lstm_cell_663_4023727lstm_cell_663_4023729*
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
while_body_4023738*
condR
while_cond_4023737*K
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
NoOpNoOp&^lstm_cell_663/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_663/StatefulPartitionedCall%lstm_cell_663/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4024921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4024921___redundant_placeholder05
1while_while_cond_4024921___redundant_placeholder15
1while_while_cond_4024921___redundant_placeholder25
1while_while_cond_4024921___redundant_placeholder3
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

lstm_784_while_body_4026169.
*lstm_784_while_lstm_784_while_loop_counter4
0lstm_784_while_lstm_784_while_maximum_iterations
lstm_784_while_placeholder 
lstm_784_while_placeholder_1 
lstm_784_while_placeholder_2 
lstm_784_while_placeholder_3-
)lstm_784_while_lstm_784_strided_slice_1_0i
elstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0:	d?R
?lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?M
>lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0:	?
lstm_784_while_identity
lstm_784_while_identity_1
lstm_784_while_identity_2
lstm_784_while_identity_3
lstm_784_while_identity_4
lstm_784_while_identity_5+
'lstm_784_while_lstm_784_strided_slice_1g
clstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensorN
;lstm_784_while_lstm_cell_664_matmul_readvariableop_resource:	d?P
=lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource:	2?K
<lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource:	???3lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp?2lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp?4lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp?
@lstm_784/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_784/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensor_0lstm_784_while_placeholderIlstm_784/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_784/while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp=lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_784/while/lstm_cell_664/MatMulMatMul9lstm_784/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp?lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_784/while/lstm_cell_664/MatMul_1MatMullstm_784_while_placeholder_2<lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_784/while/lstm_cell_664/addAddV2-lstm_784/while/lstm_cell_664/MatMul:product:0/lstm_784/while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp>lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_784/while/lstm_cell_664/BiasAddBiasAdd$lstm_784/while/lstm_cell_664/add:z:0;lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_784/while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_784/while/lstm_cell_664/splitSplit5lstm_784/while/lstm_cell_664/split/split_dim:output:0-lstm_784/while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_784/while/lstm_cell_664/SigmoidSigmoid+lstm_784/while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_784/while/lstm_cell_664/Sigmoid_1Sigmoid+lstm_784/while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_784/while/lstm_cell_664/mulMul*lstm_784/while/lstm_cell_664/Sigmoid_1:y:0lstm_784_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_784/while/lstm_cell_664/ReluRelu+lstm_784/while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_784/while/lstm_cell_664/mul_1Mul(lstm_784/while/lstm_cell_664/Sigmoid:y:0/lstm_784/while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_784/while/lstm_cell_664/add_1AddV2$lstm_784/while/lstm_cell_664/mul:z:0&lstm_784/while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_784/while/lstm_cell_664/Sigmoid_2Sigmoid+lstm_784/while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_784/while/lstm_cell_664/Relu_1Relu&lstm_784/while/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_784/while/lstm_cell_664/mul_2Mul*lstm_784/while/lstm_cell_664/Sigmoid_2:y:01lstm_784/while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_784/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_784_while_placeholder_1lstm_784_while_placeholder&lstm_784/while/lstm_cell_664/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_784/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_784/while/addAddV2lstm_784_while_placeholderlstm_784/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_784/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_784/while/add_1AddV2*lstm_784_while_lstm_784_while_loop_counterlstm_784/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_784/while/IdentityIdentitylstm_784/while/add_1:z:0^lstm_784/while/NoOp*
T0*
_output_shapes
: ?
lstm_784/while/Identity_1Identity0lstm_784_while_lstm_784_while_maximum_iterations^lstm_784/while/NoOp*
T0*
_output_shapes
: t
lstm_784/while/Identity_2Identitylstm_784/while/add:z:0^lstm_784/while/NoOp*
T0*
_output_shapes
: ?
lstm_784/while/Identity_3IdentityClstm_784/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_784/while/NoOp*
T0*
_output_shapes
: ?
lstm_784/while/Identity_4Identity&lstm_784/while/lstm_cell_664/mul_2:z:0^lstm_784/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_784/while/Identity_5Identity&lstm_784/while/lstm_cell_664/add_1:z:0^lstm_784/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_784/while/NoOpNoOp4^lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp3^lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp5^lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_784_while_identity lstm_784/while/Identity:output:0"?
lstm_784_while_identity_1"lstm_784/while/Identity_1:output:0"?
lstm_784_while_identity_2"lstm_784/while/Identity_2:output:0"?
lstm_784_while_identity_3"lstm_784/while/Identity_3:output:0"?
lstm_784_while_identity_4"lstm_784/while/Identity_4:output:0"?
lstm_784_while_identity_5"lstm_784/while/Identity_5:output:0"T
'lstm_784_while_lstm_784_strided_slice_1)lstm_784_while_lstm_784_strided_slice_1_0"~
<lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource>lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0"?
=lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource?lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0"|
;lstm_784_while_lstm_cell_664_matmul_readvariableop_resource=lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0"?
clstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensorelstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp3lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp2h
2lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp2lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp2l
4lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp4lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4024074

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
while_body_4025618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_663_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_663_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_663_matmul_readvariableop_resource:	?G
4while_lstm_cell_663_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_663_biasadd_readvariableop_resource:	???*while/lstm_cell_663/BiasAdd/ReadVariableOp?)while/lstm_cell_663/MatMul/ReadVariableOp?+while/lstm_cell_663/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_663/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_663/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_663/addAddV2$while/lstm_cell_663/MatMul:product:0&while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_663/BiasAddBiasAddwhile/lstm_cell_663/add:z:02while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_663/splitSplit,while/lstm_cell_663/split/split_dim:output:0$while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_663/SigmoidSigmoid"while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_1Sigmoid"while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mulMul!while/lstm_cell_663/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_663/ReluRelu"while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_1Mulwhile/lstm_cell_663/Sigmoid:y:0&while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/add_1AddV2while/lstm_cell_663/mul:z:0while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_2Sigmoid"while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_663/Relu_1Reluwhile/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_2Mul!while/lstm_cell_663/Sigmoid_2:y:0(while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_663/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_663/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_663/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_663/BiasAdd/ReadVariableOp*^while/lstm_cell_663/MatMul/ReadVariableOp,^while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_663_biasadd_readvariableop_resource5while_lstm_cell_663_biasadd_readvariableop_resource_0"n
4while_lstm_cell_663_matmul_1_readvariableop_resource6while_lstm_cell_663_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_663_matmul_readvariableop_resource4while_lstm_cell_663_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_663/BiasAdd/ReadVariableOp*while/lstm_cell_663/BiasAdd/ReadVariableOp2V
)while/lstm_cell_663/MatMul/ReadVariableOp)while/lstm_cell_663/MatMul/ReadVariableOp2Z
+while/lstm_cell_663/MatMul_1/ReadVariableOp+while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_4025917
lstm_783_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_783_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_4023657o
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
_user_specified_namelstm_783_input
??
?
#__inference__traced_restore_4029259
file_prefix3
!assignvariableop_dense_261_kernel:
/
!assignvariableop_1_dense_261_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_783_lstm_cell_783_kernel:	?M
:assignvariableop_8_lstm_783_lstm_cell_783_recurrent_kernel:	d?=
.assignvariableop_9_lstm_783_lstm_cell_783_bias:	?D
1assignvariableop_10_lstm_784_lstm_cell_784_kernel:	d?N
;assignvariableop_11_lstm_784_lstm_cell_784_recurrent_kernel:	2?>
/assignvariableop_12_lstm_784_lstm_cell_784_bias:	?C
1assignvariableop_13_lstm_785_lstm_cell_785_kernel:2(M
;assignvariableop_14_lstm_785_lstm_cell_785_recurrent_kernel:
(=
/assignvariableop_15_lstm_785_lstm_cell_785_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_261_kernel_m:
7
)assignvariableop_19_adam_dense_261_bias_m:K
8assignvariableop_20_adam_lstm_783_lstm_cell_783_kernel_m:	?U
Bassignvariableop_21_adam_lstm_783_lstm_cell_783_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_783_lstm_cell_783_bias_m:	?K
8assignvariableop_23_adam_lstm_784_lstm_cell_784_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_784_lstm_cell_784_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_784_lstm_cell_784_bias_m:	?J
8assignvariableop_26_adam_lstm_785_lstm_cell_785_kernel_m:2(T
Bassignvariableop_27_adam_lstm_785_lstm_cell_785_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_785_lstm_cell_785_bias_m:(=
+assignvariableop_29_adam_dense_261_kernel_v:
7
)assignvariableop_30_adam_dense_261_bias_v:K
8assignvariableop_31_adam_lstm_783_lstm_cell_783_kernel_v:	?U
Bassignvariableop_32_adam_lstm_783_lstm_cell_783_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_783_lstm_cell_783_bias_v:	?K
8assignvariableop_34_adam_lstm_784_lstm_cell_784_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_784_lstm_cell_784_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_784_lstm_cell_784_bias_v:	?J
8assignvariableop_37_adam_lstm_785_lstm_cell_785_kernel_v:2(T
Bassignvariableop_38_adam_lstm_785_lstm_cell_785_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_785_lstm_cell_785_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_261_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_261_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_783_lstm_cell_783_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_783_lstm_cell_783_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_783_lstm_cell_783_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_784_lstm_cell_784_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_784_lstm_cell_784_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_784_lstm_cell_784_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_785_lstm_cell_785_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_785_lstm_cell_785_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_785_lstm_cell_785_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_261_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_261_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_783_lstm_cell_783_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_783_lstm_cell_783_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_783_lstm_cell_783_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_784_lstm_cell_784_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_784_lstm_cell_784_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_784_lstm_cell_784_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_785_lstm_cell_785_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_785_lstm_cell_785_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_785_lstm_cell_785_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_261_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_261_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_783_lstm_cell_783_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_783_lstm_cell_783_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_783_lstm_cell_783_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_784_lstm_cell_784_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_784_lstm_cell_784_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_784_lstm_cell_784_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_785_lstm_cell_785_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_785_lstm_cell_785_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_785_lstm_cell_785_bias_vIdentity_39:output:0"/device:CPU:0*
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
??
?
K__inference_sequential_261_layer_call_and_return_conditional_losses_4026398

inputsH
5lstm_783_lstm_cell_663_matmul_readvariableop_resource:	?J
7lstm_783_lstm_cell_663_matmul_1_readvariableop_resource:	d?E
6lstm_783_lstm_cell_663_biasadd_readvariableop_resource:	?H
5lstm_784_lstm_cell_664_matmul_readvariableop_resource:	d?J
7lstm_784_lstm_cell_664_matmul_1_readvariableop_resource:	2?E
6lstm_784_lstm_cell_664_biasadd_readvariableop_resource:	?G
5lstm_785_lstm_cell_665_matmul_readvariableop_resource:2(I
7lstm_785_lstm_cell_665_matmul_1_readvariableop_resource:
(D
6lstm_785_lstm_cell_665_biasadd_readvariableop_resource:(:
(dense_261_matmul_readvariableop_resource:
7
)dense_261_biasadd_readvariableop_resource:
identity?? dense_261/BiasAdd/ReadVariableOp?dense_261/MatMul/ReadVariableOp?-lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp?,lstm_783/lstm_cell_663/MatMul/ReadVariableOp?.lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp?lstm_783/while?-lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp?,lstm_784/lstm_cell_664/MatMul/ReadVariableOp?.lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp?lstm_784/while?-lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp?,lstm_785/lstm_cell_665/MatMul/ReadVariableOp?.lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp?lstm_785/whileD
lstm_783/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_783/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_783/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_783/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_783/strided_sliceStridedSlicelstm_783/Shape:output:0%lstm_783/strided_slice/stack:output:0'lstm_783/strided_slice/stack_1:output:0'lstm_783/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_783/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_783/zeros/packedPacklstm_783/strided_slice:output:0 lstm_783/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_783/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_783/zerosFilllstm_783/zeros/packed:output:0lstm_783/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_783/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_783/zeros_1/packedPacklstm_783/strided_slice:output:0"lstm_783/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_783/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_783/zeros_1Fill lstm_783/zeros_1/packed:output:0lstm_783/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_783/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_783/transpose	Transposeinputs lstm_783/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_783/Shape_1Shapelstm_783/transpose:y:0*
T0*
_output_shapes
:h
lstm_783/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_783/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_783/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_783/strided_slice_1StridedSlicelstm_783/Shape_1:output:0'lstm_783/strided_slice_1/stack:output:0)lstm_783/strided_slice_1/stack_1:output:0)lstm_783/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_783/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_783/TensorArrayV2TensorListReserve-lstm_783/TensorArrayV2/element_shape:output:0!lstm_783/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_783/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_783/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_783/transpose:y:0Glstm_783/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_783/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_783/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_783/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_783/strided_slice_2StridedSlicelstm_783/transpose:y:0'lstm_783/strided_slice_2/stack:output:0)lstm_783/strided_slice_2/stack_1:output:0)lstm_783/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_783/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp5lstm_783_lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_783/lstm_cell_663/MatMulMatMul!lstm_783/strided_slice_2:output:04lstm_783/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_783/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp7lstm_783_lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_783/lstm_cell_663/MatMul_1MatMullstm_783/zeros:output:06lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_783/lstm_cell_663/addAddV2'lstm_783/lstm_cell_663/MatMul:product:0)lstm_783/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_783/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp6lstm_783_lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_783/lstm_cell_663/BiasAddBiasAddlstm_783/lstm_cell_663/add:z:05lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_783/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_783/lstm_cell_663/splitSplit/lstm_783/lstm_cell_663/split/split_dim:output:0'lstm_783/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_783/lstm_cell_663/SigmoidSigmoid%lstm_783/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_783/lstm_cell_663/Sigmoid_1Sigmoid%lstm_783/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_783/lstm_cell_663/mulMul$lstm_783/lstm_cell_663/Sigmoid_1:y:0lstm_783/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_783/lstm_cell_663/ReluRelu%lstm_783/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_783/lstm_cell_663/mul_1Mul"lstm_783/lstm_cell_663/Sigmoid:y:0)lstm_783/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_783/lstm_cell_663/add_1AddV2lstm_783/lstm_cell_663/mul:z:0 lstm_783/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_783/lstm_cell_663/Sigmoid_2Sigmoid%lstm_783/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_783/lstm_cell_663/Relu_1Relu lstm_783/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_783/lstm_cell_663/mul_2Mul$lstm_783/lstm_cell_663/Sigmoid_2:y:0+lstm_783/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_783/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_783/TensorArrayV2_1TensorListReserve/lstm_783/TensorArrayV2_1/element_shape:output:0!lstm_783/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_783/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_783/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_783/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_783/whileWhile$lstm_783/while/loop_counter:output:0*lstm_783/while/maximum_iterations:output:0lstm_783/time:output:0!lstm_783/TensorArrayV2_1:handle:0lstm_783/zeros:output:0lstm_783/zeros_1:output:0!lstm_783/strided_slice_1:output:0@lstm_783/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_783_lstm_cell_663_matmul_readvariableop_resource7lstm_783_lstm_cell_663_matmul_1_readvariableop_resource6lstm_783_lstm_cell_663_biasadd_readvariableop_resource*
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
lstm_783_while_body_4026030*'
condR
lstm_783_while_cond_4026029*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_783/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_783/TensorArrayV2Stack/TensorListStackTensorListStacklstm_783/while:output:3Blstm_783/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_783/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_783/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_783/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_783/strided_slice_3StridedSlice4lstm_783/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_783/strided_slice_3/stack:output:0)lstm_783/strided_slice_3/stack_1:output:0)lstm_783/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_783/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_783/transpose_1	Transpose4lstm_783/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_783/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_783/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_784/ShapeShapelstm_783/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_784/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_784/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_784/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_784/strided_sliceStridedSlicelstm_784/Shape:output:0%lstm_784/strided_slice/stack:output:0'lstm_784/strided_slice/stack_1:output:0'lstm_784/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_784/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_784/zeros/packedPacklstm_784/strided_slice:output:0 lstm_784/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_784/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_784/zerosFilllstm_784/zeros/packed:output:0lstm_784/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_784/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_784/zeros_1/packedPacklstm_784/strided_slice:output:0"lstm_784/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_784/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_784/zeros_1Fill lstm_784/zeros_1/packed:output:0lstm_784/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_784/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_784/transpose	Transposelstm_783/transpose_1:y:0 lstm_784/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_784/Shape_1Shapelstm_784/transpose:y:0*
T0*
_output_shapes
:h
lstm_784/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_784/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_784/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_784/strided_slice_1StridedSlicelstm_784/Shape_1:output:0'lstm_784/strided_slice_1/stack:output:0)lstm_784/strided_slice_1/stack_1:output:0)lstm_784/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_784/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_784/TensorArrayV2TensorListReserve-lstm_784/TensorArrayV2/element_shape:output:0!lstm_784/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_784/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_784/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_784/transpose:y:0Glstm_784/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_784/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_784/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_784/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_784/strided_slice_2StridedSlicelstm_784/transpose:y:0'lstm_784/strided_slice_2/stack:output:0)lstm_784/strided_slice_2/stack_1:output:0)lstm_784/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_784/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp5lstm_784_lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_784/lstm_cell_664/MatMulMatMul!lstm_784/strided_slice_2:output:04lstm_784/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_784/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp7lstm_784_lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_784/lstm_cell_664/MatMul_1MatMullstm_784/zeros:output:06lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_784/lstm_cell_664/addAddV2'lstm_784/lstm_cell_664/MatMul:product:0)lstm_784/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_784/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp6lstm_784_lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_784/lstm_cell_664/BiasAddBiasAddlstm_784/lstm_cell_664/add:z:05lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_784/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_784/lstm_cell_664/splitSplit/lstm_784/lstm_cell_664/split/split_dim:output:0'lstm_784/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_784/lstm_cell_664/SigmoidSigmoid%lstm_784/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_784/lstm_cell_664/Sigmoid_1Sigmoid%lstm_784/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_784/lstm_cell_664/mulMul$lstm_784/lstm_cell_664/Sigmoid_1:y:0lstm_784/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_784/lstm_cell_664/ReluRelu%lstm_784/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_784/lstm_cell_664/mul_1Mul"lstm_784/lstm_cell_664/Sigmoid:y:0)lstm_784/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_784/lstm_cell_664/add_1AddV2lstm_784/lstm_cell_664/mul:z:0 lstm_784/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_784/lstm_cell_664/Sigmoid_2Sigmoid%lstm_784/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_784/lstm_cell_664/Relu_1Relu lstm_784/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_784/lstm_cell_664/mul_2Mul$lstm_784/lstm_cell_664/Sigmoid_2:y:0+lstm_784/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_784/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_784/TensorArrayV2_1TensorListReserve/lstm_784/TensorArrayV2_1/element_shape:output:0!lstm_784/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_784/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_784/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_784/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_784/whileWhile$lstm_784/while/loop_counter:output:0*lstm_784/while/maximum_iterations:output:0lstm_784/time:output:0!lstm_784/TensorArrayV2_1:handle:0lstm_784/zeros:output:0lstm_784/zeros_1:output:0!lstm_784/strided_slice_1:output:0@lstm_784/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_784_lstm_cell_664_matmul_readvariableop_resource7lstm_784_lstm_cell_664_matmul_1_readvariableop_resource6lstm_784_lstm_cell_664_biasadd_readvariableop_resource*
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
lstm_784_while_body_4026169*'
condR
lstm_784_while_cond_4026168*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_784/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_784/TensorArrayV2Stack/TensorListStackTensorListStacklstm_784/while:output:3Blstm_784/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_784/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_784/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_784/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_784/strided_slice_3StridedSlice4lstm_784/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_784/strided_slice_3/stack:output:0)lstm_784/strided_slice_3/stack_1:output:0)lstm_784/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_784/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_784/transpose_1	Transpose4lstm_784/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_784/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_784/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_785/ShapeShapelstm_784/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_785/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_785/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_785/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_785/strided_sliceStridedSlicelstm_785/Shape:output:0%lstm_785/strided_slice/stack:output:0'lstm_785/strided_slice/stack_1:output:0'lstm_785/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_785/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_785/zeros/packedPacklstm_785/strided_slice:output:0 lstm_785/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_785/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_785/zerosFilllstm_785/zeros/packed:output:0lstm_785/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_785/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_785/zeros_1/packedPacklstm_785/strided_slice:output:0"lstm_785/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_785/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_785/zeros_1Fill lstm_785/zeros_1/packed:output:0lstm_785/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_785/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_785/transpose	Transposelstm_784/transpose_1:y:0 lstm_785/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_785/Shape_1Shapelstm_785/transpose:y:0*
T0*
_output_shapes
:h
lstm_785/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_785/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_785/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_785/strided_slice_1StridedSlicelstm_785/Shape_1:output:0'lstm_785/strided_slice_1/stack:output:0)lstm_785/strided_slice_1/stack_1:output:0)lstm_785/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_785/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_785/TensorArrayV2TensorListReserve-lstm_785/TensorArrayV2/element_shape:output:0!lstm_785/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_785/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_785/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_785/transpose:y:0Glstm_785/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_785/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_785/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_785/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_785/strided_slice_2StridedSlicelstm_785/transpose:y:0'lstm_785/strided_slice_2/stack:output:0)lstm_785/strided_slice_2/stack_1:output:0)lstm_785/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_785/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp5lstm_785_lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_785/lstm_cell_665/MatMulMatMul!lstm_785/strided_slice_2:output:04lstm_785/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_785/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp7lstm_785_lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_785/lstm_cell_665/MatMul_1MatMullstm_785/zeros:output:06lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_785/lstm_cell_665/addAddV2'lstm_785/lstm_cell_665/MatMul:product:0)lstm_785/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_785/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp6lstm_785_lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_785/lstm_cell_665/BiasAddBiasAddlstm_785/lstm_cell_665/add:z:05lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_785/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_785/lstm_cell_665/splitSplit/lstm_785/lstm_cell_665/split/split_dim:output:0'lstm_785/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_785/lstm_cell_665/SigmoidSigmoid%lstm_785/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_785/lstm_cell_665/Sigmoid_1Sigmoid%lstm_785/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_785/lstm_cell_665/mulMul$lstm_785/lstm_cell_665/Sigmoid_1:y:0lstm_785/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_785/lstm_cell_665/ReluRelu%lstm_785/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_785/lstm_cell_665/mul_1Mul"lstm_785/lstm_cell_665/Sigmoid:y:0)lstm_785/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_785/lstm_cell_665/add_1AddV2lstm_785/lstm_cell_665/mul:z:0 lstm_785/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_785/lstm_cell_665/Sigmoid_2Sigmoid%lstm_785/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_785/lstm_cell_665/Relu_1Relu lstm_785/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_785/lstm_cell_665/mul_2Mul$lstm_785/lstm_cell_665/Sigmoid_2:y:0+lstm_785/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_785/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_785/TensorArrayV2_1TensorListReserve/lstm_785/TensorArrayV2_1/element_shape:output:0!lstm_785/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_785/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_785/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_785/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_785/whileWhile$lstm_785/while/loop_counter:output:0*lstm_785/while/maximum_iterations:output:0lstm_785/time:output:0!lstm_785/TensorArrayV2_1:handle:0lstm_785/zeros:output:0lstm_785/zeros_1:output:0!lstm_785/strided_slice_1:output:0@lstm_785/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_785_lstm_cell_665_matmul_readvariableop_resource7lstm_785_lstm_cell_665_matmul_1_readvariableop_resource6lstm_785_lstm_cell_665_biasadd_readvariableop_resource*
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
lstm_785_while_body_4026308*'
condR
lstm_785_while_cond_4026307*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_785/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_785/TensorArrayV2Stack/TensorListStackTensorListStacklstm_785/while:output:3Blstm_785/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_785/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_785/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_785/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_785/strided_slice_3StridedSlice4lstm_785/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_785/strided_slice_3/stack:output:0)lstm_785/strided_slice_3/stack_1:output:0)lstm_785/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_785/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_785/transpose_1	Transpose4lstm_785/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_785/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_785/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_261/MatMul/ReadVariableOpReadVariableOp(dense_261_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_261/MatMulMatMul!lstm_785/strided_slice_3:output:0'dense_261/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_261/BiasAdd/ReadVariableOpReadVariableOp)dense_261_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_261/BiasAddBiasAdddense_261/MatMul:product:0(dense_261/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_261/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_261/BiasAdd/ReadVariableOp ^dense_261/MatMul/ReadVariableOp.^lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp-^lstm_783/lstm_cell_663/MatMul/ReadVariableOp/^lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp^lstm_783/while.^lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp-^lstm_784/lstm_cell_664/MatMul/ReadVariableOp/^lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp^lstm_784/while.^lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp-^lstm_785/lstm_cell_665/MatMul/ReadVariableOp/^lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp^lstm_785/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_261/BiasAdd/ReadVariableOp dense_261/BiasAdd/ReadVariableOp2B
dense_261/MatMul/ReadVariableOpdense_261/MatMul/ReadVariableOp2^
-lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp-lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp2\
,lstm_783/lstm_cell_663/MatMul/ReadVariableOp,lstm_783/lstm_cell_663/MatMul/ReadVariableOp2`
.lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp.lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp2 
lstm_783/whilelstm_783/while2^
-lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp-lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp2\
,lstm_784/lstm_cell_664/MatMul/ReadVariableOp,lstm_784/lstm_cell_664/MatMul/ReadVariableOp2`
.lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp.lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp2 
lstm_784/whilelstm_784/while2^
-lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp-lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp2\
,lstm_785/lstm_cell_665/MatMul/ReadVariableOp,lstm_785/lstm_cell_665/MatMul/ReadVariableOp2`
.lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp.lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp2 
lstm_785/whilelstm_785/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4028159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4028159___redundant_placeholder05
1while_while_cond_4028159___redundant_placeholder15
1while_while_cond_4028159___redundant_placeholder25
1while_while_cond_4028159___redundant_placeholder3
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
?
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025181

inputs#
lstm_783_4024857:	?#
lstm_783_4024859:	d?
lstm_783_4024861:	?#
lstm_784_4025007:	d?#
lstm_784_4025009:	2?
lstm_784_4025011:	?"
lstm_785_4025157:2("
lstm_785_4025159:
(
lstm_785_4025161:(#
dense_261_4025175:

dense_261_4025177:
identity??!dense_261/StatefulPartitionedCall? lstm_783/StatefulPartitionedCall? lstm_784/StatefulPartitionedCall? lstm_785/StatefulPartitionedCall?
 lstm_783/StatefulPartitionedCallStatefulPartitionedCallinputslstm_783_4024857lstm_783_4024859lstm_783_4024861*
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4024856?
 lstm_784/StatefulPartitionedCallStatefulPartitionedCall)lstm_783/StatefulPartitionedCall:output:0lstm_784_4025007lstm_784_4025009lstm_784_4025011*
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4025006?
 lstm_785/StatefulPartitionedCallStatefulPartitionedCall)lstm_784/StatefulPartitionedCall:output:0lstm_785_4025157lstm_785_4025159lstm_785_4025161*
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4025156?
!dense_261/StatefulPartitionedCallStatefulPartitionedCall)lstm_785/StatefulPartitionedCall:output:0dense_261_4025175dense_261_4025177*
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
F__inference_dense_261_layer_call_and_return_conditional_losses_4025174y
IdentityIdentity*dense_261/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_261/StatefulPartitionedCall!^lstm_783/StatefulPartitionedCall!^lstm_784/StatefulPartitionedCall!^lstm_785/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_261/StatefulPartitionedCall!dense_261/StatefulPartitionedCall2D
 lstm_783/StatefulPartitionedCall lstm_783/StatefulPartitionedCall2D
 lstm_784/StatefulPartitionedCall lstm_784/StatefulPartitionedCall2D
 lstm_785/StatefulPartitionedCall lstm_785/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4024424

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
lstm_784_while_cond_4026595.
*lstm_784_while_lstm_784_while_loop_counter4
0lstm_784_while_lstm_784_while_maximum_iterations
lstm_784_while_placeholder 
lstm_784_while_placeholder_1 
lstm_784_while_placeholder_2 
lstm_784_while_placeholder_30
,lstm_784_while_less_lstm_784_strided_slice_1G
Clstm_784_while_lstm_784_while_cond_4026595___redundant_placeholder0G
Clstm_784_while_lstm_784_while_cond_4026595___redundant_placeholder1G
Clstm_784_while_lstm_784_while_cond_4026595___redundant_placeholder2G
Clstm_784_while_lstm_784_while_cond_4026595___redundant_placeholder3
lstm_784_while_identity
?
lstm_784/while/LessLesslstm_784_while_placeholder,lstm_784_while_less_lstm_784_strided_slice_1*
T0*
_output_shapes
: ]
lstm_784/while/IdentityIdentitylstm_784/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_784_while_identity lstm_784/while/Identity:output:0*(
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
while_body_4028160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_665_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_665_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_665_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_665_matmul_readvariableop_resource:2(F
4while_lstm_cell_665_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_665_biasadd_readvariableop_resource:(??*while/lstm_cell_665/BiasAdd/ReadVariableOp?)while/lstm_cell_665/MatMul/ReadVariableOp?+while/lstm_cell_665/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_665/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_665/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_665/addAddV2$while/lstm_cell_665/MatMul:product:0&while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_665/BiasAddBiasAddwhile/lstm_cell_665/add:z:02while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_665/splitSplit,while/lstm_cell_665/split/split_dim:output:0$while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_665/SigmoidSigmoid"while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_1Sigmoid"while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mulMul!while/lstm_cell_665/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_665/ReluRelu"while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_1Mulwhile/lstm_cell_665/Sigmoid:y:0&while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/add_1AddV2while/lstm_cell_665/mul:z:0while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_2Sigmoid"while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_665/Relu_1Reluwhile/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_2Mul!while/lstm_cell_665/Sigmoid_2:y:0(while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_665/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_665/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_665/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_665/BiasAdd/ReadVariableOp*^while/lstm_cell_665/MatMul/ReadVariableOp,^while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_665_biasadd_readvariableop_resource5while_lstm_cell_665_biasadd_readvariableop_resource_0"n
4while_lstm_cell_665_matmul_1_readvariableop_resource6while_lstm_cell_665_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_665_matmul_readvariableop_resource4while_lstm_cell_665_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_665/BiasAdd/ReadVariableOp*while/lstm_cell_665/BiasAdd/ReadVariableOp2V
)while/lstm_cell_665/MatMul/ReadVariableOp)while/lstm_cell_665/MatMul/ReadVariableOp2Z
+while/lstm_cell_665/MatMul_1/ReadVariableOp+while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_783_layer_call_fn_4026869

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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4025702s
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4025156

inputs>
,lstm_cell_665_matmul_readvariableop_resource:2(@
.lstm_cell_665_matmul_1_readvariableop_resource:
(;
-lstm_cell_665_biasadd_readvariableop_resource:(
identity??$lstm_cell_665/BiasAdd/ReadVariableOp?#lstm_cell_665/MatMul/ReadVariableOp?%lstm_cell_665/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_665/MatMul/ReadVariableOpReadVariableOp,lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_665/MatMulMatMulstrided_slice_2:output:0+lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_665/MatMul_1MatMulzeros:output:0-lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_665/addAddV2lstm_cell_665/MatMul:product:0 lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_665/BiasAddBiasAddlstm_cell_665/add:z:0,lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_665/splitSplit&lstm_cell_665/split/split_dim:output:0lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_665/SigmoidSigmoidlstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_1Sigmoidlstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_665/mulMullstm_cell_665/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_665/ReluRelulstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_1Mullstm_cell_665/Sigmoid:y:0 lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_665/add_1AddV2lstm_cell_665/mul:z:0lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_2Sigmoidlstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_665/Relu_1Relulstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_2Mullstm_cell_665/Sigmoid_2:y:0"lstm_cell_665/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_665_matmul_readvariableop_resource.lstm_cell_665_matmul_1_readvariableop_resource-lstm_cell_665_biasadd_readvariableop_resource*
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
while_body_4025072*
condR
while_cond_4025071*K
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
NoOpNoOp%^lstm_cell_665/BiasAdd/ReadVariableOp$^lstm_cell_665/MatMul/ReadVariableOp&^lstm_cell_665/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_665/BiasAdd/ReadVariableOp$lstm_cell_665/BiasAdd/ReadVariableOp2J
#lstm_cell_665/MatMul/ReadVariableOp#lstm_cell_665/MatMul/ReadVariableOp2N
%lstm_cell_665/MatMul_1/ReadVariableOp%lstm_cell_665/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4027687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_664_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_664_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_664_matmul_readvariableop_resource:	d?G
4while_lstm_cell_664_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_664_biasadd_readvariableop_resource:	???*while/lstm_cell_664/BiasAdd/ReadVariableOp?)while/lstm_cell_664/MatMul/ReadVariableOp?+while/lstm_cell_664/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_664/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_664/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_664/addAddV2$while/lstm_cell_664/MatMul:product:0&while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_664/BiasAddBiasAddwhile/lstm_cell_664/add:z:02while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_664/splitSplit,while/lstm_cell_664/split/split_dim:output:0$while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_664/SigmoidSigmoid"while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_1Sigmoid"while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mulMul!while/lstm_cell_664/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_664/ReluRelu"while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_1Mulwhile/lstm_cell_664/Sigmoid:y:0&while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/add_1AddV2while/lstm_cell_664/mul:z:0while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_2Sigmoid"while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_664/Relu_1Reluwhile/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_2Mul!while/lstm_cell_664/Sigmoid_2:y:0(while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_664/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_664/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_664/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_664/BiasAdd/ReadVariableOp*^while/lstm_cell_664/MatMul/ReadVariableOp,^while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_664_biasadd_readvariableop_resource5while_lstm_cell_664_biasadd_readvariableop_resource_0"n
4while_lstm_cell_664_matmul_1_readvariableop_resource6while_lstm_cell_664_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_664_matmul_readvariableop_resource4while_lstm_cell_664_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_664/BiasAdd/ReadVariableOp*while/lstm_cell_664/BiasAdd/ReadVariableOp2V
)while/lstm_cell_664/MatMul/ReadVariableOp)while/lstm_cell_664/MatMul/ReadVariableOp2Z
+while/lstm_cell_664/MatMul_1/ReadVariableOp+while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4023737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4023737___redundant_placeholder05
1while_while_cond_4023737___redundant_placeholder15
1while_while_cond_4023737___redundant_placeholder25
1while_while_cond_4023737___redundant_placeholder3
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4028888

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
?K
?
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028387
inputs_0>
,lstm_cell_665_matmul_readvariableop_resource:2(@
.lstm_cell_665_matmul_1_readvariableop_resource:
(;
-lstm_cell_665_biasadd_readvariableop_resource:(
identity??$lstm_cell_665/BiasAdd/ReadVariableOp?#lstm_cell_665/MatMul/ReadVariableOp?%lstm_cell_665/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_665/MatMul/ReadVariableOpReadVariableOp,lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_665/MatMulMatMulstrided_slice_2:output:0+lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_665/MatMul_1MatMulzeros:output:0-lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_665/addAddV2lstm_cell_665/MatMul:product:0 lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_665/BiasAddBiasAddlstm_cell_665/add:z:0,lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_665/splitSplit&lstm_cell_665/split/split_dim:output:0lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_665/SigmoidSigmoidlstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_1Sigmoidlstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_665/mulMullstm_cell_665/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_665/ReluRelulstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_1Mullstm_cell_665/Sigmoid:y:0 lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_665/add_1AddV2lstm_cell_665/mul:z:0lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_2Sigmoidlstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_665/Relu_1Relulstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_2Mullstm_cell_665/Sigmoid_2:y:0"lstm_cell_665/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_665_matmul_readvariableop_resource.lstm_cell_665_matmul_1_readvariableop_resource-lstm_cell_665_biasadd_readvariableop_resource*
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
while_body_4028303*
condR
while_cond_4028302*K
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
NoOpNoOp%^lstm_cell_665/BiasAdd/ReadVariableOp$^lstm_cell_665/MatMul/ReadVariableOp&^lstm_cell_665/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_665/BiasAdd/ReadVariableOp$lstm_cell_665/BiasAdd/ReadVariableOp2J
#lstm_cell_665/MatMul/ReadVariableOp#lstm_cell_665/MatMul/ReadVariableOp2N
%lstm_cell_665/MatMul_1/ReadVariableOp%lstm_cell_665/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_785_layer_call_fn_4028101

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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4025372o
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
while_body_4027357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_663_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_663_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_663_matmul_readvariableop_resource:	?G
4while_lstm_cell_663_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_663_biasadd_readvariableop_resource:	???*while/lstm_cell_663/BiasAdd/ReadVariableOp?)while/lstm_cell_663/MatMul/ReadVariableOp?+while/lstm_cell_663/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_663/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_663/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_663/addAddV2$while/lstm_cell_663/MatMul:product:0&while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_663/BiasAddBiasAddwhile/lstm_cell_663/add:z:02while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_663/splitSplit,while/lstm_cell_663/split/split_dim:output:0$while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_663/SigmoidSigmoid"while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_1Sigmoid"while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mulMul!while/lstm_cell_663/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_663/ReluRelu"while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_1Mulwhile/lstm_cell_663/Sigmoid:y:0&while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/add_1AddV2while/lstm_cell_663/mul:z:0while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_2Sigmoid"while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_663/Relu_1Reluwhile/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_2Mul!while/lstm_cell_663/Sigmoid_2:y:0(while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_663/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_663/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_663/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_663/BiasAdd/ReadVariableOp*^while/lstm_cell_663/MatMul/ReadVariableOp,^while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_663_biasadd_readvariableop_resource5while_lstm_cell_663_biasadd_readvariableop_resource_0"n
4while_lstm_cell_663_matmul_1_readvariableop_resource6while_lstm_cell_663_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_663_matmul_readvariableop_resource4while_lstm_cell_663_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_663/BiasAdd/ReadVariableOp*while/lstm_cell_663/BiasAdd/ReadVariableOp2V
)while/lstm_cell_663/MatMul/ReadVariableOp)while/lstm_cell_663/MatMul/ReadVariableOp2Z
+while/lstm_cell_663/MatMul_1/ReadVariableOp+while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_665_layer_call_fn_4028922

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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4024570o
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
/__inference_lstm_cell_663_layer_call_fn_4028726

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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4023870o
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
?T
?
*sequential_261_lstm_783_while_body_4023289L
Hsequential_261_lstm_783_while_sequential_261_lstm_783_while_loop_counterR
Nsequential_261_lstm_783_while_sequential_261_lstm_783_while_maximum_iterations-
)sequential_261_lstm_783_while_placeholder/
+sequential_261_lstm_783_while_placeholder_1/
+sequential_261_lstm_783_while_placeholder_2/
+sequential_261_lstm_783_while_placeholder_3K
Gsequential_261_lstm_783_while_sequential_261_lstm_783_strided_slice_1_0?
?sequential_261_lstm_783_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_783_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_261_lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0:	?a
Nsequential_261_lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?\
Msequential_261_lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0:	?*
&sequential_261_lstm_783_while_identity,
(sequential_261_lstm_783_while_identity_1,
(sequential_261_lstm_783_while_identity_2,
(sequential_261_lstm_783_while_identity_3,
(sequential_261_lstm_783_while_identity_4,
(sequential_261_lstm_783_while_identity_5I
Esequential_261_lstm_783_while_sequential_261_lstm_783_strided_slice_1?
?sequential_261_lstm_783_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_783_tensorarrayunstack_tensorlistfromtensor]
Jsequential_261_lstm_783_while_lstm_cell_663_matmul_readvariableop_resource:	?_
Lsequential_261_lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource:	d?Z
Ksequential_261_lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource:	???Bsequential_261/lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp?Asequential_261/lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp?Csequential_261/lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp?
Osequential_261/lstm_783/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
Asequential_261/lstm_783/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_261_lstm_783_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_783_tensorarrayunstack_tensorlistfromtensor_0)sequential_261_lstm_783_while_placeholderXsequential_261/lstm_783/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
Asequential_261/lstm_783/while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOpLsequential_261_lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
2sequential_261/lstm_783/while/lstm_cell_663/MatMulMatMulHsequential_261/lstm_783/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_261/lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Csequential_261/lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOpNsequential_261_lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
4sequential_261/lstm_783/while/lstm_cell_663/MatMul_1MatMul+sequential_261_lstm_783_while_placeholder_2Ksequential_261/lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
/sequential_261/lstm_783/while/lstm_cell_663/addAddV2<sequential_261/lstm_783/while/lstm_cell_663/MatMul:product:0>sequential_261/lstm_783/while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Bsequential_261/lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOpMsequential_261_lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
3sequential_261/lstm_783/while/lstm_cell_663/BiasAddBiasAdd3sequential_261/lstm_783/while/lstm_cell_663/add:z:0Jsequential_261/lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
;sequential_261/lstm_783/while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_261/lstm_783/while/lstm_cell_663/splitSplitDsequential_261/lstm_783/while/lstm_cell_663/split/split_dim:output:0<sequential_261/lstm_783/while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
3sequential_261/lstm_783/while/lstm_cell_663/SigmoidSigmoid:sequential_261/lstm_783/while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d?
5sequential_261/lstm_783/while/lstm_cell_663/Sigmoid_1Sigmoid:sequential_261/lstm_783/while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
/sequential_261/lstm_783/while/lstm_cell_663/mulMul9sequential_261/lstm_783/while/lstm_cell_663/Sigmoid_1:y:0+sequential_261_lstm_783_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
0sequential_261/lstm_783/while/lstm_cell_663/ReluRelu:sequential_261/lstm_783/while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
1sequential_261/lstm_783/while/lstm_cell_663/mul_1Mul7sequential_261/lstm_783/while/lstm_cell_663/Sigmoid:y:0>sequential_261/lstm_783/while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
1sequential_261/lstm_783/while/lstm_cell_663/add_1AddV23sequential_261/lstm_783/while/lstm_cell_663/mul:z:05sequential_261/lstm_783/while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
5sequential_261/lstm_783/while/lstm_cell_663/Sigmoid_2Sigmoid:sequential_261/lstm_783/while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????d?
2sequential_261/lstm_783/while/lstm_cell_663/Relu_1Relu5sequential_261/lstm_783/while/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
1sequential_261/lstm_783/while/lstm_cell_663/mul_2Mul9sequential_261/lstm_783/while/lstm_cell_663/Sigmoid_2:y:0@sequential_261/lstm_783/while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Bsequential_261/lstm_783/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_261_lstm_783_while_placeholder_1)sequential_261_lstm_783_while_placeholder5sequential_261/lstm_783/while/lstm_cell_663/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_261/lstm_783/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_261/lstm_783/while/addAddV2)sequential_261_lstm_783_while_placeholder,sequential_261/lstm_783/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_261/lstm_783/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_261/lstm_783/while/add_1AddV2Hsequential_261_lstm_783_while_sequential_261_lstm_783_while_loop_counter.sequential_261/lstm_783/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_261/lstm_783/while/IdentityIdentity'sequential_261/lstm_783/while/add_1:z:0#^sequential_261/lstm_783/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_783/while/Identity_1IdentityNsequential_261_lstm_783_while_sequential_261_lstm_783_while_maximum_iterations#^sequential_261/lstm_783/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_783/while/Identity_2Identity%sequential_261/lstm_783/while/add:z:0#^sequential_261/lstm_783/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_783/while/Identity_3IdentityRsequential_261/lstm_783/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_261/lstm_783/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_783/while/Identity_4Identity5sequential_261/lstm_783/while/lstm_cell_663/mul_2:z:0#^sequential_261/lstm_783/while/NoOp*
T0*'
_output_shapes
:?????????d?
(sequential_261/lstm_783/while/Identity_5Identity5sequential_261/lstm_783/while/lstm_cell_663/add_1:z:0#^sequential_261/lstm_783/while/NoOp*
T0*'
_output_shapes
:?????????d?
"sequential_261/lstm_783/while/NoOpNoOpC^sequential_261/lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOpB^sequential_261/lstm_783/while/lstm_cell_663/MatMul/ReadVariableOpD^sequential_261/lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_261_lstm_783_while_identity/sequential_261/lstm_783/while/Identity:output:0"]
(sequential_261_lstm_783_while_identity_11sequential_261/lstm_783/while/Identity_1:output:0"]
(sequential_261_lstm_783_while_identity_21sequential_261/lstm_783/while/Identity_2:output:0"]
(sequential_261_lstm_783_while_identity_31sequential_261/lstm_783/while/Identity_3:output:0"]
(sequential_261_lstm_783_while_identity_41sequential_261/lstm_783/while/Identity_4:output:0"]
(sequential_261_lstm_783_while_identity_51sequential_261/lstm_783/while/Identity_5:output:0"?
Ksequential_261_lstm_783_while_lstm_cell_663_biasadd_readvariableop_resourceMsequential_261_lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0"?
Lsequential_261_lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resourceNsequential_261_lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0"?
Jsequential_261_lstm_783_while_lstm_cell_663_matmul_readvariableop_resourceLsequential_261_lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0"?
Esequential_261_lstm_783_while_sequential_261_lstm_783_strided_slice_1Gsequential_261_lstm_783_while_sequential_261_lstm_783_strided_slice_1_0"?
?sequential_261_lstm_783_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_783_tensorarrayunstack_tensorlistfromtensor?sequential_261_lstm_783_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_783_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Bsequential_261/lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOpBsequential_261/lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp2?
Asequential_261/lstm_783/while/lstm_cell_663/MatMul/ReadVariableOpAsequential_261/lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp2?
Csequential_261/lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOpCsequential_261/lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027914

inputs?
,lstm_cell_664_matmul_readvariableop_resource:	d?A
.lstm_cell_664_matmul_1_readvariableop_resource:	2?<
-lstm_cell_664_biasadd_readvariableop_resource:	?
identity??$lstm_cell_664/BiasAdd/ReadVariableOp?#lstm_cell_664/MatMul/ReadVariableOp?%lstm_cell_664/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_664/MatMul/ReadVariableOpReadVariableOp,lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_664/MatMulMatMulstrided_slice_2:output:0+lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_664/MatMul_1MatMulzeros:output:0-lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_664/addAddV2lstm_cell_664/MatMul:product:0 lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_664/BiasAddBiasAddlstm_cell_664/add:z:0,lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_664/splitSplit&lstm_cell_664/split/split_dim:output:0lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_664/SigmoidSigmoidlstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_1Sigmoidlstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_664/mulMullstm_cell_664/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_664/ReluRelulstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_1Mullstm_cell_664/Sigmoid:y:0 lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_664/add_1AddV2lstm_cell_664/mul:z:0lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_2Sigmoidlstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_664/Relu_1Relulstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_2Mullstm_cell_664/Sigmoid_2:y:0"lstm_cell_664/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_664_matmul_readvariableop_resource.lstm_cell_664_matmul_1_readvariableop_resource-lstm_cell_664_biasadd_readvariableop_resource*
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
while_body_4027830*
condR
while_cond_4027829*K
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
NoOpNoOp%^lstm_cell_664/BiasAdd/ReadVariableOp$^lstm_cell_664/MatMul/ReadVariableOp&^lstm_cell_664/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_664/BiasAdd/ReadVariableOp$lstm_cell_664/BiasAdd/ReadVariableOp2J
#lstm_cell_664/MatMul/ReadVariableOp#lstm_cell_664/MatMul/ReadVariableOp2N
%lstm_cell_664/MatMul_1/ReadVariableOp%lstm_cell_664/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_4027543
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4027543___redundant_placeholder05
1while_while_cond_4027543___redundant_placeholder15
1while_while_cond_4027543___redundant_placeholder25
1while_while_cond_4027543___redundant_placeholder3
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
lstm_784_while_cond_4026168.
*lstm_784_while_lstm_784_while_loop_counter4
0lstm_784_while_lstm_784_while_maximum_iterations
lstm_784_while_placeholder 
lstm_784_while_placeholder_1 
lstm_784_while_placeholder_2 
lstm_784_while_placeholder_30
,lstm_784_while_less_lstm_784_strided_slice_1G
Clstm_784_while_lstm_784_while_cond_4026168___redundant_placeholder0G
Clstm_784_while_lstm_784_while_cond_4026168___redundant_placeholder1G
Clstm_784_while_lstm_784_while_cond_4026168___redundant_placeholder2G
Clstm_784_while_lstm_784_while_cond_4026168___redundant_placeholder3
lstm_784_while_identity
?
lstm_784/while/LessLesslstm_784_while_placeholder,lstm_784_while_less_lstm_784_strided_slice_1*
T0*
_output_shapes
: ]
lstm_784/while/IdentityIdentitylstm_784/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_784_while_identity lstm_784/while/Identity:output:0*(
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

lstm_784_while_body_4026596.
*lstm_784_while_lstm_784_while_loop_counter4
0lstm_784_while_lstm_784_while_maximum_iterations
lstm_784_while_placeholder 
lstm_784_while_placeholder_1 
lstm_784_while_placeholder_2 
lstm_784_while_placeholder_3-
)lstm_784_while_lstm_784_strided_slice_1_0i
elstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0:	d?R
?lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?M
>lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0:	?
lstm_784_while_identity
lstm_784_while_identity_1
lstm_784_while_identity_2
lstm_784_while_identity_3
lstm_784_while_identity_4
lstm_784_while_identity_5+
'lstm_784_while_lstm_784_strided_slice_1g
clstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensorN
;lstm_784_while_lstm_cell_664_matmul_readvariableop_resource:	d?P
=lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource:	2?K
<lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource:	???3lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp?2lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp?4lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp?
@lstm_784/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_784/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensor_0lstm_784_while_placeholderIlstm_784/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_784/while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp=lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_784/while/lstm_cell_664/MatMulMatMul9lstm_784/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp?lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_784/while/lstm_cell_664/MatMul_1MatMullstm_784_while_placeholder_2<lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_784/while/lstm_cell_664/addAddV2-lstm_784/while/lstm_cell_664/MatMul:product:0/lstm_784/while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp>lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_784/while/lstm_cell_664/BiasAddBiasAdd$lstm_784/while/lstm_cell_664/add:z:0;lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_784/while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_784/while/lstm_cell_664/splitSplit5lstm_784/while/lstm_cell_664/split/split_dim:output:0-lstm_784/while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_784/while/lstm_cell_664/SigmoidSigmoid+lstm_784/while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_784/while/lstm_cell_664/Sigmoid_1Sigmoid+lstm_784/while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_784/while/lstm_cell_664/mulMul*lstm_784/while/lstm_cell_664/Sigmoid_1:y:0lstm_784_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_784/while/lstm_cell_664/ReluRelu+lstm_784/while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_784/while/lstm_cell_664/mul_1Mul(lstm_784/while/lstm_cell_664/Sigmoid:y:0/lstm_784/while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_784/while/lstm_cell_664/add_1AddV2$lstm_784/while/lstm_cell_664/mul:z:0&lstm_784/while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_784/while/lstm_cell_664/Sigmoid_2Sigmoid+lstm_784/while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_784/while/lstm_cell_664/Relu_1Relu&lstm_784/while/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_784/while/lstm_cell_664/mul_2Mul*lstm_784/while/lstm_cell_664/Sigmoid_2:y:01lstm_784/while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_784/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_784_while_placeholder_1lstm_784_while_placeholder&lstm_784/while/lstm_cell_664/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_784/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_784/while/addAddV2lstm_784_while_placeholderlstm_784/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_784/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_784/while/add_1AddV2*lstm_784_while_lstm_784_while_loop_counterlstm_784/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_784/while/IdentityIdentitylstm_784/while/add_1:z:0^lstm_784/while/NoOp*
T0*
_output_shapes
: ?
lstm_784/while/Identity_1Identity0lstm_784_while_lstm_784_while_maximum_iterations^lstm_784/while/NoOp*
T0*
_output_shapes
: t
lstm_784/while/Identity_2Identitylstm_784/while/add:z:0^lstm_784/while/NoOp*
T0*
_output_shapes
: ?
lstm_784/while/Identity_3IdentityClstm_784/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_784/while/NoOp*
T0*
_output_shapes
: ?
lstm_784/while/Identity_4Identity&lstm_784/while/lstm_cell_664/mul_2:z:0^lstm_784/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_784/while/Identity_5Identity&lstm_784/while/lstm_cell_664/add_1:z:0^lstm_784/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_784/while/NoOpNoOp4^lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp3^lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp5^lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_784_while_identity lstm_784/while/Identity:output:0"?
lstm_784_while_identity_1"lstm_784/while/Identity_1:output:0"?
lstm_784_while_identity_2"lstm_784/while/Identity_2:output:0"?
lstm_784_while_identity_3"lstm_784/while/Identity_3:output:0"?
lstm_784_while_identity_4"lstm_784/while/Identity_4:output:0"?
lstm_784_while_identity_5"lstm_784/while/Identity_5:output:0"T
'lstm_784_while_lstm_784_strided_slice_1)lstm_784_while_lstm_784_strided_slice_1_0"~
<lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource>lstm_784_while_lstm_cell_664_biasadd_readvariableop_resource_0"?
=lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource?lstm_784_while_lstm_cell_664_matmul_1_readvariableop_resource_0"|
;lstm_784_while_lstm_cell_664_matmul_readvariableop_resource=lstm_784_while_lstm_cell_664_matmul_readvariableop_resource_0"?
clstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensorelstm_784_while_tensorarrayv2read_tensorlistgetitem_lstm_784_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp3lstm_784/while/lstm_cell_664/BiasAdd/ReadVariableOp2h
2lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp2lstm_784/while/lstm_cell_664/MatMul/ReadVariableOp2l
4lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp4lstm_784/while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027441

inputs?
,lstm_cell_663_matmul_readvariableop_resource:	?A
.lstm_cell_663_matmul_1_readvariableop_resource:	d?<
-lstm_cell_663_biasadd_readvariableop_resource:	?
identity??$lstm_cell_663/BiasAdd/ReadVariableOp?#lstm_cell_663/MatMul/ReadVariableOp?%lstm_cell_663/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_663/MatMul/ReadVariableOpReadVariableOp,lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_663/MatMulMatMulstrided_slice_2:output:0+lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_663/MatMul_1MatMulzeros:output:0-lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_663/addAddV2lstm_cell_663/MatMul:product:0 lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_663/BiasAddBiasAddlstm_cell_663/add:z:0,lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_663/splitSplit&lstm_cell_663/split/split_dim:output:0lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_663/SigmoidSigmoidlstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_1Sigmoidlstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_663/mulMullstm_cell_663/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_663/ReluRelulstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_1Mullstm_cell_663/Sigmoid:y:0 lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_663/add_1AddV2lstm_cell_663/mul:z:0lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_2Sigmoidlstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_663/Relu_1Relulstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_2Mullstm_cell_663/Sigmoid_2:y:0"lstm_cell_663/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_663_matmul_readvariableop_resource.lstm_cell_663_matmul_1_readvariableop_resource-lstm_cell_663_biasadd_readvariableop_resource*
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
while_body_4027357*
condR
while_cond_4027356*K
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
NoOpNoOp%^lstm_cell_663/BiasAdd/ReadVariableOp$^lstm_cell_663/MatMul/ReadVariableOp&^lstm_cell_663/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_663/BiasAdd/ReadVariableOp$lstm_cell_663/BiasAdd/ReadVariableOp2J
#lstm_cell_663/MatMul/ReadVariableOp#lstm_cell_663/MatMul/ReadVariableOp2N
%lstm_cell_663/MatMul_1/ReadVariableOp%lstm_cell_663/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_784_layer_call_fn_4027485

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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4025537s
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
*__inference_lstm_784_layer_call_fn_4027463
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4024348|
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

lstm_783_while_body_4026457.
*lstm_783_while_lstm_783_while_loop_counter4
0lstm_783_while_lstm_783_while_maximum_iterations
lstm_783_while_placeholder 
lstm_783_while_placeholder_1 
lstm_783_while_placeholder_2 
lstm_783_while_placeholder_3-
)lstm_783_while_lstm_783_strided_slice_1_0i
elstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0:	?R
?lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?M
>lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0:	?
lstm_783_while_identity
lstm_783_while_identity_1
lstm_783_while_identity_2
lstm_783_while_identity_3
lstm_783_while_identity_4
lstm_783_while_identity_5+
'lstm_783_while_lstm_783_strided_slice_1g
clstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensorN
;lstm_783_while_lstm_cell_663_matmul_readvariableop_resource:	?P
=lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource:	d?K
<lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource:	???3lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp?2lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp?4lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp?
@lstm_783/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_783/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensor_0lstm_783_while_placeholderIlstm_783/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_783/while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp=lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_783/while/lstm_cell_663/MatMulMatMul9lstm_783/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp?lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_783/while/lstm_cell_663/MatMul_1MatMullstm_783_while_placeholder_2<lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_783/while/lstm_cell_663/addAddV2-lstm_783/while/lstm_cell_663/MatMul:product:0/lstm_783/while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp>lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_783/while/lstm_cell_663/BiasAddBiasAdd$lstm_783/while/lstm_cell_663/add:z:0;lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_783/while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_783/while/lstm_cell_663/splitSplit5lstm_783/while/lstm_cell_663/split/split_dim:output:0-lstm_783/while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_783/while/lstm_cell_663/SigmoidSigmoid+lstm_783/while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_783/while/lstm_cell_663/Sigmoid_1Sigmoid+lstm_783/while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_783/while/lstm_cell_663/mulMul*lstm_783/while/lstm_cell_663/Sigmoid_1:y:0lstm_783_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_783/while/lstm_cell_663/ReluRelu+lstm_783/while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_783/while/lstm_cell_663/mul_1Mul(lstm_783/while/lstm_cell_663/Sigmoid:y:0/lstm_783/while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_783/while/lstm_cell_663/add_1AddV2$lstm_783/while/lstm_cell_663/mul:z:0&lstm_783/while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_783/while/lstm_cell_663/Sigmoid_2Sigmoid+lstm_783/while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_783/while/lstm_cell_663/Relu_1Relu&lstm_783/while/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_783/while/lstm_cell_663/mul_2Mul*lstm_783/while/lstm_cell_663/Sigmoid_2:y:01lstm_783/while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_783/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_783_while_placeholder_1lstm_783_while_placeholder&lstm_783/while/lstm_cell_663/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_783/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_783/while/addAddV2lstm_783_while_placeholderlstm_783/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_783/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_783/while/add_1AddV2*lstm_783_while_lstm_783_while_loop_counterlstm_783/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_783/while/IdentityIdentitylstm_783/while/add_1:z:0^lstm_783/while/NoOp*
T0*
_output_shapes
: ?
lstm_783/while/Identity_1Identity0lstm_783_while_lstm_783_while_maximum_iterations^lstm_783/while/NoOp*
T0*
_output_shapes
: t
lstm_783/while/Identity_2Identitylstm_783/while/add:z:0^lstm_783/while/NoOp*
T0*
_output_shapes
: ?
lstm_783/while/Identity_3IdentityClstm_783/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_783/while/NoOp*
T0*
_output_shapes
: ?
lstm_783/while/Identity_4Identity&lstm_783/while/lstm_cell_663/mul_2:z:0^lstm_783/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_783/while/Identity_5Identity&lstm_783/while/lstm_cell_663/add_1:z:0^lstm_783/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_783/while/NoOpNoOp4^lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp3^lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp5^lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_783_while_identity lstm_783/while/Identity:output:0"?
lstm_783_while_identity_1"lstm_783/while/Identity_1:output:0"?
lstm_783_while_identity_2"lstm_783/while/Identity_2:output:0"?
lstm_783_while_identity_3"lstm_783/while/Identity_3:output:0"?
lstm_783_while_identity_4"lstm_783/while/Identity_4:output:0"?
lstm_783_while_identity_5"lstm_783/while/Identity_5:output:0"T
'lstm_783_while_lstm_783_strided_slice_1)lstm_783_while_lstm_783_strided_slice_1_0"~
<lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource>lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0"?
=lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource?lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0"|
;lstm_783_while_lstm_cell_663_matmul_readvariableop_resource=lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0"?
clstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensorelstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp3lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp2h
2lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp2lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp2l
4lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp4lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
F__inference_dense_261_layer_call_and_return_conditional_losses_4028692

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
while_cond_4025617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4025617___redundant_placeholder05
1while_while_cond_4025617___redundant_placeholder15
1while_while_cond_4025617___redundant_placeholder25
1while_while_cond_4025617___redundant_placeholder3
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

lstm_785_while_body_4026735.
*lstm_785_while_lstm_785_while_loop_counter4
0lstm_785_while_lstm_785_while_maximum_iterations
lstm_785_while_placeholder 
lstm_785_while_placeholder_1 
lstm_785_while_placeholder_2 
lstm_785_while_placeholder_3-
)lstm_785_while_lstm_785_strided_slice_1_0i
elstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0:2(Q
?lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0:
(L
>lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0:(
lstm_785_while_identity
lstm_785_while_identity_1
lstm_785_while_identity_2
lstm_785_while_identity_3
lstm_785_while_identity_4
lstm_785_while_identity_5+
'lstm_785_while_lstm_785_strided_slice_1g
clstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensorM
;lstm_785_while_lstm_cell_665_matmul_readvariableop_resource:2(O
=lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource:
(J
<lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource:(??3lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp?2lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp?4lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp?
@lstm_785/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_785/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensor_0lstm_785_while_placeholderIlstm_785/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_785/while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp=lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_785/while/lstm_cell_665/MatMulMatMul9lstm_785/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp?lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_785/while/lstm_cell_665/MatMul_1MatMullstm_785_while_placeholder_2<lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_785/while/lstm_cell_665/addAddV2-lstm_785/while/lstm_cell_665/MatMul:product:0/lstm_785/while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp>lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_785/while/lstm_cell_665/BiasAddBiasAdd$lstm_785/while/lstm_cell_665/add:z:0;lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_785/while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_785/while/lstm_cell_665/splitSplit5lstm_785/while/lstm_cell_665/split/split_dim:output:0-lstm_785/while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_785/while/lstm_cell_665/SigmoidSigmoid+lstm_785/while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_785/while/lstm_cell_665/Sigmoid_1Sigmoid+lstm_785/while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_785/while/lstm_cell_665/mulMul*lstm_785/while/lstm_cell_665/Sigmoid_1:y:0lstm_785_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_785/while/lstm_cell_665/ReluRelu+lstm_785/while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_785/while/lstm_cell_665/mul_1Mul(lstm_785/while/lstm_cell_665/Sigmoid:y:0/lstm_785/while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_785/while/lstm_cell_665/add_1AddV2$lstm_785/while/lstm_cell_665/mul:z:0&lstm_785/while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_785/while/lstm_cell_665/Sigmoid_2Sigmoid+lstm_785/while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_785/while/lstm_cell_665/Relu_1Relu&lstm_785/while/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_785/while/lstm_cell_665/mul_2Mul*lstm_785/while/lstm_cell_665/Sigmoid_2:y:01lstm_785/while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_785/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_785_while_placeholder_1lstm_785_while_placeholder&lstm_785/while/lstm_cell_665/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_785/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_785/while/addAddV2lstm_785_while_placeholderlstm_785/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_785/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_785/while/add_1AddV2*lstm_785_while_lstm_785_while_loop_counterlstm_785/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_785/while/IdentityIdentitylstm_785/while/add_1:z:0^lstm_785/while/NoOp*
T0*
_output_shapes
: ?
lstm_785/while/Identity_1Identity0lstm_785_while_lstm_785_while_maximum_iterations^lstm_785/while/NoOp*
T0*
_output_shapes
: t
lstm_785/while/Identity_2Identitylstm_785/while/add:z:0^lstm_785/while/NoOp*
T0*
_output_shapes
: ?
lstm_785/while/Identity_3IdentityClstm_785/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_785/while/NoOp*
T0*
_output_shapes
: ?
lstm_785/while/Identity_4Identity&lstm_785/while/lstm_cell_665/mul_2:z:0^lstm_785/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_785/while/Identity_5Identity&lstm_785/while/lstm_cell_665/add_1:z:0^lstm_785/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_785/while/NoOpNoOp4^lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp3^lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp5^lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_785_while_identity lstm_785/while/Identity:output:0"?
lstm_785_while_identity_1"lstm_785/while/Identity_1:output:0"?
lstm_785_while_identity_2"lstm_785/while/Identity_2:output:0"?
lstm_785_while_identity_3"lstm_785/while/Identity_3:output:0"?
lstm_785_while_identity_4"lstm_785/while/Identity_4:output:0"?
lstm_785_while_identity_5"lstm_785/while/Identity_5:output:0"T
'lstm_785_while_lstm_785_strided_slice_1)lstm_785_while_lstm_785_strided_slice_1_0"~
<lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource>lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0"?
=lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource?lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0"|
;lstm_785_while_lstm_cell_665_matmul_readvariableop_resource=lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0"?
clstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensorelstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp3lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp2h
2lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp2lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp2l
4lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp4lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4024629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_665_4024653_0:2(/
while_lstm_cell_665_4024655_0:
(+
while_lstm_cell_665_4024657_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_665_4024653:2(-
while_lstm_cell_665_4024655:
()
while_lstm_cell_665_4024657:(??+while/lstm_cell_665/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_665/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_665_4024653_0while_lstm_cell_665_4024655_0while_lstm_cell_665_4024657_0*
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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4024570?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_665/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_665/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_665/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_665/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_665_4024653while_lstm_cell_665_4024653_0"<
while_lstm_cell_665_4024655while_lstm_cell_665_4024655_0"<
while_lstm_cell_665_4024657while_lstm_cell_665_4024657_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_665/StatefulPartitionedCall+while/lstm_cell_665/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4027829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4027829___redundant_placeholder05
1while_while_cond_4027829___redundant_placeholder15
1while_while_cond_4027829___redundant_placeholder25
1while_while_cond_4027829___redundant_placeholder3
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
*__inference_lstm_784_layer_call_fn_4027452
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4024157|
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
*__inference_lstm_783_layer_call_fn_4026836
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4023807|
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
while_cond_4027213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4027213___redundant_placeholder05
1while_while_cond_4027213___redundant_placeholder15
1while_while_cond_4027213___redundant_placeholder25
1while_while_cond_4027213___redundant_placeholder3
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
while_body_4028303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_665_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_665_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_665_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_665_matmul_readvariableop_resource:2(F
4while_lstm_cell_665_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_665_biasadd_readvariableop_resource:(??*while/lstm_cell_665/BiasAdd/ReadVariableOp?)while/lstm_cell_665/MatMul/ReadVariableOp?+while/lstm_cell_665/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_665/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_665/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_665/addAddV2$while/lstm_cell_665/MatMul:product:0&while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_665/BiasAddBiasAddwhile/lstm_cell_665/add:z:02while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_665/splitSplit,while/lstm_cell_665/split/split_dim:output:0$while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_665/SigmoidSigmoid"while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_1Sigmoid"while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mulMul!while/lstm_cell_665/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_665/ReluRelu"while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_1Mulwhile/lstm_cell_665/Sigmoid:y:0&while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/add_1AddV2while/lstm_cell_665/mul:z:0while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_2Sigmoid"while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_665/Relu_1Reluwhile/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_2Mul!while/lstm_cell_665/Sigmoid_2:y:0(while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_665/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_665/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_665/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_665/BiasAdd/ReadVariableOp*^while/lstm_cell_665/MatMul/ReadVariableOp,^while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_665_biasadd_readvariableop_resource5while_lstm_cell_665_biasadd_readvariableop_resource_0"n
4while_lstm_cell_665_matmul_1_readvariableop_resource6while_lstm_cell_665_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_665_matmul_readvariableop_resource4while_lstm_cell_665_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_665/BiasAdd/ReadVariableOp*while/lstm_cell_665/BiasAdd/ReadVariableOp2V
)while/lstm_cell_665/MatMul/ReadVariableOp)while/lstm_cell_665/MatMul/ReadVariableOp2Z
+while/lstm_cell_665/MatMul_1/ReadVariableOp+while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4024438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_665_4024462_0:2(/
while_lstm_cell_665_4024464_0:
(+
while_lstm_cell_665_4024466_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_665_4024462:2(-
while_lstm_cell_665_4024464:
()
while_lstm_cell_665_4024466:(??+while/lstm_cell_665/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_665/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_665_4024462_0while_lstm_cell_665_4024464_0while_lstm_cell_665_4024466_0*
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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4024424?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_665/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_665/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_665/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_665/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_665_4024462while_lstm_cell_665_4024462_0"<
while_lstm_cell_665_4024464while_lstm_cell_665_4024464_0"<
while_lstm_cell_665_4024466while_lstm_cell_665_4024466_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_665/StatefulPartitionedCall+while/lstm_cell_665/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4024856

inputs?
,lstm_cell_663_matmul_readvariableop_resource:	?A
.lstm_cell_663_matmul_1_readvariableop_resource:	d?<
-lstm_cell_663_biasadd_readvariableop_resource:	?
identity??$lstm_cell_663/BiasAdd/ReadVariableOp?#lstm_cell_663/MatMul/ReadVariableOp?%lstm_cell_663/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_663/MatMul/ReadVariableOpReadVariableOp,lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_663/MatMulMatMulstrided_slice_2:output:0+lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_663/MatMul_1MatMulzeros:output:0-lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_663/addAddV2lstm_cell_663/MatMul:product:0 lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_663/BiasAddBiasAddlstm_cell_663/add:z:0,lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_663/splitSplit&lstm_cell_663/split/split_dim:output:0lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_663/SigmoidSigmoidlstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_1Sigmoidlstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_663/mulMullstm_cell_663/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_663/ReluRelulstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_1Mullstm_cell_663/Sigmoid:y:0 lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_663/add_1AddV2lstm_cell_663/mul:z:0lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_2Sigmoidlstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_663/Relu_1Relulstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_2Mullstm_cell_663/Sigmoid_2:y:0"lstm_cell_663/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_663_matmul_readvariableop_resource.lstm_cell_663_matmul_1_readvariableop_resource-lstm_cell_663_biasadd_readvariableop_resource*
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
while_body_4024772*
condR
while_cond_4024771*K
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
NoOpNoOp%^lstm_cell_663/BiasAdd/ReadVariableOp$^lstm_cell_663/MatMul/ReadVariableOp&^lstm_cell_663/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_663/BiasAdd/ReadVariableOp$lstm_cell_663/BiasAdd/ReadVariableOp2J
#lstm_cell_663/MatMul/ReadVariableOp#lstm_cell_663/MatMul/ReadVariableOp2N
%lstm_cell_663/MatMul_1/ReadVariableOp%lstm_cell_663/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4027972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4027972___redundant_placeholder05
1while_while_cond_4027972___redundant_placeholder15
1while_while_cond_4027972___redundant_placeholder25
1while_while_cond_4027972___redundant_placeholder3
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4028057

inputs?
,lstm_cell_664_matmul_readvariableop_resource:	d?A
.lstm_cell_664_matmul_1_readvariableop_resource:	2?<
-lstm_cell_664_biasadd_readvariableop_resource:	?
identity??$lstm_cell_664/BiasAdd/ReadVariableOp?#lstm_cell_664/MatMul/ReadVariableOp?%lstm_cell_664/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_664/MatMul/ReadVariableOpReadVariableOp,lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_664/MatMulMatMulstrided_slice_2:output:0+lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_664/MatMul_1MatMulzeros:output:0-lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_664/addAddV2lstm_cell_664/MatMul:product:0 lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_664/BiasAddBiasAddlstm_cell_664/add:z:0,lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_664/splitSplit&lstm_cell_664/split/split_dim:output:0lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_664/SigmoidSigmoidlstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_1Sigmoidlstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_664/mulMullstm_cell_664/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_664/ReluRelulstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_1Mullstm_cell_664/Sigmoid:y:0 lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_664/add_1AddV2lstm_cell_664/mul:z:0lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_2Sigmoidlstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_664/Relu_1Relulstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_2Mullstm_cell_664/Sigmoid_2:y:0"lstm_cell_664/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_664_matmul_readvariableop_resource.lstm_cell_664_matmul_1_readvariableop_resource-lstm_cell_664_biasadd_readvariableop_resource*
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
while_body_4027973*
condR
while_cond_4027972*K
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
NoOpNoOp%^lstm_cell_664/BiasAdd/ReadVariableOp$^lstm_cell_664/MatMul/ReadVariableOp&^lstm_cell_664/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_664/BiasAdd/ReadVariableOp$lstm_cell_664/BiasAdd/ReadVariableOp2J
#lstm_cell_664/MatMul/ReadVariableOp#lstm_cell_664/MatMul/ReadVariableOp2N
%lstm_cell_664/MatMul_1/ReadVariableOp%lstm_cell_664/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*sequential_261_lstm_785_while_cond_4023566L
Hsequential_261_lstm_785_while_sequential_261_lstm_785_while_loop_counterR
Nsequential_261_lstm_785_while_sequential_261_lstm_785_while_maximum_iterations-
)sequential_261_lstm_785_while_placeholder/
+sequential_261_lstm_785_while_placeholder_1/
+sequential_261_lstm_785_while_placeholder_2/
+sequential_261_lstm_785_while_placeholder_3N
Jsequential_261_lstm_785_while_less_sequential_261_lstm_785_strided_slice_1e
asequential_261_lstm_785_while_sequential_261_lstm_785_while_cond_4023566___redundant_placeholder0e
asequential_261_lstm_785_while_sequential_261_lstm_785_while_cond_4023566___redundant_placeholder1e
asequential_261_lstm_785_while_sequential_261_lstm_785_while_cond_4023566___redundant_placeholder2e
asequential_261_lstm_785_while_sequential_261_lstm_785_while_cond_4023566___redundant_placeholder3*
&sequential_261_lstm_785_while_identity
?
"sequential_261/lstm_785/while/LessLess)sequential_261_lstm_785_while_placeholderJsequential_261_lstm_785_while_less_sequential_261_lstm_785_strided_slice_1*
T0*
_output_shapes
: {
&sequential_261/lstm_785/while/IdentityIdentity&sequential_261/lstm_785/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_261_lstm_785_while_identity/sequential_261/lstm_785/while/Identity:output:0*(
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
while_cond_4025071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4025071___redundant_placeholder05
1while_while_cond_4025071___redundant_placeholder15
1while_while_cond_4025071___redundant_placeholder25
1while_while_cond_4025071___redundant_placeholder3
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
while_body_4024279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_664_4024303_0:	d?0
while_lstm_cell_664_4024305_0:	2?,
while_lstm_cell_664_4024307_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_664_4024303:	d?.
while_lstm_cell_664_4024305:	2?*
while_lstm_cell_664_4024307:	???+while/lstm_cell_664/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_664/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_664_4024303_0while_lstm_cell_664_4024305_0while_lstm_cell_664_4024307_0*
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4024220?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_664/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_664/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_664/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_664/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_664_4024303while_lstm_cell_664_4024303_0"<
while_lstm_cell_664_4024305while_lstm_cell_664_4024305_0"<
while_lstm_cell_664_4024307while_lstm_cell_664_4024307_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_664/StatefulPartitionedCall+while/lstm_cell_664/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027155
inputs_0?
,lstm_cell_663_matmul_readvariableop_resource:	?A
.lstm_cell_663_matmul_1_readvariableop_resource:	d?<
-lstm_cell_663_biasadd_readvariableop_resource:	?
identity??$lstm_cell_663/BiasAdd/ReadVariableOp?#lstm_cell_663/MatMul/ReadVariableOp?%lstm_cell_663/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_663/MatMul/ReadVariableOpReadVariableOp,lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_663/MatMulMatMulstrided_slice_2:output:0+lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_663/MatMul_1MatMulzeros:output:0-lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_663/addAddV2lstm_cell_663/MatMul:product:0 lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_663/BiasAddBiasAddlstm_cell_663/add:z:0,lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_663/splitSplit&lstm_cell_663/split/split_dim:output:0lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_663/SigmoidSigmoidlstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_1Sigmoidlstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_663/mulMullstm_cell_663/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_663/ReluRelulstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_1Mullstm_cell_663/Sigmoid:y:0 lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_663/add_1AddV2lstm_cell_663/mul:z:0lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_2Sigmoidlstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_663/Relu_1Relulstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_2Mullstm_cell_663/Sigmoid_2:y:0"lstm_cell_663/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_663_matmul_readvariableop_resource.lstm_cell_663_matmul_1_readvariableop_resource-lstm_cell_663_biasadd_readvariableop_resource*
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
while_body_4027071*
condR
while_cond_4027070*K
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
NoOpNoOp%^lstm_cell_663/BiasAdd/ReadVariableOp$^lstm_cell_663/MatMul/ReadVariableOp&^lstm_cell_663/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_663/BiasAdd/ReadVariableOp$lstm_cell_663/BiasAdd/ReadVariableOp2J
#lstm_cell_663/MatMul/ReadVariableOp#lstm_cell_663/MatMul/ReadVariableOp2N
%lstm_cell_663/MatMul_1/ReadVariableOp%lstm_cell_663/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4028954

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

?
0__inference_sequential_261_layer_call_fn_4025206
lstm_783_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_783_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025181o
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
_user_specified_namelstm_783_input
?
?
*__inference_lstm_785_layer_call_fn_4028090

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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4025156o
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027771
inputs_0?
,lstm_cell_664_matmul_readvariableop_resource:	d?A
.lstm_cell_664_matmul_1_readvariableop_resource:	2?<
-lstm_cell_664_biasadd_readvariableop_resource:	?
identity??$lstm_cell_664/BiasAdd/ReadVariableOp?#lstm_cell_664/MatMul/ReadVariableOp?%lstm_cell_664/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_664/MatMul/ReadVariableOpReadVariableOp,lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_664/MatMulMatMulstrided_slice_2:output:0+lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_664/MatMul_1MatMulzeros:output:0-lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_664/addAddV2lstm_cell_664/MatMul:product:0 lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_664/BiasAddBiasAddlstm_cell_664/add:z:0,lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_664/splitSplit&lstm_cell_664/split/split_dim:output:0lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_664/SigmoidSigmoidlstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_1Sigmoidlstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_664/mulMullstm_cell_664/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_664/ReluRelulstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_1Mullstm_cell_664/Sigmoid:y:0 lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_664/add_1AddV2lstm_cell_664/mul:z:0lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_2Sigmoidlstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_664/Relu_1Relulstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_2Mullstm_cell_664/Sigmoid_2:y:0"lstm_cell_664/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_664_matmul_readvariableop_resource.lstm_cell_664_matmul_1_readvariableop_resource-lstm_cell_664_biasadd_readvariableop_resource*
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
while_body_4027687*
condR
while_cond_4027686*K
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
NoOpNoOp%^lstm_cell_664/BiasAdd/ReadVariableOp$^lstm_cell_664/MatMul/ReadVariableOp&^lstm_cell_664/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_664/BiasAdd/ReadVariableOp$lstm_cell_664/BiasAdd/ReadVariableOp2J
#lstm_cell_664/MatMul/ReadVariableOp#lstm_cell_664/MatMul/ReadVariableOp2N
%lstm_cell_664/MatMul_1/ReadVariableOp%lstm_cell_664/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4028790

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
while_cond_4024771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4024771___redundant_placeholder05
1while_while_cond_4024771___redundant_placeholder15
1while_while_cond_4024771___redundant_placeholder25
1while_while_cond_4024771___redundant_placeholder3
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
while_body_4027973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_664_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_664_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_664_matmul_readvariableop_resource:	d?G
4while_lstm_cell_664_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_664_biasadd_readvariableop_resource:	???*while/lstm_cell_664/BiasAdd/ReadVariableOp?)while/lstm_cell_664/MatMul/ReadVariableOp?+while/lstm_cell_664/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_664/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_664/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_664/addAddV2$while/lstm_cell_664/MatMul:product:0&while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_664/BiasAddBiasAddwhile/lstm_cell_664/add:z:02while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_664/splitSplit,while/lstm_cell_664/split/split_dim:output:0$while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_664/SigmoidSigmoid"while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_1Sigmoid"while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mulMul!while/lstm_cell_664/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_664/ReluRelu"while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_1Mulwhile/lstm_cell_664/Sigmoid:y:0&while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/add_1AddV2while/lstm_cell_664/mul:z:0while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_2Sigmoid"while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_664/Relu_1Reluwhile/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_2Mul!while/lstm_cell_664/Sigmoid_2:y:0(while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_664/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_664/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_664/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_664/BiasAdd/ReadVariableOp*^while/lstm_cell_664/MatMul/ReadVariableOp,^while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_664_biasadd_readvariableop_resource5while_lstm_cell_664_biasadd_readvariableop_resource_0"n
4while_lstm_cell_664_matmul_1_readvariableop_resource6while_lstm_cell_664_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_664_matmul_readvariableop_resource4while_lstm_cell_664_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_664/BiasAdd/ReadVariableOp*while/lstm_cell_664/BiasAdd/ReadVariableOp2V
)while/lstm_cell_664/MatMul/ReadVariableOp)while/lstm_cell_664/MatMul/ReadVariableOp2Z
+while/lstm_cell_664/MatMul_1/ReadVariableOp+while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028244
inputs_0>
,lstm_cell_665_matmul_readvariableop_resource:2(@
.lstm_cell_665_matmul_1_readvariableop_resource:
(;
-lstm_cell_665_biasadd_readvariableop_resource:(
identity??$lstm_cell_665/BiasAdd/ReadVariableOp?#lstm_cell_665/MatMul/ReadVariableOp?%lstm_cell_665/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_665/MatMul/ReadVariableOpReadVariableOp,lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_665/MatMulMatMulstrided_slice_2:output:0+lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_665/MatMul_1MatMulzeros:output:0-lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_665/addAddV2lstm_cell_665/MatMul:product:0 lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_665/BiasAddBiasAddlstm_cell_665/add:z:0,lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_665/splitSplit&lstm_cell_665/split/split_dim:output:0lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_665/SigmoidSigmoidlstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_1Sigmoidlstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_665/mulMullstm_cell_665/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_665/ReluRelulstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_1Mullstm_cell_665/Sigmoid:y:0 lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_665/add_1AddV2lstm_cell_665/mul:z:0lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_2Sigmoidlstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_665/Relu_1Relulstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_2Mullstm_cell_665/Sigmoid_2:y:0"lstm_cell_665/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_665_matmul_readvariableop_resource.lstm_cell_665_matmul_1_readvariableop_resource-lstm_cell_665_biasadd_readvariableop_resource*
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
while_body_4028160*
condR
while_cond_4028159*K
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
NoOpNoOp%^lstm_cell_665/BiasAdd/ReadVariableOp$^lstm_cell_665/MatMul/ReadVariableOp&^lstm_cell_665/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_665/BiasAdd/ReadVariableOp$lstm_cell_665/BiasAdd/ReadVariableOp2J
#lstm_cell_665/MatMul/ReadVariableOp#lstm_cell_665/MatMul/ReadVariableOp2N
%lstm_cell_665/MatMul_1/ReadVariableOp%lstm_cell_665/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4028986

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
lstm_785_while_cond_4026734.
*lstm_785_while_lstm_785_while_loop_counter4
0lstm_785_while_lstm_785_while_maximum_iterations
lstm_785_while_placeholder 
lstm_785_while_placeholder_1 
lstm_785_while_placeholder_2 
lstm_785_while_placeholder_30
,lstm_785_while_less_lstm_785_strided_slice_1G
Clstm_785_while_lstm_785_while_cond_4026734___redundant_placeholder0G
Clstm_785_while_lstm_785_while_cond_4026734___redundant_placeholder1G
Clstm_785_while_lstm_785_while_cond_4026734___redundant_placeholder2G
Clstm_785_while_lstm_785_while_cond_4026734___redundant_placeholder3
lstm_785_while_identity
?
lstm_785/while/LessLesslstm_785_while_placeholder,lstm_785_while_less_lstm_785_strided_slice_1*
T0*
_output_shapes
: ]
lstm_785/while/IdentityIdentitylstm_785/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_785_while_identity lstm_785/while/Identity:output:0*(
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4025537

inputs?
,lstm_cell_664_matmul_readvariableop_resource:	d?A
.lstm_cell_664_matmul_1_readvariableop_resource:	2?<
-lstm_cell_664_biasadd_readvariableop_resource:	?
identity??$lstm_cell_664/BiasAdd/ReadVariableOp?#lstm_cell_664/MatMul/ReadVariableOp?%lstm_cell_664/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_664/MatMul/ReadVariableOpReadVariableOp,lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_664/MatMulMatMulstrided_slice_2:output:0+lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_664/MatMul_1MatMulzeros:output:0-lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_664/addAddV2lstm_cell_664/MatMul:product:0 lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_664/BiasAddBiasAddlstm_cell_664/add:z:0,lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_664/splitSplit&lstm_cell_664/split/split_dim:output:0lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_664/SigmoidSigmoidlstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_1Sigmoidlstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_664/mulMullstm_cell_664/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_664/ReluRelulstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_1Mullstm_cell_664/Sigmoid:y:0 lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_664/add_1AddV2lstm_cell_664/mul:z:0lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_2Sigmoidlstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_664/Relu_1Relulstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_2Mullstm_cell_664/Sigmoid_2:y:0"lstm_cell_664/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_664_matmul_readvariableop_resource.lstm_cell_664_matmul_1_readvariableop_resource-lstm_cell_664_biasadd_readvariableop_resource*
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
while_body_4025453*
condR
while_cond_4025452*K
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
NoOpNoOp%^lstm_cell_664/BiasAdd/ReadVariableOp$^lstm_cell_664/MatMul/ReadVariableOp&^lstm_cell_664/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_664/BiasAdd/ReadVariableOp$lstm_cell_664/BiasAdd/ReadVariableOp2J
#lstm_cell_664/MatMul/ReadVariableOp#lstm_cell_664/MatMul/ReadVariableOp2N
%lstm_cell_664/MatMul_1/ReadVariableOp%lstm_cell_664/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_4027830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_664_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_664_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_664_matmul_readvariableop_resource:	d?G
4while_lstm_cell_664_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_664_biasadd_readvariableop_resource:	???*while/lstm_cell_664/BiasAdd/ReadVariableOp?)while/lstm_cell_664/MatMul/ReadVariableOp?+while/lstm_cell_664/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_664/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_664/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_664/addAddV2$while/lstm_cell_664/MatMul:product:0&while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_664/BiasAddBiasAddwhile/lstm_cell_664/add:z:02while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_664/splitSplit,while/lstm_cell_664/split/split_dim:output:0$while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_664/SigmoidSigmoid"while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_1Sigmoid"while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mulMul!while/lstm_cell_664/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_664/ReluRelu"while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_1Mulwhile/lstm_cell_664/Sigmoid:y:0&while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/add_1AddV2while/lstm_cell_664/mul:z:0while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_2Sigmoid"while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_664/Relu_1Reluwhile/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_2Mul!while/lstm_cell_664/Sigmoid_2:y:0(while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_664/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_664/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_664/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_664/BiasAdd/ReadVariableOp*^while/lstm_cell_664/MatMul/ReadVariableOp,^while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_664_biasadd_readvariableop_resource5while_lstm_cell_664_biasadd_readvariableop_resource_0"n
4while_lstm_cell_664_matmul_1_readvariableop_resource6while_lstm_cell_664_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_664_matmul_readvariableop_resource4while_lstm_cell_664_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_664/BiasAdd/ReadVariableOp*while/lstm_cell_664/BiasAdd/ReadVariableOp2V
)while/lstm_cell_664/MatMul/ReadVariableOp)while/lstm_cell_664/MatMul/ReadVariableOp2Z
+while/lstm_cell_664/MatMul_1/ReadVariableOp+while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4026825

inputsH
5lstm_783_lstm_cell_663_matmul_readvariableop_resource:	?J
7lstm_783_lstm_cell_663_matmul_1_readvariableop_resource:	d?E
6lstm_783_lstm_cell_663_biasadd_readvariableop_resource:	?H
5lstm_784_lstm_cell_664_matmul_readvariableop_resource:	d?J
7lstm_784_lstm_cell_664_matmul_1_readvariableop_resource:	2?E
6lstm_784_lstm_cell_664_biasadd_readvariableop_resource:	?G
5lstm_785_lstm_cell_665_matmul_readvariableop_resource:2(I
7lstm_785_lstm_cell_665_matmul_1_readvariableop_resource:
(D
6lstm_785_lstm_cell_665_biasadd_readvariableop_resource:(:
(dense_261_matmul_readvariableop_resource:
7
)dense_261_biasadd_readvariableop_resource:
identity?? dense_261/BiasAdd/ReadVariableOp?dense_261/MatMul/ReadVariableOp?-lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp?,lstm_783/lstm_cell_663/MatMul/ReadVariableOp?.lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp?lstm_783/while?-lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp?,lstm_784/lstm_cell_664/MatMul/ReadVariableOp?.lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp?lstm_784/while?-lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp?,lstm_785/lstm_cell_665/MatMul/ReadVariableOp?.lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp?lstm_785/whileD
lstm_783/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_783/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_783/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_783/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_783/strided_sliceStridedSlicelstm_783/Shape:output:0%lstm_783/strided_slice/stack:output:0'lstm_783/strided_slice/stack_1:output:0'lstm_783/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_783/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_783/zeros/packedPacklstm_783/strided_slice:output:0 lstm_783/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_783/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_783/zerosFilllstm_783/zeros/packed:output:0lstm_783/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_783/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_783/zeros_1/packedPacklstm_783/strided_slice:output:0"lstm_783/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_783/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_783/zeros_1Fill lstm_783/zeros_1/packed:output:0lstm_783/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_783/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_783/transpose	Transposeinputs lstm_783/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_783/Shape_1Shapelstm_783/transpose:y:0*
T0*
_output_shapes
:h
lstm_783/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_783/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_783/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_783/strided_slice_1StridedSlicelstm_783/Shape_1:output:0'lstm_783/strided_slice_1/stack:output:0)lstm_783/strided_slice_1/stack_1:output:0)lstm_783/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_783/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_783/TensorArrayV2TensorListReserve-lstm_783/TensorArrayV2/element_shape:output:0!lstm_783/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_783/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_783/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_783/transpose:y:0Glstm_783/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_783/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_783/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_783/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_783/strided_slice_2StridedSlicelstm_783/transpose:y:0'lstm_783/strided_slice_2/stack:output:0)lstm_783/strided_slice_2/stack_1:output:0)lstm_783/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_783/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp5lstm_783_lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_783/lstm_cell_663/MatMulMatMul!lstm_783/strided_slice_2:output:04lstm_783/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_783/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp7lstm_783_lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_783/lstm_cell_663/MatMul_1MatMullstm_783/zeros:output:06lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_783/lstm_cell_663/addAddV2'lstm_783/lstm_cell_663/MatMul:product:0)lstm_783/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_783/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp6lstm_783_lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_783/lstm_cell_663/BiasAddBiasAddlstm_783/lstm_cell_663/add:z:05lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_783/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_783/lstm_cell_663/splitSplit/lstm_783/lstm_cell_663/split/split_dim:output:0'lstm_783/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_783/lstm_cell_663/SigmoidSigmoid%lstm_783/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_783/lstm_cell_663/Sigmoid_1Sigmoid%lstm_783/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_783/lstm_cell_663/mulMul$lstm_783/lstm_cell_663/Sigmoid_1:y:0lstm_783/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_783/lstm_cell_663/ReluRelu%lstm_783/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_783/lstm_cell_663/mul_1Mul"lstm_783/lstm_cell_663/Sigmoid:y:0)lstm_783/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_783/lstm_cell_663/add_1AddV2lstm_783/lstm_cell_663/mul:z:0 lstm_783/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_783/lstm_cell_663/Sigmoid_2Sigmoid%lstm_783/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_783/lstm_cell_663/Relu_1Relu lstm_783/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_783/lstm_cell_663/mul_2Mul$lstm_783/lstm_cell_663/Sigmoid_2:y:0+lstm_783/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_783/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_783/TensorArrayV2_1TensorListReserve/lstm_783/TensorArrayV2_1/element_shape:output:0!lstm_783/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_783/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_783/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_783/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_783/whileWhile$lstm_783/while/loop_counter:output:0*lstm_783/while/maximum_iterations:output:0lstm_783/time:output:0!lstm_783/TensorArrayV2_1:handle:0lstm_783/zeros:output:0lstm_783/zeros_1:output:0!lstm_783/strided_slice_1:output:0@lstm_783/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_783_lstm_cell_663_matmul_readvariableop_resource7lstm_783_lstm_cell_663_matmul_1_readvariableop_resource6lstm_783_lstm_cell_663_biasadd_readvariableop_resource*
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
lstm_783_while_body_4026457*'
condR
lstm_783_while_cond_4026456*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_783/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_783/TensorArrayV2Stack/TensorListStackTensorListStacklstm_783/while:output:3Blstm_783/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_783/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_783/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_783/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_783/strided_slice_3StridedSlice4lstm_783/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_783/strided_slice_3/stack:output:0)lstm_783/strided_slice_3/stack_1:output:0)lstm_783/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_783/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_783/transpose_1	Transpose4lstm_783/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_783/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_783/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_784/ShapeShapelstm_783/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_784/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_784/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_784/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_784/strided_sliceStridedSlicelstm_784/Shape:output:0%lstm_784/strided_slice/stack:output:0'lstm_784/strided_slice/stack_1:output:0'lstm_784/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_784/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_784/zeros/packedPacklstm_784/strided_slice:output:0 lstm_784/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_784/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_784/zerosFilllstm_784/zeros/packed:output:0lstm_784/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_784/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_784/zeros_1/packedPacklstm_784/strided_slice:output:0"lstm_784/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_784/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_784/zeros_1Fill lstm_784/zeros_1/packed:output:0lstm_784/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_784/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_784/transpose	Transposelstm_783/transpose_1:y:0 lstm_784/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_784/Shape_1Shapelstm_784/transpose:y:0*
T0*
_output_shapes
:h
lstm_784/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_784/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_784/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_784/strided_slice_1StridedSlicelstm_784/Shape_1:output:0'lstm_784/strided_slice_1/stack:output:0)lstm_784/strided_slice_1/stack_1:output:0)lstm_784/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_784/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_784/TensorArrayV2TensorListReserve-lstm_784/TensorArrayV2/element_shape:output:0!lstm_784/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_784/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_784/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_784/transpose:y:0Glstm_784/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_784/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_784/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_784/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_784/strided_slice_2StridedSlicelstm_784/transpose:y:0'lstm_784/strided_slice_2/stack:output:0)lstm_784/strided_slice_2/stack_1:output:0)lstm_784/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_784/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp5lstm_784_lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_784/lstm_cell_664/MatMulMatMul!lstm_784/strided_slice_2:output:04lstm_784/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_784/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp7lstm_784_lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_784/lstm_cell_664/MatMul_1MatMullstm_784/zeros:output:06lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_784/lstm_cell_664/addAddV2'lstm_784/lstm_cell_664/MatMul:product:0)lstm_784/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_784/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp6lstm_784_lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_784/lstm_cell_664/BiasAddBiasAddlstm_784/lstm_cell_664/add:z:05lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_784/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_784/lstm_cell_664/splitSplit/lstm_784/lstm_cell_664/split/split_dim:output:0'lstm_784/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_784/lstm_cell_664/SigmoidSigmoid%lstm_784/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_784/lstm_cell_664/Sigmoid_1Sigmoid%lstm_784/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_784/lstm_cell_664/mulMul$lstm_784/lstm_cell_664/Sigmoid_1:y:0lstm_784/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_784/lstm_cell_664/ReluRelu%lstm_784/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_784/lstm_cell_664/mul_1Mul"lstm_784/lstm_cell_664/Sigmoid:y:0)lstm_784/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_784/lstm_cell_664/add_1AddV2lstm_784/lstm_cell_664/mul:z:0 lstm_784/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_784/lstm_cell_664/Sigmoid_2Sigmoid%lstm_784/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_784/lstm_cell_664/Relu_1Relu lstm_784/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_784/lstm_cell_664/mul_2Mul$lstm_784/lstm_cell_664/Sigmoid_2:y:0+lstm_784/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_784/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_784/TensorArrayV2_1TensorListReserve/lstm_784/TensorArrayV2_1/element_shape:output:0!lstm_784/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_784/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_784/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_784/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_784/whileWhile$lstm_784/while/loop_counter:output:0*lstm_784/while/maximum_iterations:output:0lstm_784/time:output:0!lstm_784/TensorArrayV2_1:handle:0lstm_784/zeros:output:0lstm_784/zeros_1:output:0!lstm_784/strided_slice_1:output:0@lstm_784/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_784_lstm_cell_664_matmul_readvariableop_resource7lstm_784_lstm_cell_664_matmul_1_readvariableop_resource6lstm_784_lstm_cell_664_biasadd_readvariableop_resource*
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
lstm_784_while_body_4026596*'
condR
lstm_784_while_cond_4026595*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_784/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_784/TensorArrayV2Stack/TensorListStackTensorListStacklstm_784/while:output:3Blstm_784/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_784/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_784/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_784/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_784/strided_slice_3StridedSlice4lstm_784/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_784/strided_slice_3/stack:output:0)lstm_784/strided_slice_3/stack_1:output:0)lstm_784/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_784/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_784/transpose_1	Transpose4lstm_784/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_784/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_784/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_785/ShapeShapelstm_784/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_785/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_785/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_785/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_785/strided_sliceStridedSlicelstm_785/Shape:output:0%lstm_785/strided_slice/stack:output:0'lstm_785/strided_slice/stack_1:output:0'lstm_785/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_785/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_785/zeros/packedPacklstm_785/strided_slice:output:0 lstm_785/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_785/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_785/zerosFilllstm_785/zeros/packed:output:0lstm_785/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_785/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_785/zeros_1/packedPacklstm_785/strided_slice:output:0"lstm_785/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_785/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_785/zeros_1Fill lstm_785/zeros_1/packed:output:0lstm_785/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_785/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_785/transpose	Transposelstm_784/transpose_1:y:0 lstm_785/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_785/Shape_1Shapelstm_785/transpose:y:0*
T0*
_output_shapes
:h
lstm_785/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_785/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_785/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_785/strided_slice_1StridedSlicelstm_785/Shape_1:output:0'lstm_785/strided_slice_1/stack:output:0)lstm_785/strided_slice_1/stack_1:output:0)lstm_785/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_785/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_785/TensorArrayV2TensorListReserve-lstm_785/TensorArrayV2/element_shape:output:0!lstm_785/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_785/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_785/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_785/transpose:y:0Glstm_785/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_785/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_785/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_785/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_785/strided_slice_2StridedSlicelstm_785/transpose:y:0'lstm_785/strided_slice_2/stack:output:0)lstm_785/strided_slice_2/stack_1:output:0)lstm_785/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_785/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp5lstm_785_lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_785/lstm_cell_665/MatMulMatMul!lstm_785/strided_slice_2:output:04lstm_785/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_785/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp7lstm_785_lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_785/lstm_cell_665/MatMul_1MatMullstm_785/zeros:output:06lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_785/lstm_cell_665/addAddV2'lstm_785/lstm_cell_665/MatMul:product:0)lstm_785/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_785/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp6lstm_785_lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_785/lstm_cell_665/BiasAddBiasAddlstm_785/lstm_cell_665/add:z:05lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_785/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_785/lstm_cell_665/splitSplit/lstm_785/lstm_cell_665/split/split_dim:output:0'lstm_785/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_785/lstm_cell_665/SigmoidSigmoid%lstm_785/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_785/lstm_cell_665/Sigmoid_1Sigmoid%lstm_785/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_785/lstm_cell_665/mulMul$lstm_785/lstm_cell_665/Sigmoid_1:y:0lstm_785/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_785/lstm_cell_665/ReluRelu%lstm_785/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_785/lstm_cell_665/mul_1Mul"lstm_785/lstm_cell_665/Sigmoid:y:0)lstm_785/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_785/lstm_cell_665/add_1AddV2lstm_785/lstm_cell_665/mul:z:0 lstm_785/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_785/lstm_cell_665/Sigmoid_2Sigmoid%lstm_785/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_785/lstm_cell_665/Relu_1Relu lstm_785/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_785/lstm_cell_665/mul_2Mul$lstm_785/lstm_cell_665/Sigmoid_2:y:0+lstm_785/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_785/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_785/TensorArrayV2_1TensorListReserve/lstm_785/TensorArrayV2_1/element_shape:output:0!lstm_785/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_785/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_785/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_785/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_785/whileWhile$lstm_785/while/loop_counter:output:0*lstm_785/while/maximum_iterations:output:0lstm_785/time:output:0!lstm_785/TensorArrayV2_1:handle:0lstm_785/zeros:output:0lstm_785/zeros_1:output:0!lstm_785/strided_slice_1:output:0@lstm_785/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_785_lstm_cell_665_matmul_readvariableop_resource7lstm_785_lstm_cell_665_matmul_1_readvariableop_resource6lstm_785_lstm_cell_665_biasadd_readvariableop_resource*
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
lstm_785_while_body_4026735*'
condR
lstm_785_while_cond_4026734*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_785/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_785/TensorArrayV2Stack/TensorListStackTensorListStacklstm_785/while:output:3Blstm_785/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_785/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_785/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_785/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_785/strided_slice_3StridedSlice4lstm_785/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_785/strided_slice_3/stack:output:0)lstm_785/strided_slice_3/stack_1:output:0)lstm_785/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_785/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_785/transpose_1	Transpose4lstm_785/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_785/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_785/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_261/MatMul/ReadVariableOpReadVariableOp(dense_261_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_261/MatMulMatMul!lstm_785/strided_slice_3:output:0'dense_261/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 dense_261/BiasAdd/ReadVariableOpReadVariableOp)dense_261_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_261/BiasAddBiasAdddense_261/MatMul:product:0(dense_261/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_261/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_261/BiasAdd/ReadVariableOp ^dense_261/MatMul/ReadVariableOp.^lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp-^lstm_783/lstm_cell_663/MatMul/ReadVariableOp/^lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp^lstm_783/while.^lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp-^lstm_784/lstm_cell_664/MatMul/ReadVariableOp/^lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp^lstm_784/while.^lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp-^lstm_785/lstm_cell_665/MatMul/ReadVariableOp/^lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp^lstm_785/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_261/BiasAdd/ReadVariableOp dense_261/BiasAdd/ReadVariableOp2B
dense_261/MatMul/ReadVariableOpdense_261/MatMul/ReadVariableOp2^
-lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp-lstm_783/lstm_cell_663/BiasAdd/ReadVariableOp2\
,lstm_783/lstm_cell_663/MatMul/ReadVariableOp,lstm_783/lstm_cell_663/MatMul/ReadVariableOp2`
.lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp.lstm_783/lstm_cell_663/MatMul_1/ReadVariableOp2 
lstm_783/whilelstm_783/while2^
-lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp-lstm_784/lstm_cell_664/BiasAdd/ReadVariableOp2\
,lstm_784/lstm_cell_664/MatMul/ReadVariableOp,lstm_784/lstm_cell_664/MatMul/ReadVariableOp2`
.lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp.lstm_784/lstm_cell_664/MatMul_1/ReadVariableOp2 
lstm_784/whilelstm_784/while2^
-lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp-lstm_785/lstm_cell_665/BiasAdd/ReadVariableOp2\
,lstm_785/lstm_cell_665/MatMul/ReadVariableOp,lstm_785/lstm_cell_665/MatMul/ReadVariableOp2`
.lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp.lstm_785/lstm_cell_665/MatMul_1/ReadVariableOp2 
lstm_785/whilelstm_785/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_261_layer_call_fn_4028682

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
F__inference_dense_261_layer_call_and_return_conditional_losses_4025174o
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
while_cond_4026927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4026927___redundant_placeholder05
1while_while_cond_4026927___redundant_placeholder15
1while_while_cond_4026927___redundant_placeholder25
1while_while_cond_4026927___redundant_placeholder3
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
while_body_4024922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_664_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_664_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_664_matmul_readvariableop_resource:	d?G
4while_lstm_cell_664_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_664_biasadd_readvariableop_resource:	???*while/lstm_cell_664/BiasAdd/ReadVariableOp?)while/lstm_cell_664/MatMul/ReadVariableOp?+while/lstm_cell_664/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_664/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_664/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_664/addAddV2$while/lstm_cell_664/MatMul:product:0&while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_664/BiasAddBiasAddwhile/lstm_cell_664/add:z:02while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_664/splitSplit,while/lstm_cell_664/split/split_dim:output:0$while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_664/SigmoidSigmoid"while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_1Sigmoid"while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mulMul!while/lstm_cell_664/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_664/ReluRelu"while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_1Mulwhile/lstm_cell_664/Sigmoid:y:0&while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/add_1AddV2while/lstm_cell_664/mul:z:0while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_2Sigmoid"while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_664/Relu_1Reluwhile/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_2Mul!while/lstm_cell_664/Sigmoid_2:y:0(while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_664/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_664/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_664/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_664/BiasAdd/ReadVariableOp*^while/lstm_cell_664/MatMul/ReadVariableOp,^while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_664_biasadd_readvariableop_resource5while_lstm_cell_664_biasadd_readvariableop_resource_0"n
4while_lstm_cell_664_matmul_1_readvariableop_resource6while_lstm_cell_664_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_664_matmul_readvariableop_resource4while_lstm_cell_664_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_664/BiasAdd/ReadVariableOp*while/lstm_cell_664/BiasAdd/ReadVariableOp2V
)while/lstm_cell_664/MatMul/ReadVariableOp)while/lstm_cell_664/MatMul/ReadVariableOp2Z
+while/lstm_cell_664/MatMul_1/ReadVariableOp+while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_4024437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4024437___redundant_placeholder05
1while_while_cond_4024437___redundant_placeholder15
1while_while_cond_4024437___redundant_placeholder25
1while_while_cond_4024437___redundant_placeholder3
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
/__inference_lstm_cell_664_layer_call_fn_4028824

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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4024220o
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027012
inputs_0?
,lstm_cell_663_matmul_readvariableop_resource:	?A
.lstm_cell_663_matmul_1_readvariableop_resource:	d?<
-lstm_cell_663_biasadd_readvariableop_resource:	?
identity??$lstm_cell_663/BiasAdd/ReadVariableOp?#lstm_cell_663/MatMul/ReadVariableOp?%lstm_cell_663/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_663/MatMul/ReadVariableOpReadVariableOp,lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_663/MatMulMatMulstrided_slice_2:output:0+lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_663/MatMul_1MatMulzeros:output:0-lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_663/addAddV2lstm_cell_663/MatMul:product:0 lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_663/BiasAddBiasAddlstm_cell_663/add:z:0,lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_663/splitSplit&lstm_cell_663/split/split_dim:output:0lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_663/SigmoidSigmoidlstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_1Sigmoidlstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_663/mulMullstm_cell_663/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_663/ReluRelulstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_1Mullstm_cell_663/Sigmoid:y:0 lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_663/add_1AddV2lstm_cell_663/mul:z:0lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_2Sigmoidlstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_663/Relu_1Relulstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_2Mullstm_cell_663/Sigmoid_2:y:0"lstm_cell_663/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_663_matmul_readvariableop_resource.lstm_cell_663_matmul_1_readvariableop_resource-lstm_cell_663_biasadd_readvariableop_resource*
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
while_body_4026928*
condR
while_cond_4026927*K
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
NoOpNoOp%^lstm_cell_663/BiasAdd/ReadVariableOp$^lstm_cell_663/MatMul/ReadVariableOp&^lstm_cell_663/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_663/BiasAdd/ReadVariableOp$lstm_cell_663/BiasAdd/ReadVariableOp2J
#lstm_cell_663/MatMul/ReadVariableOp#lstm_cell_663/MatMul/ReadVariableOp2N
%lstm_cell_663/MatMul_1/ReadVariableOp%lstm_cell_663/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_785_layer_call_and_return_conditional_losses_4025372

inputs>
,lstm_cell_665_matmul_readvariableop_resource:2(@
.lstm_cell_665_matmul_1_readvariableop_resource:
(;
-lstm_cell_665_biasadd_readvariableop_resource:(
identity??$lstm_cell_665/BiasAdd/ReadVariableOp?#lstm_cell_665/MatMul/ReadVariableOp?%lstm_cell_665/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_665/MatMul/ReadVariableOpReadVariableOp,lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_665/MatMulMatMulstrided_slice_2:output:0+lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_665/MatMul_1MatMulzeros:output:0-lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_665/addAddV2lstm_cell_665/MatMul:product:0 lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_665/BiasAddBiasAddlstm_cell_665/add:z:0,lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_665/splitSplit&lstm_cell_665/split/split_dim:output:0lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_665/SigmoidSigmoidlstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_1Sigmoidlstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_665/mulMullstm_cell_665/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_665/ReluRelulstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_1Mullstm_cell_665/Sigmoid:y:0 lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_665/add_1AddV2lstm_cell_665/mul:z:0lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_2Sigmoidlstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_665/Relu_1Relulstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_2Mullstm_cell_665/Sigmoid_2:y:0"lstm_cell_665/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_665_matmul_readvariableop_resource.lstm_cell_665_matmul_1_readvariableop_resource-lstm_cell_665_biasadd_readvariableop_resource*
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
while_body_4025288*
condR
while_cond_4025287*K
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
NoOpNoOp%^lstm_cell_665/BiasAdd/ReadVariableOp$^lstm_cell_665/MatMul/ReadVariableOp&^lstm_cell_665/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_665/BiasAdd/ReadVariableOp$lstm_cell_665/BiasAdd/ReadVariableOp2J
#lstm_cell_665/MatMul/ReadVariableOp#lstm_cell_665/MatMul/ReadVariableOp2N
%lstm_cell_665/MatMul_1/ReadVariableOp%lstm_cell_665/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_783_layer_call_and_return_conditional_losses_4023998

inputs(
lstm_cell_663_4023916:	?(
lstm_cell_663_4023918:	d?$
lstm_cell_663_4023920:	?
identity??%lstm_cell_663/StatefulPartitionedCall?while;
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
%lstm_cell_663/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_663_4023916lstm_cell_663_4023918lstm_cell_663_4023920*
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4023870n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_663_4023916lstm_cell_663_4023918lstm_cell_663_4023920*
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
while_body_4023929*
condR
while_cond_4023928*K
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
NoOpNoOp&^lstm_cell_663/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_663/StatefulPartitionedCall%lstm_cell_663/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*sequential_261_lstm_784_while_cond_4023427L
Hsequential_261_lstm_784_while_sequential_261_lstm_784_while_loop_counterR
Nsequential_261_lstm_784_while_sequential_261_lstm_784_while_maximum_iterations-
)sequential_261_lstm_784_while_placeholder/
+sequential_261_lstm_784_while_placeholder_1/
+sequential_261_lstm_784_while_placeholder_2/
+sequential_261_lstm_784_while_placeholder_3N
Jsequential_261_lstm_784_while_less_sequential_261_lstm_784_strided_slice_1e
asequential_261_lstm_784_while_sequential_261_lstm_784_while_cond_4023427___redundant_placeholder0e
asequential_261_lstm_784_while_sequential_261_lstm_784_while_cond_4023427___redundant_placeholder1e
asequential_261_lstm_784_while_sequential_261_lstm_784_while_cond_4023427___redundant_placeholder2e
asequential_261_lstm_784_while_sequential_261_lstm_784_while_cond_4023427___redundant_placeholder3*
&sequential_261_lstm_784_while_identity
?
"sequential_261/lstm_784/while/LessLess)sequential_261_lstm_784_while_placeholderJsequential_261_lstm_784_while_less_sequential_261_lstm_784_strided_slice_1*
T0*
_output_shapes
: {
&sequential_261/lstm_784/while/IdentityIdentity&sequential_261/lstm_784/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_261_lstm_784_while_identity/sequential_261/lstm_784/while/Identity:output:0*(
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4025702

inputs?
,lstm_cell_663_matmul_readvariableop_resource:	?A
.lstm_cell_663_matmul_1_readvariableop_resource:	d?<
-lstm_cell_663_biasadd_readvariableop_resource:	?
identity??$lstm_cell_663/BiasAdd/ReadVariableOp?#lstm_cell_663/MatMul/ReadVariableOp?%lstm_cell_663/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_663/MatMul/ReadVariableOpReadVariableOp,lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_663/MatMulMatMulstrided_slice_2:output:0+lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_663/MatMul_1MatMulzeros:output:0-lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_663/addAddV2lstm_cell_663/MatMul:product:0 lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_663/BiasAddBiasAddlstm_cell_663/add:z:0,lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_663/splitSplit&lstm_cell_663/split/split_dim:output:0lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_663/SigmoidSigmoidlstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_1Sigmoidlstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_663/mulMullstm_cell_663/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_663/ReluRelulstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_1Mullstm_cell_663/Sigmoid:y:0 lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_663/add_1AddV2lstm_cell_663/mul:z:0lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_2Sigmoidlstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_663/Relu_1Relulstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_2Mullstm_cell_663/Sigmoid_2:y:0"lstm_cell_663/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_663_matmul_readvariableop_resource.lstm_cell_663_matmul_1_readvariableop_resource-lstm_cell_663_biasadd_readvariableop_resource*
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
while_body_4025618*
condR
while_cond_4025617*K
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
NoOpNoOp%^lstm_cell_663/BiasAdd/ReadVariableOp$^lstm_cell_663/MatMul/ReadVariableOp&^lstm_cell_663/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_663/BiasAdd/ReadVariableOp$lstm_cell_663/BiasAdd/ReadVariableOp2J
#lstm_cell_663/MatMul/ReadVariableOp#lstm_cell_663/MatMul/ReadVariableOp2N
%lstm_cell_663/MatMul_1/ReadVariableOp%lstm_cell_663/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4028445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4028445___redundant_placeholder05
1while_while_cond_4028445___redundant_placeholder15
1while_while_cond_4028445___redundant_placeholder25
1while_while_cond_4028445___redundant_placeholder3
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4024698

inputs'
lstm_cell_665_4024616:2('
lstm_cell_665_4024618:
(#
lstm_cell_665_4024620:(
identity??%lstm_cell_665/StatefulPartitionedCall?while;
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
%lstm_cell_665/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_665_4024616lstm_cell_665_4024618lstm_cell_665_4024620*
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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4024570n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_665_4024616lstm_cell_665_4024618lstm_cell_665_4024620*
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
while_body_4024629*
condR
while_cond_4024628*K
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
NoOpNoOp&^lstm_cell_665/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_665/StatefulPartitionedCall%lstm_cell_665/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_785_layer_call_fn_4028068
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4024507o
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4024348

inputs(
lstm_cell_664_4024266:	d?(
lstm_cell_664_4024268:	2?$
lstm_cell_664_4024270:	?
identity??%lstm_cell_664/StatefulPartitionedCall?while;
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
%lstm_cell_664/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_664_4024266lstm_cell_664_4024268lstm_cell_664_4024270*
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4024220n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_664_4024266lstm_cell_664_4024268lstm_cell_664_4024270*
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
while_body_4024279*
condR
while_cond_4024278*K
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
NoOpNoOp&^lstm_cell_664/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_664/StatefulPartitionedCall%lstm_cell_664/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4028856

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
while_cond_4027686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4027686___redundant_placeholder05
1while_while_cond_4027686___redundant_placeholder15
1while_while_cond_4027686___redundant_placeholder25
1while_while_cond_4027686___redundant_placeholder3
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4023724

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
while_cond_4027070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4027070___redundant_placeholder05
1while_while_cond_4027070___redundant_placeholder15
1while_while_cond_4027070___redundant_placeholder25
1while_while_cond_4027070___redundant_placeholder3
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028673

inputs>
,lstm_cell_665_matmul_readvariableop_resource:2(@
.lstm_cell_665_matmul_1_readvariableop_resource:
(;
-lstm_cell_665_biasadd_readvariableop_resource:(
identity??$lstm_cell_665/BiasAdd/ReadVariableOp?#lstm_cell_665/MatMul/ReadVariableOp?%lstm_cell_665/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_665/MatMul/ReadVariableOpReadVariableOp,lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_665/MatMulMatMulstrided_slice_2:output:0+lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_665/MatMul_1MatMulzeros:output:0-lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_665/addAddV2lstm_cell_665/MatMul:product:0 lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_665/BiasAddBiasAddlstm_cell_665/add:z:0,lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_665/splitSplit&lstm_cell_665/split/split_dim:output:0lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_665/SigmoidSigmoidlstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_1Sigmoidlstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_665/mulMullstm_cell_665/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_665/ReluRelulstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_1Mullstm_cell_665/Sigmoid:y:0 lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_665/add_1AddV2lstm_cell_665/mul:z:0lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_2Sigmoidlstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_665/Relu_1Relulstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_2Mullstm_cell_665/Sigmoid_2:y:0"lstm_cell_665/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_665_matmul_readvariableop_resource.lstm_cell_665_matmul_1_readvariableop_resource-lstm_cell_665_biasadd_readvariableop_resource*
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
while_body_4028589*
condR
while_cond_4028588*K
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
NoOpNoOp%^lstm_cell_665/BiasAdd/ReadVariableOp$^lstm_cell_665/MatMul/ReadVariableOp&^lstm_cell_665/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_665/BiasAdd/ReadVariableOp$lstm_cell_665/BiasAdd/ReadVariableOp2J
#lstm_cell_665/MatMul/ReadVariableOp#lstm_cell_665/MatMul/ReadVariableOp2N
%lstm_cell_665/MatMul_1/ReadVariableOp%lstm_cell_665/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_4025452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4025452___redundant_placeholder05
1while_while_cond_4025452___redundant_placeholder15
1while_while_cond_4025452___redundant_placeholder25
1while_while_cond_4025452___redundant_placeholder3
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
while_body_4027214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_663_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_663_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_663_matmul_readvariableop_resource:	?G
4while_lstm_cell_663_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_663_biasadd_readvariableop_resource:	???*while/lstm_cell_663/BiasAdd/ReadVariableOp?)while/lstm_cell_663/MatMul/ReadVariableOp?+while/lstm_cell_663/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_663/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_663/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_663/addAddV2$while/lstm_cell_663/MatMul:product:0&while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_663/BiasAddBiasAddwhile/lstm_cell_663/add:z:02while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_663/splitSplit,while/lstm_cell_663/split/split_dim:output:0$while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_663/SigmoidSigmoid"while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_1Sigmoid"while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mulMul!while/lstm_cell_663/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_663/ReluRelu"while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_1Mulwhile/lstm_cell_663/Sigmoid:y:0&while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/add_1AddV2while/lstm_cell_663/mul:z:0while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_2Sigmoid"while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_663/Relu_1Reluwhile/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_2Mul!while/lstm_cell_663/Sigmoid_2:y:0(while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_663/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_663/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_663/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_663/BiasAdd/ReadVariableOp*^while/lstm_cell_663/MatMul/ReadVariableOp,^while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_663_biasadd_readvariableop_resource5while_lstm_cell_663_biasadd_readvariableop_resource_0"n
4while_lstm_cell_663_matmul_1_readvariableop_resource6while_lstm_cell_663_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_663_matmul_readvariableop_resource4while_lstm_cell_663_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_663/BiasAdd/ReadVariableOp*while/lstm_cell_663/BiasAdd/ReadVariableOp2V
)while/lstm_cell_663/MatMul/ReadVariableOp)while/lstm_cell_663/MatMul/ReadVariableOp2Z
+while/lstm_cell_663/MatMul_1/ReadVariableOp+while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
 __inference__traced_save_4029129
file_prefix/
+savev2_dense_261_kernel_read_readvariableop-
)savev2_dense_261_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_783_lstm_cell_783_kernel_read_readvariableopF
Bsavev2_lstm_783_lstm_cell_783_recurrent_kernel_read_readvariableop:
6savev2_lstm_783_lstm_cell_783_bias_read_readvariableop<
8savev2_lstm_784_lstm_cell_784_kernel_read_readvariableopF
Bsavev2_lstm_784_lstm_cell_784_recurrent_kernel_read_readvariableop:
6savev2_lstm_784_lstm_cell_784_bias_read_readvariableop<
8savev2_lstm_785_lstm_cell_785_kernel_read_readvariableopF
Bsavev2_lstm_785_lstm_cell_785_recurrent_kernel_read_readvariableop:
6savev2_lstm_785_lstm_cell_785_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_261_kernel_m_read_readvariableop4
0savev2_adam_dense_261_bias_m_read_readvariableopC
?savev2_adam_lstm_783_lstm_cell_783_kernel_m_read_readvariableopM
Isavev2_adam_lstm_783_lstm_cell_783_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_783_lstm_cell_783_bias_m_read_readvariableopC
?savev2_adam_lstm_784_lstm_cell_784_kernel_m_read_readvariableopM
Isavev2_adam_lstm_784_lstm_cell_784_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_784_lstm_cell_784_bias_m_read_readvariableopC
?savev2_adam_lstm_785_lstm_cell_785_kernel_m_read_readvariableopM
Isavev2_adam_lstm_785_lstm_cell_785_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_785_lstm_cell_785_bias_m_read_readvariableop6
2savev2_adam_dense_261_kernel_v_read_readvariableop4
0savev2_adam_dense_261_bias_v_read_readvariableopC
?savev2_adam_lstm_783_lstm_cell_783_kernel_v_read_readvariableopM
Isavev2_adam_lstm_783_lstm_cell_783_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_783_lstm_cell_783_bias_v_read_readvariableopC
?savev2_adam_lstm_784_lstm_cell_784_kernel_v_read_readvariableopM
Isavev2_adam_lstm_784_lstm_cell_784_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_784_lstm_cell_784_bias_v_read_readvariableopC
?savev2_adam_lstm_785_lstm_cell_785_kernel_v_read_readvariableopM
Isavev2_adam_lstm_785_lstm_cell_785_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_785_lstm_cell_785_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_261_kernel_read_readvariableop)savev2_dense_261_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_783_lstm_cell_783_kernel_read_readvariableopBsavev2_lstm_783_lstm_cell_783_recurrent_kernel_read_readvariableop6savev2_lstm_783_lstm_cell_783_bias_read_readvariableop8savev2_lstm_784_lstm_cell_784_kernel_read_readvariableopBsavev2_lstm_784_lstm_cell_784_recurrent_kernel_read_readvariableop6savev2_lstm_784_lstm_cell_784_bias_read_readvariableop8savev2_lstm_785_lstm_cell_785_kernel_read_readvariableopBsavev2_lstm_785_lstm_cell_785_recurrent_kernel_read_readvariableop6savev2_lstm_785_lstm_cell_785_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_261_kernel_m_read_readvariableop0savev2_adam_dense_261_bias_m_read_readvariableop?savev2_adam_lstm_783_lstm_cell_783_kernel_m_read_readvariableopIsavev2_adam_lstm_783_lstm_cell_783_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_783_lstm_cell_783_bias_m_read_readvariableop?savev2_adam_lstm_784_lstm_cell_784_kernel_m_read_readvariableopIsavev2_adam_lstm_784_lstm_cell_784_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_784_lstm_cell_784_bias_m_read_readvariableop?savev2_adam_lstm_785_lstm_cell_785_kernel_m_read_readvariableopIsavev2_adam_lstm_785_lstm_cell_785_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_785_lstm_cell_785_bias_m_read_readvariableop2savev2_adam_dense_261_kernel_v_read_readvariableop0savev2_adam_dense_261_bias_v_read_readvariableop?savev2_adam_lstm_783_lstm_cell_783_kernel_v_read_readvariableopIsavev2_adam_lstm_783_lstm_cell_783_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_783_lstm_cell_783_bias_v_read_readvariableop?savev2_adam_lstm_784_lstm_cell_784_kernel_v_read_readvariableopIsavev2_adam_lstm_784_lstm_cell_784_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_784_lstm_cell_784_bias_v_read_readvariableop?savev2_adam_lstm_785_lstm_cell_785_kernel_v_read_readvariableopIsavev2_adam_lstm_785_lstm_cell_785_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_785_lstm_cell_785_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_4025453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_664_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_664_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_664_matmul_readvariableop_resource:	d?G
4while_lstm_cell_664_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_664_biasadd_readvariableop_resource:	???*while/lstm_cell_664/BiasAdd/ReadVariableOp?)while/lstm_cell_664/MatMul/ReadVariableOp?+while/lstm_cell_664/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_664/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_664/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_664/addAddV2$while/lstm_cell_664/MatMul:product:0&while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_664/BiasAddBiasAddwhile/lstm_cell_664/add:z:02while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_664/splitSplit,while/lstm_cell_664/split/split_dim:output:0$while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_664/SigmoidSigmoid"while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_1Sigmoid"while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mulMul!while/lstm_cell_664/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_664/ReluRelu"while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_1Mulwhile/lstm_cell_664/Sigmoid:y:0&while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/add_1AddV2while/lstm_cell_664/mul:z:0while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_2Sigmoid"while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_664/Relu_1Reluwhile/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_2Mul!while/lstm_cell_664/Sigmoid_2:y:0(while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_664/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_664/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_664/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_664/BiasAdd/ReadVariableOp*^while/lstm_cell_664/MatMul/ReadVariableOp,^while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_664_biasadd_readvariableop_resource5while_lstm_cell_664_biasadd_readvariableop_resource_0"n
4while_lstm_cell_664_matmul_1_readvariableop_resource6while_lstm_cell_664_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_664_matmul_readvariableop_resource4while_lstm_cell_664_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_664/BiasAdd/ReadVariableOp*while/lstm_cell_664/BiasAdd/ReadVariableOp2V
)while/lstm_cell_664/MatMul/ReadVariableOp)while/lstm_cell_664/MatMul/ReadVariableOp2Z
+while/lstm_cell_664/MatMul_1/ReadVariableOp+while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_785_while_body_4026308.
*lstm_785_while_lstm_785_while_loop_counter4
0lstm_785_while_lstm_785_while_maximum_iterations
lstm_785_while_placeholder 
lstm_785_while_placeholder_1 
lstm_785_while_placeholder_2 
lstm_785_while_placeholder_3-
)lstm_785_while_lstm_785_strided_slice_1_0i
elstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0:2(Q
?lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0:
(L
>lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0:(
lstm_785_while_identity
lstm_785_while_identity_1
lstm_785_while_identity_2
lstm_785_while_identity_3
lstm_785_while_identity_4
lstm_785_while_identity_5+
'lstm_785_while_lstm_785_strided_slice_1g
clstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensorM
;lstm_785_while_lstm_cell_665_matmul_readvariableop_resource:2(O
=lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource:
(J
<lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource:(??3lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp?2lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp?4lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp?
@lstm_785/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_785/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensor_0lstm_785_while_placeholderIlstm_785/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_785/while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp=lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_785/while/lstm_cell_665/MatMulMatMul9lstm_785/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp?lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_785/while/lstm_cell_665/MatMul_1MatMullstm_785_while_placeholder_2<lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_785/while/lstm_cell_665/addAddV2-lstm_785/while/lstm_cell_665/MatMul:product:0/lstm_785/while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp>lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_785/while/lstm_cell_665/BiasAddBiasAdd$lstm_785/while/lstm_cell_665/add:z:0;lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_785/while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_785/while/lstm_cell_665/splitSplit5lstm_785/while/lstm_cell_665/split/split_dim:output:0-lstm_785/while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_785/while/lstm_cell_665/SigmoidSigmoid+lstm_785/while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_785/while/lstm_cell_665/Sigmoid_1Sigmoid+lstm_785/while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_785/while/lstm_cell_665/mulMul*lstm_785/while/lstm_cell_665/Sigmoid_1:y:0lstm_785_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_785/while/lstm_cell_665/ReluRelu+lstm_785/while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_785/while/lstm_cell_665/mul_1Mul(lstm_785/while/lstm_cell_665/Sigmoid:y:0/lstm_785/while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_785/while/lstm_cell_665/add_1AddV2$lstm_785/while/lstm_cell_665/mul:z:0&lstm_785/while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_785/while/lstm_cell_665/Sigmoid_2Sigmoid+lstm_785/while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_785/while/lstm_cell_665/Relu_1Relu&lstm_785/while/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_785/while/lstm_cell_665/mul_2Mul*lstm_785/while/lstm_cell_665/Sigmoid_2:y:01lstm_785/while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_785/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_785_while_placeholder_1lstm_785_while_placeholder&lstm_785/while/lstm_cell_665/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_785/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_785/while/addAddV2lstm_785_while_placeholderlstm_785/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_785/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_785/while/add_1AddV2*lstm_785_while_lstm_785_while_loop_counterlstm_785/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_785/while/IdentityIdentitylstm_785/while/add_1:z:0^lstm_785/while/NoOp*
T0*
_output_shapes
: ?
lstm_785/while/Identity_1Identity0lstm_785_while_lstm_785_while_maximum_iterations^lstm_785/while/NoOp*
T0*
_output_shapes
: t
lstm_785/while/Identity_2Identitylstm_785/while/add:z:0^lstm_785/while/NoOp*
T0*
_output_shapes
: ?
lstm_785/while/Identity_3IdentityClstm_785/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_785/while/NoOp*
T0*
_output_shapes
: ?
lstm_785/while/Identity_4Identity&lstm_785/while/lstm_cell_665/mul_2:z:0^lstm_785/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_785/while/Identity_5Identity&lstm_785/while/lstm_cell_665/add_1:z:0^lstm_785/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_785/while/NoOpNoOp4^lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp3^lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp5^lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_785_while_identity lstm_785/while/Identity:output:0"?
lstm_785_while_identity_1"lstm_785/while/Identity_1:output:0"?
lstm_785_while_identity_2"lstm_785/while/Identity_2:output:0"?
lstm_785_while_identity_3"lstm_785/while/Identity_3:output:0"?
lstm_785_while_identity_4"lstm_785/while/Identity_4:output:0"?
lstm_785_while_identity_5"lstm_785/while/Identity_5:output:0"T
'lstm_785_while_lstm_785_strided_slice_1)lstm_785_while_lstm_785_strided_slice_1_0"~
<lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource>lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0"?
=lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource?lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0"|
;lstm_785_while_lstm_cell_665_matmul_readvariableop_resource=lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0"?
clstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensorelstm_785_while_tensorarrayv2read_tensorlistgetitem_lstm_785_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp3lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp2h
2lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp2lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp2l
4lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp4lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4023738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_663_4023762_0:	?0
while_lstm_cell_663_4023764_0:	d?,
while_lstm_cell_663_4023766_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_663_4023762:	?.
while_lstm_cell_663_4023764:	d?*
while_lstm_cell_663_4023766:	???+while/lstm_cell_663/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_663/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_663_4023762_0while_lstm_cell_663_4023764_0while_lstm_cell_663_4023766_0*
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4023724?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_663/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_663/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_663/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_663/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_663_4023762while_lstm_cell_663_4023762_0"<
while_lstm_cell_663_4023764while_lstm_cell_663_4023764_0"<
while_lstm_cell_663_4023766while_lstm_cell_663_4023766_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_663/StatefulPartitionedCall+while/lstm_cell_663/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_663_layer_call_fn_4028709

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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4023724o
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
F__inference_dense_261_layer_call_and_return_conditional_losses_4025174

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
?
?
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025770

inputs#
lstm_783_4025743:	?#
lstm_783_4025745:	d?
lstm_783_4025747:	?#
lstm_784_4025750:	d?#
lstm_784_4025752:	2?
lstm_784_4025754:	?"
lstm_785_4025757:2("
lstm_785_4025759:
(
lstm_785_4025761:(#
dense_261_4025764:

dense_261_4025766:
identity??!dense_261/StatefulPartitionedCall? lstm_783/StatefulPartitionedCall? lstm_784/StatefulPartitionedCall? lstm_785/StatefulPartitionedCall?
 lstm_783/StatefulPartitionedCallStatefulPartitionedCallinputslstm_783_4025743lstm_783_4025745lstm_783_4025747*
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4025702?
 lstm_784/StatefulPartitionedCallStatefulPartitionedCall)lstm_783/StatefulPartitionedCall:output:0lstm_784_4025750lstm_784_4025752lstm_784_4025754*
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4025537?
 lstm_785/StatefulPartitionedCallStatefulPartitionedCall)lstm_784/StatefulPartitionedCall:output:0lstm_785_4025757lstm_785_4025759lstm_785_4025761*
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4025372?
!dense_261/StatefulPartitionedCallStatefulPartitionedCall)lstm_785/StatefulPartitionedCall:output:0dense_261_4025764dense_261_4025766*
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
F__inference_dense_261_layer_call_and_return_conditional_losses_4025174y
IdentityIdentity*dense_261/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_261/StatefulPartitionedCall!^lstm_783/StatefulPartitionedCall!^lstm_784/StatefulPartitionedCall!^lstm_785/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_261/StatefulPartitionedCall!dense_261/StatefulPartitionedCall2D
 lstm_783/StatefulPartitionedCall lstm_783/StatefulPartitionedCall2D
 lstm_784/StatefulPartitionedCall lstm_784/StatefulPartitionedCall2D
 lstm_785/StatefulPartitionedCall lstm_785/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4028588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4028588___redundant_placeholder05
1while_while_cond_4028588___redundant_placeholder15
1while_while_cond_4028588___redundant_placeholder25
1while_while_cond_4028588___redundant_placeholder3
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
/__inference_lstm_cell_664_layer_call_fn_4028807

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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4024074o
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027628
inputs_0?
,lstm_cell_664_matmul_readvariableop_resource:	d?A
.lstm_cell_664_matmul_1_readvariableop_resource:	2?<
-lstm_cell_664_biasadd_readvariableop_resource:	?
identity??$lstm_cell_664/BiasAdd/ReadVariableOp?#lstm_cell_664/MatMul/ReadVariableOp?%lstm_cell_664/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_664/MatMul/ReadVariableOpReadVariableOp,lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_664/MatMulMatMulstrided_slice_2:output:0+lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_664/MatMul_1MatMulzeros:output:0-lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_664/addAddV2lstm_cell_664/MatMul:product:0 lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_664/BiasAddBiasAddlstm_cell_664/add:z:0,lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_664/splitSplit&lstm_cell_664/split/split_dim:output:0lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_664/SigmoidSigmoidlstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_1Sigmoidlstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_664/mulMullstm_cell_664/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_664/ReluRelulstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_1Mullstm_cell_664/Sigmoid:y:0 lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_664/add_1AddV2lstm_cell_664/mul:z:0lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_2Sigmoidlstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_664/Relu_1Relulstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_2Mullstm_cell_664/Sigmoid_2:y:0"lstm_cell_664/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_664_matmul_readvariableop_resource.lstm_cell_664_matmul_1_readvariableop_resource-lstm_cell_664_biasadd_readvariableop_resource*
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
while_body_4027544*
condR
while_cond_4027543*K
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
NoOpNoOp%^lstm_cell_664/BiasAdd/ReadVariableOp$^lstm_cell_664/MatMul/ReadVariableOp&^lstm_cell_664/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_664/BiasAdd/ReadVariableOp$lstm_cell_664/BiasAdd/ReadVariableOp2J
#lstm_cell_664/MatMul/ReadVariableOp#lstm_cell_664/MatMul/ReadVariableOp2N
%lstm_cell_664/MatMul_1/ReadVariableOp%lstm_cell_664/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_784_layer_call_and_return_conditional_losses_4024157

inputs(
lstm_cell_664_4024075:	d?(
lstm_cell_664_4024077:	2?$
lstm_cell_664_4024079:	?
identity??%lstm_cell_664/StatefulPartitionedCall?while;
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
%lstm_cell_664/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_664_4024075lstm_cell_664_4024077lstm_cell_664_4024079*
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4024074n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_664_4024075lstm_cell_664_4024077lstm_cell_664_4024079*
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
while_body_4024088*
condR
while_cond_4024087*K
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
NoOpNoOp&^lstm_cell_664/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_664/StatefulPartitionedCall%lstm_cell_664/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_4028446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_665_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_665_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_665_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_665_matmul_readvariableop_resource:2(F
4while_lstm_cell_665_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_665_biasadd_readvariableop_resource:(??*while/lstm_cell_665/BiasAdd/ReadVariableOp?)while/lstm_cell_665/MatMul/ReadVariableOp?+while/lstm_cell_665/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_665/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_665/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_665/addAddV2$while/lstm_cell_665/MatMul:product:0&while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_665/BiasAddBiasAddwhile/lstm_cell_665/add:z:02while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_665/splitSplit,while/lstm_cell_665/split/split_dim:output:0$while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_665/SigmoidSigmoid"while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_1Sigmoid"while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mulMul!while/lstm_cell_665/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_665/ReluRelu"while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_1Mulwhile/lstm_cell_665/Sigmoid:y:0&while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/add_1AddV2while/lstm_cell_665/mul:z:0while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_2Sigmoid"while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_665/Relu_1Reluwhile/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_2Mul!while/lstm_cell_665/Sigmoid_2:y:0(while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_665/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_665/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_665/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_665/BiasAdd/ReadVariableOp*^while/lstm_cell_665/MatMul/ReadVariableOp,^while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_665_biasadd_readvariableop_resource5while_lstm_cell_665_biasadd_readvariableop_resource_0"n
4while_lstm_cell_665_matmul_1_readvariableop_resource6while_lstm_cell_665_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_665_matmul_readvariableop_resource4while_lstm_cell_665_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_665/BiasAdd/ReadVariableOp*while/lstm_cell_665/BiasAdd/ReadVariableOp2V
)while/lstm_cell_665/MatMul/ReadVariableOp)while/lstm_cell_665/MatMul/ReadVariableOp2Z
+while/lstm_cell_665/MatMul_1/ReadVariableOp+while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
0__inference_sequential_261_layer_call_fn_4025822
lstm_783_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_783_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025770o
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
_user_specified_namelstm_783_input
?
?
*__inference_lstm_783_layer_call_fn_4026847
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4023998|
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
?C
?

lstm_783_while_body_4026030.
*lstm_783_while_lstm_783_while_loop_counter4
0lstm_783_while_lstm_783_while_maximum_iterations
lstm_783_while_placeholder 
lstm_783_while_placeholder_1 
lstm_783_while_placeholder_2 
lstm_783_while_placeholder_3-
)lstm_783_while_lstm_783_strided_slice_1_0i
elstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0:	?R
?lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?M
>lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0:	?
lstm_783_while_identity
lstm_783_while_identity_1
lstm_783_while_identity_2
lstm_783_while_identity_3
lstm_783_while_identity_4
lstm_783_while_identity_5+
'lstm_783_while_lstm_783_strided_slice_1g
clstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensorN
;lstm_783_while_lstm_cell_663_matmul_readvariableop_resource:	?P
=lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource:	d?K
<lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource:	???3lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp?2lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp?4lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp?
@lstm_783/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_783/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensor_0lstm_783_while_placeholderIlstm_783/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_783/while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp=lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_783/while/lstm_cell_663/MatMulMatMul9lstm_783/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp?lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_783/while/lstm_cell_663/MatMul_1MatMullstm_783_while_placeholder_2<lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_783/while/lstm_cell_663/addAddV2-lstm_783/while/lstm_cell_663/MatMul:product:0/lstm_783/while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp>lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_783/while/lstm_cell_663/BiasAddBiasAdd$lstm_783/while/lstm_cell_663/add:z:0;lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_783/while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_783/while/lstm_cell_663/splitSplit5lstm_783/while/lstm_cell_663/split/split_dim:output:0-lstm_783/while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_783/while/lstm_cell_663/SigmoidSigmoid+lstm_783/while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_783/while/lstm_cell_663/Sigmoid_1Sigmoid+lstm_783/while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_783/while/lstm_cell_663/mulMul*lstm_783/while/lstm_cell_663/Sigmoid_1:y:0lstm_783_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_783/while/lstm_cell_663/ReluRelu+lstm_783/while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_783/while/lstm_cell_663/mul_1Mul(lstm_783/while/lstm_cell_663/Sigmoid:y:0/lstm_783/while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_783/while/lstm_cell_663/add_1AddV2$lstm_783/while/lstm_cell_663/mul:z:0&lstm_783/while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_783/while/lstm_cell_663/Sigmoid_2Sigmoid+lstm_783/while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_783/while/lstm_cell_663/Relu_1Relu&lstm_783/while/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_783/while/lstm_cell_663/mul_2Mul*lstm_783/while/lstm_cell_663/Sigmoid_2:y:01lstm_783/while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_783/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_783_while_placeholder_1lstm_783_while_placeholder&lstm_783/while/lstm_cell_663/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_783/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_783/while/addAddV2lstm_783_while_placeholderlstm_783/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_783/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_783/while/add_1AddV2*lstm_783_while_lstm_783_while_loop_counterlstm_783/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_783/while/IdentityIdentitylstm_783/while/add_1:z:0^lstm_783/while/NoOp*
T0*
_output_shapes
: ?
lstm_783/while/Identity_1Identity0lstm_783_while_lstm_783_while_maximum_iterations^lstm_783/while/NoOp*
T0*
_output_shapes
: t
lstm_783/while/Identity_2Identitylstm_783/while/add:z:0^lstm_783/while/NoOp*
T0*
_output_shapes
: ?
lstm_783/while/Identity_3IdentityClstm_783/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_783/while/NoOp*
T0*
_output_shapes
: ?
lstm_783/while/Identity_4Identity&lstm_783/while/lstm_cell_663/mul_2:z:0^lstm_783/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_783/while/Identity_5Identity&lstm_783/while/lstm_cell_663/add_1:z:0^lstm_783/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_783/while/NoOpNoOp4^lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp3^lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp5^lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_783_while_identity lstm_783/while/Identity:output:0"?
lstm_783_while_identity_1"lstm_783/while/Identity_1:output:0"?
lstm_783_while_identity_2"lstm_783/while/Identity_2:output:0"?
lstm_783_while_identity_3"lstm_783/while/Identity_3:output:0"?
lstm_783_while_identity_4"lstm_783/while/Identity_4:output:0"?
lstm_783_while_identity_5"lstm_783/while/Identity_5:output:0"T
'lstm_783_while_lstm_783_strided_slice_1)lstm_783_while_lstm_783_strided_slice_1_0"~
<lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource>lstm_783_while_lstm_cell_663_biasadd_readvariableop_resource_0"?
=lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource?lstm_783_while_lstm_cell_663_matmul_1_readvariableop_resource_0"|
;lstm_783_while_lstm_cell_663_matmul_readvariableop_resource=lstm_783_while_lstm_cell_663_matmul_readvariableop_resource_0"?
clstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensorelstm_783_while_tensorarrayv2read_tensorlistgetitem_lstm_783_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp3lstm_783/while/lstm_cell_663/BiasAdd/ReadVariableOp2h
2lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp2lstm_783/while/lstm_cell_663/MatMul/ReadVariableOp2l
4lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp4lstm_783/while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*sequential_261_lstm_785_while_body_4023567L
Hsequential_261_lstm_785_while_sequential_261_lstm_785_while_loop_counterR
Nsequential_261_lstm_785_while_sequential_261_lstm_785_while_maximum_iterations-
)sequential_261_lstm_785_while_placeholder/
+sequential_261_lstm_785_while_placeholder_1/
+sequential_261_lstm_785_while_placeholder_2/
+sequential_261_lstm_785_while_placeholder_3K
Gsequential_261_lstm_785_while_sequential_261_lstm_785_strided_slice_1_0?
?sequential_261_lstm_785_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_785_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_261_lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0:2(`
Nsequential_261_lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0:
([
Msequential_261_lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0:(*
&sequential_261_lstm_785_while_identity,
(sequential_261_lstm_785_while_identity_1,
(sequential_261_lstm_785_while_identity_2,
(sequential_261_lstm_785_while_identity_3,
(sequential_261_lstm_785_while_identity_4,
(sequential_261_lstm_785_while_identity_5I
Esequential_261_lstm_785_while_sequential_261_lstm_785_strided_slice_1?
?sequential_261_lstm_785_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_785_tensorarrayunstack_tensorlistfromtensor\
Jsequential_261_lstm_785_while_lstm_cell_665_matmul_readvariableop_resource:2(^
Lsequential_261_lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource:
(Y
Ksequential_261_lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource:(??Bsequential_261/lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp?Asequential_261/lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp?Csequential_261/lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp?
Osequential_261/lstm_785/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
Asequential_261/lstm_785/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_261_lstm_785_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_785_tensorarrayunstack_tensorlistfromtensor_0)sequential_261_lstm_785_while_placeholderXsequential_261/lstm_785/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
Asequential_261/lstm_785/while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOpLsequential_261_lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
2sequential_261/lstm_785/while/lstm_cell_665/MatMulMatMulHsequential_261/lstm_785/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_261/lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Csequential_261/lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOpNsequential_261_lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
4sequential_261/lstm_785/while/lstm_cell_665/MatMul_1MatMul+sequential_261_lstm_785_while_placeholder_2Ksequential_261/lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
/sequential_261/lstm_785/while/lstm_cell_665/addAddV2<sequential_261/lstm_785/while/lstm_cell_665/MatMul:product:0>sequential_261/lstm_785/while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Bsequential_261/lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOpMsequential_261_lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
3sequential_261/lstm_785/while/lstm_cell_665/BiasAddBiasAdd3sequential_261/lstm_785/while/lstm_cell_665/add:z:0Jsequential_261/lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(}
;sequential_261/lstm_785/while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
1sequential_261/lstm_785/while/lstm_cell_665/splitSplitDsequential_261/lstm_785/while/lstm_cell_665/split/split_dim:output:0<sequential_261/lstm_785/while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
3sequential_261/lstm_785/while/lstm_cell_665/SigmoidSigmoid:sequential_261/lstm_785/while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
?
5sequential_261/lstm_785/while/lstm_cell_665/Sigmoid_1Sigmoid:sequential_261/lstm_785/while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
/sequential_261/lstm_785/while/lstm_cell_665/mulMul9sequential_261/lstm_785/while/lstm_cell_665/Sigmoid_1:y:0+sequential_261_lstm_785_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
0sequential_261/lstm_785/while/lstm_cell_665/ReluRelu:sequential_261/lstm_785/while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
1sequential_261/lstm_785/while/lstm_cell_665/mul_1Mul7sequential_261/lstm_785/while/lstm_cell_665/Sigmoid:y:0>sequential_261/lstm_785/while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
1sequential_261/lstm_785/while/lstm_cell_665/add_1AddV23sequential_261/lstm_785/while/lstm_cell_665/mul:z:05sequential_261/lstm_785/while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
5sequential_261/lstm_785/while/lstm_cell_665/Sigmoid_2Sigmoid:sequential_261/lstm_785/while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
?
2sequential_261/lstm_785/while/lstm_cell_665/Relu_1Relu5sequential_261/lstm_785/while/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
1sequential_261/lstm_785/while/lstm_cell_665/mul_2Mul9sequential_261/lstm_785/while/lstm_cell_665/Sigmoid_2:y:0@sequential_261/lstm_785/while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Bsequential_261/lstm_785/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_261_lstm_785_while_placeholder_1)sequential_261_lstm_785_while_placeholder5sequential_261/lstm_785/while/lstm_cell_665/mul_2:z:0*
_output_shapes
: *
element_dtype0:???e
#sequential_261/lstm_785/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
!sequential_261/lstm_785/while/addAddV2)sequential_261_lstm_785_while_placeholder,sequential_261/lstm_785/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_261/lstm_785/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_261/lstm_785/while/add_1AddV2Hsequential_261_lstm_785_while_sequential_261_lstm_785_while_loop_counter.sequential_261/lstm_785/while/add_1/y:output:0*
T0*
_output_shapes
: ?
&sequential_261/lstm_785/while/IdentityIdentity'sequential_261/lstm_785/while/add_1:z:0#^sequential_261/lstm_785/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_785/while/Identity_1IdentityNsequential_261_lstm_785_while_sequential_261_lstm_785_while_maximum_iterations#^sequential_261/lstm_785/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_785/while/Identity_2Identity%sequential_261/lstm_785/while/add:z:0#^sequential_261/lstm_785/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_785/while/Identity_3IdentityRsequential_261/lstm_785/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_261/lstm_785/while/NoOp*
T0*
_output_shapes
: ?
(sequential_261/lstm_785/while/Identity_4Identity5sequential_261/lstm_785/while/lstm_cell_665/mul_2:z:0#^sequential_261/lstm_785/while/NoOp*
T0*'
_output_shapes
:?????????
?
(sequential_261/lstm_785/while/Identity_5Identity5sequential_261/lstm_785/while/lstm_cell_665/add_1:z:0#^sequential_261/lstm_785/while/NoOp*
T0*'
_output_shapes
:?????????
?
"sequential_261/lstm_785/while/NoOpNoOpC^sequential_261/lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOpB^sequential_261/lstm_785/while/lstm_cell_665/MatMul/ReadVariableOpD^sequential_261/lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_261_lstm_785_while_identity/sequential_261/lstm_785/while/Identity:output:0"]
(sequential_261_lstm_785_while_identity_11sequential_261/lstm_785/while/Identity_1:output:0"]
(sequential_261_lstm_785_while_identity_21sequential_261/lstm_785/while/Identity_2:output:0"]
(sequential_261_lstm_785_while_identity_31sequential_261/lstm_785/while/Identity_3:output:0"]
(sequential_261_lstm_785_while_identity_41sequential_261/lstm_785/while/Identity_4:output:0"]
(sequential_261_lstm_785_while_identity_51sequential_261/lstm_785/while/Identity_5:output:0"?
Ksequential_261_lstm_785_while_lstm_cell_665_biasadd_readvariableop_resourceMsequential_261_lstm_785_while_lstm_cell_665_biasadd_readvariableop_resource_0"?
Lsequential_261_lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resourceNsequential_261_lstm_785_while_lstm_cell_665_matmul_1_readvariableop_resource_0"?
Jsequential_261_lstm_785_while_lstm_cell_665_matmul_readvariableop_resourceLsequential_261_lstm_785_while_lstm_cell_665_matmul_readvariableop_resource_0"?
Esequential_261_lstm_785_while_sequential_261_lstm_785_strided_slice_1Gsequential_261_lstm_785_while_sequential_261_lstm_785_strided_slice_1_0"?
?sequential_261_lstm_785_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_785_tensorarrayunstack_tensorlistfromtensor?sequential_261_lstm_785_while_tensorarrayv2read_tensorlistgetitem_sequential_261_lstm_785_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Bsequential_261/lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOpBsequential_261/lstm_785/while/lstm_cell_665/BiasAdd/ReadVariableOp2?
Asequential_261/lstm_785/while/lstm_cell_665/MatMul/ReadVariableOpAsequential_261/lstm_785/while/lstm_cell_665/MatMul/ReadVariableOp2?
Csequential_261/lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOpCsequential_261/lstm_785/while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4025288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_665_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_665_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_665_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_665_matmul_readvariableop_resource:2(F
4while_lstm_cell_665_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_665_biasadd_readvariableop_resource:(??*while/lstm_cell_665/BiasAdd/ReadVariableOp?)while/lstm_cell_665/MatMul/ReadVariableOp?+while/lstm_cell_665/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_665/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_665/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_665/addAddV2$while/lstm_cell_665/MatMul:product:0&while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_665/BiasAddBiasAddwhile/lstm_cell_665/add:z:02while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_665/splitSplit,while/lstm_cell_665/split/split_dim:output:0$while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_665/SigmoidSigmoid"while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_1Sigmoid"while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mulMul!while/lstm_cell_665/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_665/ReluRelu"while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_1Mulwhile/lstm_cell_665/Sigmoid:y:0&while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/add_1AddV2while/lstm_cell_665/mul:z:0while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_2Sigmoid"while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_665/Relu_1Reluwhile/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_2Mul!while/lstm_cell_665/Sigmoid_2:y:0(while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_665/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_665/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_665/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_665/BiasAdd/ReadVariableOp*^while/lstm_cell_665/MatMul/ReadVariableOp,^while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_665_biasadd_readvariableop_resource5while_lstm_cell_665_biasadd_readvariableop_resource_0"n
4while_lstm_cell_665_matmul_1_readvariableop_resource6while_lstm_cell_665_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_665_matmul_readvariableop_resource4while_lstm_cell_665_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_665/BiasAdd/ReadVariableOp*while/lstm_cell_665/BiasAdd/ReadVariableOp2V
)while/lstm_cell_665/MatMul/ReadVariableOp)while/lstm_cell_665/MatMul/ReadVariableOp2Z
+while/lstm_cell_665/MatMul_1/ReadVariableOp+while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_4026928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_663_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_663_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_663_matmul_readvariableop_resource:	?G
4while_lstm_cell_663_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_663_biasadd_readvariableop_resource:	???*while/lstm_cell_663/BiasAdd/ReadVariableOp?)while/lstm_cell_663/MatMul/ReadVariableOp?+while/lstm_cell_663/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_663/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_663/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_663/addAddV2$while/lstm_cell_663/MatMul:product:0&while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_663/BiasAddBiasAddwhile/lstm_cell_663/add:z:02while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_663/splitSplit,while/lstm_cell_663/split/split_dim:output:0$while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_663/SigmoidSigmoid"while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_1Sigmoid"while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mulMul!while/lstm_cell_663/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_663/ReluRelu"while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_1Mulwhile/lstm_cell_663/Sigmoid:y:0&while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/add_1AddV2while/lstm_cell_663/mul:z:0while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_2Sigmoid"while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_663/Relu_1Reluwhile/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_2Mul!while/lstm_cell_663/Sigmoid_2:y:0(while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_663/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_663/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_663/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_663/BiasAdd/ReadVariableOp*^while/lstm_cell_663/MatMul/ReadVariableOp,^while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_663_biasadd_readvariableop_resource5while_lstm_cell_663_biasadd_readvariableop_resource_0"n
4while_lstm_cell_663_matmul_1_readvariableop_resource6while_lstm_cell_663_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_663_matmul_readvariableop_resource4while_lstm_cell_663_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_663/BiasAdd/ReadVariableOp*while/lstm_cell_663/BiasAdd/ReadVariableOp2V
)while/lstm_cell_663/MatMul/ReadVariableOp)while/lstm_cell_663/MatMul/ReadVariableOp2Z
+while/lstm_cell_663/MatMul_1/ReadVariableOp+while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4025006

inputs?
,lstm_cell_664_matmul_readvariableop_resource:	d?A
.lstm_cell_664_matmul_1_readvariableop_resource:	2?<
-lstm_cell_664_biasadd_readvariableop_resource:	?
identity??$lstm_cell_664/BiasAdd/ReadVariableOp?#lstm_cell_664/MatMul/ReadVariableOp?%lstm_cell_664/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_664/MatMul/ReadVariableOpReadVariableOp,lstm_cell_664_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_664/MatMulMatMulstrided_slice_2:output:0+lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_664_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_664/MatMul_1MatMulzeros:output:0-lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_664/addAddV2lstm_cell_664/MatMul:product:0 lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_664_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_664/BiasAddBiasAddlstm_cell_664/add:z:0,lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_664/splitSplit&lstm_cell_664/split/split_dim:output:0lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_664/SigmoidSigmoidlstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_1Sigmoidlstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_664/mulMullstm_cell_664/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_664/ReluRelulstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_1Mullstm_cell_664/Sigmoid:y:0 lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_664/add_1AddV2lstm_cell_664/mul:z:0lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_664/Sigmoid_2Sigmoidlstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_664/Relu_1Relulstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_664/mul_2Mullstm_cell_664/Sigmoid_2:y:0"lstm_cell_664/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_664_matmul_readvariableop_resource.lstm_cell_664_matmul_1_readvariableop_resource-lstm_cell_664_biasadd_readvariableop_resource*
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
while_body_4024922*
condR
while_cond_4024921*K
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
NoOpNoOp%^lstm_cell_664/BiasAdd/ReadVariableOp$^lstm_cell_664/MatMul/ReadVariableOp&^lstm_cell_664/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_664/BiasAdd/ReadVariableOp$lstm_cell_664/BiasAdd/ReadVariableOp2J
#lstm_cell_664/MatMul/ReadVariableOp#lstm_cell_664/MatMul/ReadVariableOp2N
%lstm_cell_664/MatMul_1/ReadVariableOp%lstm_cell_664/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028530

inputs>
,lstm_cell_665_matmul_readvariableop_resource:2(@
.lstm_cell_665_matmul_1_readvariableop_resource:
(;
-lstm_cell_665_biasadd_readvariableop_resource:(
identity??$lstm_cell_665/BiasAdd/ReadVariableOp?#lstm_cell_665/MatMul/ReadVariableOp?%lstm_cell_665/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_665/MatMul/ReadVariableOpReadVariableOp,lstm_cell_665_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_665/MatMulMatMulstrided_slice_2:output:0+lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_665_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_665/MatMul_1MatMulzeros:output:0-lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_665/addAddV2lstm_cell_665/MatMul:product:0 lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_665_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_665/BiasAddBiasAddlstm_cell_665/add:z:0,lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_665/splitSplit&lstm_cell_665/split/split_dim:output:0lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_665/SigmoidSigmoidlstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_1Sigmoidlstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_665/mulMullstm_cell_665/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_665/ReluRelulstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_1Mullstm_cell_665/Sigmoid:y:0 lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_665/add_1AddV2lstm_cell_665/mul:z:0lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_665/Sigmoid_2Sigmoidlstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_665/Relu_1Relulstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_665/mul_2Mullstm_cell_665/Sigmoid_2:y:0"lstm_cell_665/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_665_matmul_readvariableop_resource.lstm_cell_665_matmul_1_readvariableop_resource-lstm_cell_665_biasadd_readvariableop_resource*
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
while_body_4028446*
condR
while_cond_4028445*K
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
NoOpNoOp%^lstm_cell_665/BiasAdd/ReadVariableOp$^lstm_cell_665/MatMul/ReadVariableOp&^lstm_cell_665/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_665/BiasAdd/ReadVariableOp$lstm_cell_665/BiasAdd/ReadVariableOp2J
#lstm_cell_665/MatMul/ReadVariableOp#lstm_cell_665/MatMul/ReadVariableOp2N
%lstm_cell_665/MatMul_1/ReadVariableOp%lstm_cell_665/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_4027071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_663_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_663_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_663_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_663_matmul_readvariableop_resource:	?G
4while_lstm_cell_663_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_663_biasadd_readvariableop_resource:	???*while/lstm_cell_663/BiasAdd/ReadVariableOp?)while/lstm_cell_663/MatMul/ReadVariableOp?+while/lstm_cell_663/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_663/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_663_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_663/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_663_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_663/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_663/addAddV2$while/lstm_cell_663/MatMul:product:0&while/lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_663_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_663/BiasAddBiasAddwhile/lstm_cell_663/add:z:02while/lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_663/splitSplit,while/lstm_cell_663/split/split_dim:output:0$while/lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_663/SigmoidSigmoid"while/lstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_1Sigmoid"while/lstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mulMul!while/lstm_cell_663/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_663/ReluRelu"while/lstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_1Mulwhile/lstm_cell_663/Sigmoid:y:0&while/lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/add_1AddV2while/lstm_cell_663/mul:z:0while/lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_663/Sigmoid_2Sigmoid"while/lstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_663/Relu_1Reluwhile/lstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_663/mul_2Mul!while/lstm_cell_663/Sigmoid_2:y:0(while/lstm_cell_663/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_663/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_663/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_663/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_663/BiasAdd/ReadVariableOp*^while/lstm_cell_663/MatMul/ReadVariableOp,^while/lstm_cell_663/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_663_biasadd_readvariableop_resource5while_lstm_cell_663_biasadd_readvariableop_resource_0"n
4while_lstm_cell_663_matmul_1_readvariableop_resource6while_lstm_cell_663_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_663_matmul_readvariableop_resource4while_lstm_cell_663_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_663/BiasAdd/ReadVariableOp*while/lstm_cell_663/BiasAdd/ReadVariableOp2V
)while/lstm_cell_663/MatMul/ReadVariableOp)while/lstm_cell_663/MatMul/ReadVariableOp2Z
+while/lstm_cell_663/MatMul_1/ReadVariableOp+while/lstm_cell_663/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4023870

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
while_body_4028589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_665_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_665_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_665_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_665_matmul_readvariableop_resource:2(F
4while_lstm_cell_665_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_665_biasadd_readvariableop_resource:(??*while/lstm_cell_665/BiasAdd/ReadVariableOp?)while/lstm_cell_665/MatMul/ReadVariableOp?+while/lstm_cell_665/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_665/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_665_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_665/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_665/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_665/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_665_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_665/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_665/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_665/addAddV2$while/lstm_cell_665/MatMul:product:0&while/lstm_cell_665/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_665/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_665_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_665/BiasAddBiasAddwhile/lstm_cell_665/add:z:02while/lstm_cell_665/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_665/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_665/splitSplit,while/lstm_cell_665/split/split_dim:output:0$while/lstm_cell_665/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_665/SigmoidSigmoid"while/lstm_cell_665/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_1Sigmoid"while/lstm_cell_665/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mulMul!while/lstm_cell_665/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_665/ReluRelu"while/lstm_cell_665/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_1Mulwhile/lstm_cell_665/Sigmoid:y:0&while/lstm_cell_665/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/add_1AddV2while/lstm_cell_665/mul:z:0while/lstm_cell_665/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_665/Sigmoid_2Sigmoid"while/lstm_cell_665/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_665/Relu_1Reluwhile/lstm_cell_665/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_665/mul_2Mul!while/lstm_cell_665/Sigmoid_2:y:0(while/lstm_cell_665/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_665/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_665/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_665/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_665/BiasAdd/ReadVariableOp*^while/lstm_cell_665/MatMul/ReadVariableOp,^while/lstm_cell_665/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_665_biasadd_readvariableop_resource5while_lstm_cell_665_biasadd_readvariableop_resource_0"n
4while_lstm_cell_665_matmul_1_readvariableop_resource6while_lstm_cell_665_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_665_matmul_readvariableop_resource4while_lstm_cell_665_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_665/BiasAdd/ReadVariableOp*while/lstm_cell_665/BiasAdd/ReadVariableOp2V
)while/lstm_cell_665/MatMul/ReadVariableOp)while/lstm_cell_665/MatMul/ReadVariableOp2Z
+while/lstm_cell_665/MatMul_1/ReadVariableOp+while/lstm_cell_665/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_783_while_cond_4026029.
*lstm_783_while_lstm_783_while_loop_counter4
0lstm_783_while_lstm_783_while_maximum_iterations
lstm_783_while_placeholder 
lstm_783_while_placeholder_1 
lstm_783_while_placeholder_2 
lstm_783_while_placeholder_30
,lstm_783_while_less_lstm_783_strided_slice_1G
Clstm_783_while_lstm_783_while_cond_4026029___redundant_placeholder0G
Clstm_783_while_lstm_783_while_cond_4026029___redundant_placeholder1G
Clstm_783_while_lstm_783_while_cond_4026029___redundant_placeholder2G
Clstm_783_while_lstm_783_while_cond_4026029___redundant_placeholder3
lstm_783_while_identity
?
lstm_783/while/LessLesslstm_783_while_placeholder,lstm_783_while_less_lstm_783_strided_slice_1*
T0*
_output_shapes
: ]
lstm_783/while/IdentityIdentitylstm_783/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_783_while_identity lstm_783/while/Identity:output:0*(
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027298

inputs?
,lstm_cell_663_matmul_readvariableop_resource:	?A
.lstm_cell_663_matmul_1_readvariableop_resource:	d?<
-lstm_cell_663_biasadd_readvariableop_resource:	?
identity??$lstm_cell_663/BiasAdd/ReadVariableOp?#lstm_cell_663/MatMul/ReadVariableOp?%lstm_cell_663/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_663/MatMul/ReadVariableOpReadVariableOp,lstm_cell_663_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_663/MatMulMatMulstrided_slice_2:output:0+lstm_cell_663/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_663/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_663_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_663/MatMul_1MatMulzeros:output:0-lstm_cell_663/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_663/addAddV2lstm_cell_663/MatMul:product:0 lstm_cell_663/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_663/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_663_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_663/BiasAddBiasAddlstm_cell_663/add:z:0,lstm_cell_663/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_663/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_663/splitSplit&lstm_cell_663/split/split_dim:output:0lstm_cell_663/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_663/SigmoidSigmoidlstm_cell_663/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_1Sigmoidlstm_cell_663/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_663/mulMullstm_cell_663/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_663/ReluRelulstm_cell_663/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_1Mullstm_cell_663/Sigmoid:y:0 lstm_cell_663/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_663/add_1AddV2lstm_cell_663/mul:z:0lstm_cell_663/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_663/Sigmoid_2Sigmoidlstm_cell_663/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_663/Relu_1Relulstm_cell_663/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_663/mul_2Mullstm_cell_663/Sigmoid_2:y:0"lstm_cell_663/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_663_matmul_readvariableop_resource.lstm_cell_663_matmul_1_readvariableop_resource-lstm_cell_663_biasadd_readvariableop_resource*
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
while_body_4027214*
condR
while_cond_4027213*K
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
NoOpNoOp%^lstm_cell_663/BiasAdd/ReadVariableOp$^lstm_cell_663/MatMul/ReadVariableOp&^lstm_cell_663/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_663/BiasAdd/ReadVariableOp$lstm_cell_663/BiasAdd/ReadVariableOp2J
#lstm_cell_663/MatMul/ReadVariableOp#lstm_cell_663/MatMul/ReadVariableOp2N
%lstm_cell_663/MatMul_1/ReadVariableOp%lstm_cell_663/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025882
lstm_783_input#
lstm_783_4025855:	?#
lstm_783_4025857:	d?
lstm_783_4025859:	?#
lstm_784_4025862:	d?#
lstm_784_4025864:	2?
lstm_784_4025866:	?"
lstm_785_4025869:2("
lstm_785_4025871:
(
lstm_785_4025873:(#
dense_261_4025876:

dense_261_4025878:
identity??!dense_261/StatefulPartitionedCall? lstm_783/StatefulPartitionedCall? lstm_784/StatefulPartitionedCall? lstm_785/StatefulPartitionedCall?
 lstm_783/StatefulPartitionedCallStatefulPartitionedCalllstm_783_inputlstm_783_4025855lstm_783_4025857lstm_783_4025859*
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4025702?
 lstm_784/StatefulPartitionedCallStatefulPartitionedCall)lstm_783/StatefulPartitionedCall:output:0lstm_784_4025862lstm_784_4025864lstm_784_4025866*
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4025537?
 lstm_785/StatefulPartitionedCallStatefulPartitionedCall)lstm_784/StatefulPartitionedCall:output:0lstm_785_4025869lstm_785_4025871lstm_785_4025873*
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4025372?
!dense_261/StatefulPartitionedCallStatefulPartitionedCall)lstm_785/StatefulPartitionedCall:output:0dense_261_4025876dense_261_4025878*
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
F__inference_dense_261_layer_call_and_return_conditional_losses_4025174y
IdentityIdentity*dense_261/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_261/StatefulPartitionedCall!^lstm_783/StatefulPartitionedCall!^lstm_784/StatefulPartitionedCall!^lstm_785/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_261/StatefulPartitionedCall!dense_261/StatefulPartitionedCall2D
 lstm_783/StatefulPartitionedCall lstm_783/StatefulPartitionedCall2D
 lstm_784/StatefulPartitionedCall lstm_784/StatefulPartitionedCall2D
 lstm_785/StatefulPartitionedCall lstm_785/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_783_input
?
?
*sequential_261_lstm_783_while_cond_4023288L
Hsequential_261_lstm_783_while_sequential_261_lstm_783_while_loop_counterR
Nsequential_261_lstm_783_while_sequential_261_lstm_783_while_maximum_iterations-
)sequential_261_lstm_783_while_placeholder/
+sequential_261_lstm_783_while_placeholder_1/
+sequential_261_lstm_783_while_placeholder_2/
+sequential_261_lstm_783_while_placeholder_3N
Jsequential_261_lstm_783_while_less_sequential_261_lstm_783_strided_slice_1e
asequential_261_lstm_783_while_sequential_261_lstm_783_while_cond_4023288___redundant_placeholder0e
asequential_261_lstm_783_while_sequential_261_lstm_783_while_cond_4023288___redundant_placeholder1e
asequential_261_lstm_783_while_sequential_261_lstm_783_while_cond_4023288___redundant_placeholder2e
asequential_261_lstm_783_while_sequential_261_lstm_783_while_cond_4023288___redundant_placeholder3*
&sequential_261_lstm_783_while_identity
?
"sequential_261/lstm_783/while/LessLess)sequential_261_lstm_783_while_placeholderJsequential_261_lstm_783_while_less_sequential_261_lstm_783_strided_slice_1*
T0*
_output_shapes
: {
&sequential_261/lstm_783/while/IdentityIdentity&sequential_261/lstm_783/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_261_lstm_783_while_identity/sequential_261/lstm_783/while/Identity:output:0*(
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
0__inference_sequential_261_layer_call_fn_4025944

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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025181o
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
0__inference_sequential_261_layer_call_fn_4025971

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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025770o
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
while_cond_4023928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4023928___redundant_placeholder05
1while_while_cond_4023928___redundant_placeholder15
1while_while_cond_4023928___redundant_placeholder25
1while_while_cond_4023928___redundant_placeholder3
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
while_cond_4027356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4027356___redundant_placeholder05
1while_while_cond_4027356___redundant_placeholder15
1while_while_cond_4027356___redundant_placeholder25
1while_while_cond_4027356___redundant_placeholder3
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
*__inference_lstm_783_layer_call_fn_4026858

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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4024856s
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
?#
?
while_body_4023929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_663_4023953_0:	?0
while_lstm_cell_663_4023955_0:	d?,
while_lstm_cell_663_4023957_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_663_4023953:	?.
while_lstm_cell_663_4023955:	d?*
while_lstm_cell_663_4023957:	???+while/lstm_cell_663/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_663/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_663_4023953_0while_lstm_cell_663_4023955_0while_lstm_cell_663_4023957_0*
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4023870?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_663/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_663/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_663/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_663/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_663_4023953while_lstm_cell_663_4023953_0"<
while_lstm_cell_663_4023955while_lstm_cell_663_4023955_0"<
while_lstm_cell_663_4023957while_lstm_cell_663_4023957_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_663/StatefulPartitionedCall+while/lstm_cell_663/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_4024628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4024628___redundant_placeholder05
1while_while_cond_4024628___redundant_placeholder15
1while_while_cond_4024628___redundant_placeholder25
1while_while_cond_4024628___redundant_placeholder3
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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025852
lstm_783_input#
lstm_783_4025825:	?#
lstm_783_4025827:	d?
lstm_783_4025829:	?#
lstm_784_4025832:	d?#
lstm_784_4025834:	2?
lstm_784_4025836:	?"
lstm_785_4025839:2("
lstm_785_4025841:
(
lstm_785_4025843:(#
dense_261_4025846:

dense_261_4025848:
identity??!dense_261/StatefulPartitionedCall? lstm_783/StatefulPartitionedCall? lstm_784/StatefulPartitionedCall? lstm_785/StatefulPartitionedCall?
 lstm_783/StatefulPartitionedCallStatefulPartitionedCalllstm_783_inputlstm_783_4025825lstm_783_4025827lstm_783_4025829*
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4024856?
 lstm_784/StatefulPartitionedCallStatefulPartitionedCall)lstm_783/StatefulPartitionedCall:output:0lstm_784_4025832lstm_784_4025834lstm_784_4025836*
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4025006?
 lstm_785/StatefulPartitionedCallStatefulPartitionedCall)lstm_784/StatefulPartitionedCall:output:0lstm_785_4025839lstm_785_4025841lstm_785_4025843*
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4025156?
!dense_261/StatefulPartitionedCallStatefulPartitionedCall)lstm_785/StatefulPartitionedCall:output:0dense_261_4025846dense_261_4025848*
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
F__inference_dense_261_layer_call_and_return_conditional_losses_4025174y
IdentityIdentity*dense_261/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_261/StatefulPartitionedCall!^lstm_783/StatefulPartitionedCall!^lstm_784/StatefulPartitionedCall!^lstm_785/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2F
!dense_261/StatefulPartitionedCall!dense_261/StatefulPartitionedCall2D
 lstm_783/StatefulPartitionedCall lstm_783/StatefulPartitionedCall2D
 lstm_784/StatefulPartitionedCall lstm_784/StatefulPartitionedCall2D
 lstm_785/StatefulPartitionedCall lstm_785/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_783_input
?
?
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4024570

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
*__inference_lstm_784_layer_call_fn_4027474

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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4025006s
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
*__inference_lstm_785_layer_call_fn_4028079
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4024698o
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
/__inference_lstm_cell_665_layer_call_fn_4028905

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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4024424o
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4024507

inputs'
lstm_cell_665_4024425:2('
lstm_cell_665_4024427:
(#
lstm_cell_665_4024429:(
identity??%lstm_cell_665/StatefulPartitionedCall?while;
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
%lstm_cell_665/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_665_4024425lstm_cell_665_4024427lstm_cell_665_4024429*
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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4024424n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_665_4024425lstm_cell_665_4024427lstm_cell_665_4024429*
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
while_body_4024438*
condR
while_cond_4024437*K
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
NoOpNoOp&^lstm_cell_665/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_665/StatefulPartitionedCall%lstm_cell_665/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_4027544
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_664_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_664_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_664_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_664_matmul_readvariableop_resource:	d?G
4while_lstm_cell_664_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_664_biasadd_readvariableop_resource:	???*while/lstm_cell_664/BiasAdd/ReadVariableOp?)while/lstm_cell_664/MatMul/ReadVariableOp?+while/lstm_cell_664/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_664/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_664_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_664/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_664/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_664/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_664_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_664/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_664/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_664/addAddV2$while/lstm_cell_664/MatMul:product:0&while/lstm_cell_664/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_664/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_664_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_664/BiasAddBiasAddwhile/lstm_cell_664/add:z:02while/lstm_cell_664/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_664/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_664/splitSplit,while/lstm_cell_664/split/split_dim:output:0$while/lstm_cell_664/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_664/SigmoidSigmoid"while/lstm_cell_664/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_1Sigmoid"while/lstm_cell_664/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mulMul!while/lstm_cell_664/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_664/ReluRelu"while/lstm_cell_664/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_1Mulwhile/lstm_cell_664/Sigmoid:y:0&while/lstm_cell_664/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/add_1AddV2while/lstm_cell_664/mul:z:0while/lstm_cell_664/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_664/Sigmoid_2Sigmoid"while/lstm_cell_664/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_664/Relu_1Reluwhile/lstm_cell_664/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_664/mul_2Mul!while/lstm_cell_664/Sigmoid_2:y:0(while/lstm_cell_664/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_664/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_664/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_664/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_664/BiasAdd/ReadVariableOp*^while/lstm_cell_664/MatMul/ReadVariableOp,^while/lstm_cell_664/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_664_biasadd_readvariableop_resource5while_lstm_cell_664_biasadd_readvariableop_resource_0"n
4while_lstm_cell_664_matmul_1_readvariableop_resource6while_lstm_cell_664_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_664_matmul_readvariableop_resource4while_lstm_cell_664_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_664/BiasAdd/ReadVariableOp*while/lstm_cell_664/BiasAdd/ReadVariableOp2V
)while/lstm_cell_664/MatMul/ReadVariableOp)while/lstm_cell_664/MatMul/ReadVariableOp2Z
+while/lstm_cell_664/MatMul_1/ReadVariableOp+while/lstm_cell_664/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_783_while_cond_4026456.
*lstm_783_while_lstm_783_while_loop_counter4
0lstm_783_while_lstm_783_while_maximum_iterations
lstm_783_while_placeholder 
lstm_783_while_placeholder_1 
lstm_783_while_placeholder_2 
lstm_783_while_placeholder_30
,lstm_783_while_less_lstm_783_strided_slice_1G
Clstm_783_while_lstm_783_while_cond_4026456___redundant_placeholder0G
Clstm_783_while_lstm_783_while_cond_4026456___redundant_placeholder1G
Clstm_783_while_lstm_783_while_cond_4026456___redundant_placeholder2G
Clstm_783_while_lstm_783_while_cond_4026456___redundant_placeholder3
lstm_783_while_identity
?
lstm_783/while/LessLesslstm_783_while_placeholder,lstm_783_while_less_lstm_783_strided_slice_1*
T0*
_output_shapes
: ]
lstm_783/while/IdentityIdentitylstm_783/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_783_while_identity lstm_783/while/Identity:output:0*(
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
while_cond_4024278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4024278___redundant_placeholder05
1while_while_cond_4024278___redundant_placeholder15
1while_while_cond_4024278___redundant_placeholder25
1while_while_cond_4024278___redundant_placeholder3
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
while_cond_4025287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4025287___redundant_placeholder05
1while_while_cond_4025287___redundant_placeholder15
1while_while_cond_4025287___redundant_placeholder25
1while_while_cond_4025287___redundant_placeholder3
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
lstm_783_input;
 serving_default_lstm_783_input:0?????????=
	dense_2610
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
2dense_261/kernel
:2dense_261/bias
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
0:.	?2lstm_783/lstm_cell_783/kernel
::8	d?2'lstm_783/lstm_cell_783/recurrent_kernel
*:(?2lstm_783/lstm_cell_783/bias
0:.	d?2lstm_784/lstm_cell_784/kernel
::8	2?2'lstm_784/lstm_cell_784/recurrent_kernel
*:(?2lstm_784/lstm_cell_784/bias
/:-2(2lstm_785/lstm_cell_785/kernel
9:7
(2'lstm_785/lstm_cell_785/recurrent_kernel
):'(2lstm_785/lstm_cell_785/bias
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
2Adam/dense_261/kernel/m
!:2Adam/dense_261/bias/m
5:3	?2$Adam/lstm_783/lstm_cell_783/kernel/m
?:=	d?2.Adam/lstm_783/lstm_cell_783/recurrent_kernel/m
/:-?2"Adam/lstm_783/lstm_cell_783/bias/m
5:3	d?2$Adam/lstm_784/lstm_cell_784/kernel/m
?:=	2?2.Adam/lstm_784/lstm_cell_784/recurrent_kernel/m
/:-?2"Adam/lstm_784/lstm_cell_784/bias/m
4:22(2$Adam/lstm_785/lstm_cell_785/kernel/m
>:<
(2.Adam/lstm_785/lstm_cell_785/recurrent_kernel/m
.:,(2"Adam/lstm_785/lstm_cell_785/bias/m
':%
2Adam/dense_261/kernel/v
!:2Adam/dense_261/bias/v
5:3	?2$Adam/lstm_783/lstm_cell_783/kernel/v
?:=	d?2.Adam/lstm_783/lstm_cell_783/recurrent_kernel/v
/:-?2"Adam/lstm_783/lstm_cell_783/bias/v
5:3	d?2$Adam/lstm_784/lstm_cell_784/kernel/v
?:=	2?2.Adam/lstm_784/lstm_cell_784/recurrent_kernel/v
/:-?2"Adam/lstm_784/lstm_cell_784/bias/v
4:22(2$Adam/lstm_785/lstm_cell_785/kernel/v
>:<
(2.Adam/lstm_785/lstm_cell_785/recurrent_kernel/v
.:,(2"Adam/lstm_785/lstm_cell_785/bias/v
?2?
0__inference_sequential_261_layer_call_fn_4025206
0__inference_sequential_261_layer_call_fn_4025944
0__inference_sequential_261_layer_call_fn_4025971
0__inference_sequential_261_layer_call_fn_4025822?
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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4026398
K__inference_sequential_261_layer_call_and_return_conditional_losses_4026825
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025852
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025882?
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
"__inference__wrapped_model_4023657lstm_783_input"?
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
*__inference_lstm_783_layer_call_fn_4026836
*__inference_lstm_783_layer_call_fn_4026847
*__inference_lstm_783_layer_call_fn_4026858
*__inference_lstm_783_layer_call_fn_4026869?
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027012
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027155
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027298
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027441?
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
*__inference_lstm_784_layer_call_fn_4027452
*__inference_lstm_784_layer_call_fn_4027463
*__inference_lstm_784_layer_call_fn_4027474
*__inference_lstm_784_layer_call_fn_4027485?
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027628
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027771
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027914
E__inference_lstm_784_layer_call_and_return_conditional_losses_4028057?
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
*__inference_lstm_785_layer_call_fn_4028068
*__inference_lstm_785_layer_call_fn_4028079
*__inference_lstm_785_layer_call_fn_4028090
*__inference_lstm_785_layer_call_fn_4028101?
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028244
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028387
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028530
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028673?
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
+__inference_dense_261_layer_call_fn_4028682?
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
F__inference_dense_261_layer_call_and_return_conditional_losses_4028692?
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
%__inference_signature_wrapper_4025917lstm_783_input"?
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
/__inference_lstm_cell_663_layer_call_fn_4028709
/__inference_lstm_cell_663_layer_call_fn_4028726?
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4028758
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4028790?
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
/__inference_lstm_cell_664_layer_call_fn_4028807
/__inference_lstm_cell_664_layer_call_fn_4028824?
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4028856
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4028888?
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
/__inference_lstm_cell_665_layer_call_fn_4028905
/__inference_lstm_cell_665_layer_call_fn_4028922?
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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4028954
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4028986?
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
"__inference__wrapped_model_4023657?-./012345!";?8
1?.
,?)
lstm_783_input?????????
? "5?2
0
	dense_261#? 
	dense_261??????????
F__inference_dense_261_layer_call_and_return_conditional_losses_4028692\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ~
+__inference_dense_261_layer_call_fn_4028682O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027012?-./O?L
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027155?-./O?L
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027298q-./??<
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
E__inference_lstm_783_layer_call_and_return_conditional_losses_4027441q-./??<
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
*__inference_lstm_783_layer_call_fn_4026836}-./O?L
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
*__inference_lstm_783_layer_call_fn_4026847}-./O?L
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
*__inference_lstm_783_layer_call_fn_4026858d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_783_layer_call_fn_4026869d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027628?012O?L
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027771?012O?L
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4027914q012??<
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
E__inference_lstm_784_layer_call_and_return_conditional_losses_4028057q012??<
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
*__inference_lstm_784_layer_call_fn_4027452}012O?L
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
*__inference_lstm_784_layer_call_fn_4027463}012O?L
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
*__inference_lstm_784_layer_call_fn_4027474d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_784_layer_call_fn_4027485d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028244}345O?L
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028387}345O?L
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028530m345??<
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
E__inference_lstm_785_layer_call_and_return_conditional_losses_4028673m345??<
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
*__inference_lstm_785_layer_call_fn_4028068p345O?L
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
*__inference_lstm_785_layer_call_fn_4028079p345O?L
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
*__inference_lstm_785_layer_call_fn_4028090`345??<
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
*__inference_lstm_785_layer_call_fn_4028101`345??<
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4028758?-./??}
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
J__inference_lstm_cell_663_layer_call_and_return_conditional_losses_4028790?-./??}
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
/__inference_lstm_cell_663_layer_call_fn_4028709?-./??}
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
/__inference_lstm_cell_663_layer_call_fn_4028726?-./??}
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4028856?012??}
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
J__inference_lstm_cell_664_layer_call_and_return_conditional_losses_4028888?012??}
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
/__inference_lstm_cell_664_layer_call_fn_4028807?012??}
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
/__inference_lstm_cell_664_layer_call_fn_4028824?012??}
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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4028954?345??}
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
J__inference_lstm_cell_665_layer_call_and_return_conditional_losses_4028986?345??}
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
/__inference_lstm_cell_665_layer_call_fn_4028905?345??}
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
/__inference_lstm_cell_665_layer_call_fn_4028922?345??}
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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025852y-./012345!"C?@
9?6
,?)
lstm_783_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_261_layer_call_and_return_conditional_losses_4025882y-./012345!"C?@
9?6
,?)
lstm_783_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_261_layer_call_and_return_conditional_losses_4026398q-./012345!";?8
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
K__inference_sequential_261_layer_call_and_return_conditional_losses_4026825q-./012345!";?8
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
0__inference_sequential_261_layer_call_fn_4025206l-./012345!"C?@
9?6
,?)
lstm_783_input?????????
p 

 
? "???????????
0__inference_sequential_261_layer_call_fn_4025822l-./012345!"C?@
9?6
,?)
lstm_783_input?????????
p

 
? "???????????
0__inference_sequential_261_layer_call_fn_4025944d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_261_layer_call_fn_4025971d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4025917?-./012345!"M?J
? 
C?@
>
lstm_783_input,?)
lstm_783_input?????????"5?2
0
	dense_261#? 
	dense_261?????????