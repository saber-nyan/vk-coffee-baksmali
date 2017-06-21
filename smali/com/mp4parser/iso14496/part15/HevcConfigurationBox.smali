.class public Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "HevcConfigurationBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "hvcC"

.field private static final ajc$tjp_0:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_10:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_11:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_12:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_13:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_14:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_15:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_16:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_17:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_18:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_19:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_20:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_21:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_8:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_9:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "hvcC"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-direct {v0}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    .line 21
    return-void
.end method

.method private static ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/mp4parser/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "HevcConfigurationBox.java"

    const-class v2, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;

    invoke-direct {v0, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getHevcDecoderConfigurationRecord"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_0:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setHevcDecoderConfigurationRecord"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord"

    const-string/jumbo v5, "hevcDecoderConfigurationRecord"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_1:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getGeneral_level_idc"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_10:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getMin_spatial_segmentation_idc"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5e

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_11:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getParallelismType"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_12:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getChromaFormat"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_13:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getBitDepthLumaMinus8"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_14:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getBitDepthChromaMinus8"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_15:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getAvgFrameRate"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x72

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_16:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getNumTemporalLayers"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x76

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_17:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getLengthSizeMinusOne"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7a

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_18:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "isTemporalIdNested"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_19:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "equals"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, "java.lang.Object"

    const-string/jumbo v5, "o"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_2:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getConstantFrameRate"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_20:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getArrays"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "java.util.List"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x86

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_21:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "hashCode"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_3:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getConfigurationVersion"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x41

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_4:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getGeneral_profile_space"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_5:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "isGeneral_tier_flag"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x49

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_6:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getGeneral_profile_idc"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_7:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getGeneral_profile_compatibility_flags"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "long"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x52

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_8:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getGeneral_constraint_indicator_flags"

    const-string/jumbo v3, "com.mp4parser.iso14496.part15.HevcConfigurationBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "long"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x56

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_9:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-virtual {v0, p1}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parse(Ljava/nio/ByteBuffer;)V

    .line 36
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_2:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v3, p0, p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v3

    .line 48
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;

    .line 53
    .local v0, "that":Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;
    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-object v4, v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-virtual {v3, v4}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 54
    goto :goto_0

    .line 53
    :cond_4
    iget-object v3, v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getArrays()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_21:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-object v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->arrays:Ljava/util/List;

    return-object v0
.end method

.method public getAvgFrameRate()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_16:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->avgFrameRate:I

    return v0
.end method

.method public getBitDepthChromaMinus8()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_15:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    return v0
.end method

.method public getBitDepthLumaMinus8()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_14:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    return v0
.end method

.method public getChromaFormat()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_13:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->chromaFormat:I

    return v0
.end method

.method public getConfigurationVersion()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_4:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->configurationVersion:I

    return v0
.end method

.method public getConstantFrameRate()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_20:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->constantFrameRate:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-virtual {v0, p1}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->write(Ljava/nio/ByteBuffer;)V

    .line 31
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->getSize()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGeneral_constraint_indicator_flags()J
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_9:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-wide v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_constraint_indicator_flags:J

    return-wide v0
.end method

.method public getGeneral_level_idc()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_10:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_level_idc:I

    return v0
.end method

.method public getGeneral_profile_compatibility_flags()J
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_8:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-wide v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_compatibility_flags:J

    return-wide v0
.end method

.method public getGeneral_profile_idc()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_7:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_idc:I

    return v0
.end method

.method public getGeneral_profile_space()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_5:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_profile_space:I

    return v0
.end method

.method public getHevcDecoderConfigurationRecord()Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_0:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    return-object v0
.end method

.method public getLengthSizeMinusOne()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_18:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->lengthSizeMinusOne:I

    return v0
.end method

.method public getMin_spatial_segmentation_idc()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_11:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->min_spatial_segmentation_idc:I

    return v0
.end method

.method public getNumTemporalLayers()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_17:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->numTemporalLayers:I

    return v0
.end method

.method public getParallelismType()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_12:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->parallelismType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_3:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGeneral_tier_flag()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_6:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-boolean v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->general_tier_flag:Z

    return v0
.end method

.method public isTemporalIdNested()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_19:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    iget-boolean v0, v0, Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;->temporalIdNested:Z

    return v0
.end method

.method public setHevcDecoderConfigurationRecord(Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;)V
    .locals 2
    .param p1, "hevcDecoderConfigurationRecord"    # Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    .prologue
    sget-object v0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->ajc$tjp_1:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput-object p1, p0, Lcom/mp4parser/iso14496/part15/HevcConfigurationBox;->hevcDecoderConfigurationRecord:Lcom/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord;

    .line 44
    return-void
.end method
