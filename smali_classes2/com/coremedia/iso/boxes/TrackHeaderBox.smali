.class public Lcom/coremedia/iso/boxes/TrackHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackHeaderBox.java"


# static fields
.field private static LOG:Lcom/googlecode/mp4parser/util/Logger; = null

.field public static final TYPE:Ljava/lang/String; = "tkhd"

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

.field private static final ajc$tjp_22:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_23:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_24:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_25:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_26:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_27:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_28:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_29:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_8:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_9:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private alternateGroup:I

.field private creationTime:Ljava/util/Date;

.field private duration:J

.field private height:D

.field private layer:I

.field private matrix:Lcom/googlecode/mp4parser/util/Matrix;

.field private modificationTime:Ljava/util/Date;

.field private trackId:J

.field private volume:F

.field private width:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$preClinit()V

    .line 41
    const-class v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->getLogger(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 58
    const-string/jumbo v0, "tkhd"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:Ljava/util/Date;

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:Ljava/util/Date;

    .line 52
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    .line 60
    return-void
.end method

.method private static ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/mp4parser/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "TrackHeaderBox.java"

    const-class v2, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v0, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getCreationTime"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "java.util.Date"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_0:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getModificationTime"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "java.util.Date"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x42

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_1:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getContent"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "java.nio.ByteBuffer"

    const-string/jumbo v5, "byteBuffer"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x91

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_10:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "toString"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xad

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_11:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setCreationTime"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "java.util.Date"

    const-string/jumbo v5, "creationTime"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc7

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_12:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setModificationTime"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "java.util.Date"

    const-string/jumbo v5, "modificationTime"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xce

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_13:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setTrackId"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "long"

    const-string/jumbo v5, "trackId"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xd6

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_14:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setDuration"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "long"

    const-string/jumbo v5, "duration"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xda

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_15:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setLayer"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "int"

    const-string/jumbo v5, "layer"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe1

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_16:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setAlternateGroup"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "int"

    const-string/jumbo v5, "alternateGroup"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe5

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_17:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setVolume"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "float"

    const-string/jumbo v5, "volume"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe9

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_18:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setMatrix"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "com.googlecode.mp4parser.util.Matrix"

    const-string/jumbo v5, "matrix"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xed

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_19:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getTrackId"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "long"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_2:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setWidth"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "double"

    const-string/jumbo v5, "width"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf1

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_20:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setHeight"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "double"

    const-string/jumbo v5, "height"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf5

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_21:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "isEnabled"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_22:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "isInMovie"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xfe

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_23:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "isInPreview"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x102

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_24:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "isInPoster"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x106

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_25:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setEnabled"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "boolean"

    const-string/jumbo v5, "enabled"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x10a

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_26:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setInMovie"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "boolean"

    const-string/jumbo v5, "inMovie"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x112

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_27:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setInPreview"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "boolean"

    const-string/jumbo v5, "inPreview"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x11a

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_28:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setInPoster"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, "boolean"

    const-string/jumbo v5, "inPoster"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x122

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_29:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getDuration"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "long"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4a

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_3:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getLayer"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_4:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getAlternateGroup"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x52

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_5:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getVolume"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "float"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x56

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_6:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getMatrix"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "com.googlecode.mp4parser.util.Matrix"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_7:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getWidth"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "double"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5e

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_8:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getHeight"

    const-string/jumbo v3, "com.coremedia.iso.boxes.TrackHeaderBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "double"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_9:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 116
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 117
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:Ljava/util/Date;

    .line 118
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:Ljava/util/Date;

    .line 119
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J

    .line 120
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J

    .line 130
    :goto_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 131
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string/jumbo v1, "tkhd duration is not in expected range"

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/util/Logger;->logWarn(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    .line 135
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    .line 136
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->layer:I

    .line 137
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->alternateGroup:I

    .line 138
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint88(Ljava/nio/ByteBuffer;)F

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->volume:F

    .line 139
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    .line 140
    invoke-static {p1}, Lcom/googlecode/mp4parser/util/Matrix;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    .line 141
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->width:D

    .line 142
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->height:D

    .line 143
    return-void

    .line 123
    :cond_1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:Ljava/util/Date;

    .line 124
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:Ljava/util/Date;

    .line 125
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J

    .line 126
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J

    goto :goto_0
.end method

.method public getAlternateGroup()I
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_5:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->alternateGroup:I

    return v0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const-wide/16 v2, 0x0

    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_10:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 147
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 149
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 150
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 151
    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 152
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 160
    :goto_0
    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 161
    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 162
    iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->layer:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 163
    iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->alternateGroup:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 164
    iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->volume:F

    float-to-double v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint88(Ljava/nio/ByteBuffer;D)V

    .line 165
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 167
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/util/Matrix;->getContent(Ljava/nio/ByteBuffer;)V

    .line 169
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->width:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint1616(Ljava/nio/ByteBuffer;D)V

    .line 170
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->height:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint1616(Ljava/nio/ByteBuffer;D)V

    .line 171
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 155
    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 156
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 157
    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 158
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected getContentSize()J
    .locals 4

    .prologue
    .line 103
    const-wide/16 v0, 0x4

    .line 104
    .local v0, "contentSize":J
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 105
    const-wide/16 v2, 0x20

    add-long/2addr v0, v2

    .line 109
    :goto_0
    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    .line 110
    return-wide v0

    .line 107
    :cond_0
    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_0:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_3:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J

    return-wide v0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_9:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->height:D

    return-wide v0
.end method

.method public getLayer()I
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_4:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->layer:I

    return v0
.end method

.method public getMatrix()Lcom/googlecode/mp4parser/util/Matrix;
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_7:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    return-object v0
.end method

.method public getModificationTime()Ljava/util/Date;
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_1:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_2:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_6:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->volume:F

    return v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_8:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->width:D

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_22:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 251
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMovie()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_23:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInPoster()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_25:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 263
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInPreview()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_24:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 259
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlternateGroup(I)V
    .locals 2
    .param p1, "alternateGroup"    # I

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_17:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->alternateGroup:I

    .line 231
    return-void
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "creationTime"    # Ljava/util/Date;

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_12:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 200
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->creationTime:Ljava/util/Date;

    .line 201
    invoke-static {p1}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVersion(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_15:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1, p2}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->duration:J

    .line 220
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 223
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_26:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    goto :goto_0
.end method

.method public setHeight(D)V
    .locals 3
    .param p1, "height"    # D

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_21:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1, p2}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->doubleObject(D)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->height:D

    .line 247
    return-void
.end method

.method public setInMovie(Z)V
    .locals 2
    .param p1, "inMovie"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_27:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 275
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    goto :goto_0
.end method

.method public setInPoster(Z)V
    .locals 2
    .param p1, "inPoster"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_29:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 291
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    goto :goto_0
.end method

.method public setInPreview(Z)V
    .locals 2
    .param p1, "inPreview"    # Z

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_28:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 283
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    goto :goto_0
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "layer"    # I

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_16:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 226
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->layer:I

    .line 227
    return-void
.end method

.method public setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Lcom/googlecode/mp4parser/util/Matrix;

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_19:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 238
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    .line 239
    return-void
.end method

.method public setModificationTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "modificationTime"    # Ljava/util/Date;

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_13:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->modificationTime:Ljava/util/Date;

    .line 208
    invoke-static {p1}, Lcom/googlecode/mp4parser/util/DateHelper;->convert(Ljava/util/Date;)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVersion(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public setTrackId(J)V
    .locals 3
    .param p1, "trackId"    # J

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_14:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1, p2}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->trackId:J

    .line 216
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_18:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->volume:F

    .line 235
    return-void
.end method

.method public setWidth(D)V
    .locals 3
    .param p1, "width"    # D

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_20:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1, p2}, Lorg/mp4parser/aspectj/runtime/internal/Conversions;->doubleObject(D)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 242
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->width:D

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    sget-object v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;->ajc$tjp_11:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 174
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "TrackHeaderBox["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v1, "creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getCreationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v1, "modificationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getModificationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string/jumbo v1, "trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string/jumbo v1, "duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v1, "layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getLayer()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v1, "alternateGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getAlternateGroup()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string/jumbo v1, "volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string/jumbo v1, "matrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackHeaderBox;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string/jumbo v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string/jumbo v1, "height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
