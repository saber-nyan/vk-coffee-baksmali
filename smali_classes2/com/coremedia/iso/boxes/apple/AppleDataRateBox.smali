.class public Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "AppleDataRateBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "rmdr"

.field private static final ajc$tjp_0:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private dataRate:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "rmdr"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private static ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/mp4parser/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "AppleDataRateBox.java"

    const-class v2, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;

    invoke-direct {v0, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getDataRate"

    const-string/jumbo v3, "com.coremedia.iso.boxes.apple.AppleDataRateBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "long"

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x35

    invoke-virtual {v0, v8, v1, v2}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/Signature;I)Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;->ajc$tjp_0:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 43
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;->dataRate:J

    .line 44
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 49
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;->dataRate:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 50
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public getDataRate()J
    .locals 2

    .prologue
    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;->ajc$tjp_0:Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/runtime/reflect/Factory;->makeJP(Lorg/mp4parser/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/mp4parser/aspectj/lang/JoinPoint;)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDataRateBox;->dataRate:J

    return-wide v0
.end method
