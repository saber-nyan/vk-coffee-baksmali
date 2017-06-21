.class public Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
.super Ljava/lang/Object;
.source "SampleFlagsSampleExtension.java"

# interfaces
.implements Lcom/mp4parser/streaming/SampleExtension;


# static fields
.field public static pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isLeading:B

.field private sampleDegradationPriority:I

.field private sampleDependsOn:B

.field private sampleHasRedundancy:B

.field private sampleIsDependedOn:B

.field private sampleIsNonSyncSample:Z

.field private samplePaddingValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->pool:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(BBBBBZI)Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    .locals 6
    .param p0, "isLeading"    # B
    .param p1, "sampleDependsOn"    # B
    .param p2, "sampleIsDependedOn"    # B
    .param p3, "sampleHasRedundancy"    # B
    .param p4, "samplePaddingValue"    # B
    .param p5, "sampleIsNonSyncSample"    # Z
    .param p6, "sampleDegradationPriority"    # I

    .prologue
    .line 20
    shl-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p0

    shl-int/lit8 v4, p2, 0x4

    add-int/2addr v1, v4

    shl-int/lit8 v4, p3, 0x6

    add-int/2addr v1, v4

    int-to-long v2, v1

    .line 21
    .local v2, "key":J
    shl-int/lit8 v1, p4, 0x8

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 22
    shl-int/lit8 v1, p6, 0xb

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 23
    if-eqz p5, :cond_1

    const/4 v1, 0x1

    :goto_0
    shl-int/lit8 v1, v1, 0x1b

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 25
    sget-object v1, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->pool:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    .line 26
    .local v0, "c":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    .end local v0    # "c":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    invoke-direct {v0}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;-><init>()V

    .line 28
    .restart local v0    # "c":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    iput-byte p0, v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->isLeading:B

    .line 29
    iput-byte p1, v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleDependsOn:B

    .line 30
    iput-byte p2, v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleIsDependedOn:B

    .line 31
    iput-byte p3, v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleHasRedundancy:B

    .line 32
    iput-byte p4, v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->samplePaddingValue:B

    .line 33
    iput-boolean p5, v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleIsNonSyncSample:Z

    .line 34
    iput p6, v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleDegradationPriority:I

    .line 35
    sget-object v1, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->pool:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    return-object v0

    .line 23
    .end local v0    # "c":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIsLeading()B
    .locals 1

    .prologue
    .line 42
    iget-byte v0, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->isLeading:B

    return v0
.end method

.method public getSampleDegradationPriority()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleDegradationPriority:I

    return v0
.end method

.method public getSampleDependsOn()B
    .locals 1

    .prologue
    .line 50
    iget-byte v0, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleDependsOn:B

    return v0
.end method

.method public getSampleHasRedundancy()B
    .locals 1

    .prologue
    .line 66
    iget-byte v0, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleHasRedundancy:B

    return v0
.end method

.method public getSampleIsDependedOn()B
    .locals 1

    .prologue
    .line 58
    iget-byte v0, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleIsDependedOn:B

    return v0
.end method

.method public getSamplePaddingValue()B
    .locals 1

    .prologue
    .line 74
    iget-byte v0, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->samplePaddingValue:B

    return v0
.end method

.method public isSampleIsNonSyncSample()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleIsNonSyncSample:Z

    return v0
.end method

.method public isSyncSample()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleIsNonSyncSample:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsLeading(B)V
    .locals 0
    .param p1, "isLeading"    # B

    .prologue
    .line 46
    iput-byte p1, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->isLeading:B

    .line 47
    return-void
.end method

.method public setSampleDegradationPriority(I)V
    .locals 0
    .param p1, "sampleDegradationPriority"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleDegradationPriority:I

    .line 99
    return-void
.end method

.method public setSampleDependsOn(B)V
    .locals 0
    .param p1, "sampleDependsOn"    # B

    .prologue
    .line 54
    iput-byte p1, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleDependsOn:B

    .line 55
    return-void
.end method

.method public setSampleHasRedundancy(B)V
    .locals 0
    .param p1, "sampleHasRedundancy"    # B

    .prologue
    .line 70
    iput-byte p1, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleHasRedundancy:B

    .line 71
    return-void
.end method

.method public setSampleIsDependedOn(B)V
    .locals 0
    .param p1, "sampleIsDependedOn"    # B

    .prologue
    .line 62
    iput-byte p1, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleIsDependedOn:B

    .line 63
    return-void
.end method

.method public setSampleIsNonSyncSample(Z)V
    .locals 0
    .param p1, "sampleIsNonSyncSample"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->sampleIsNonSyncSample:Z

    .line 91
    return-void
.end method

.method public setSamplePaddingValue(B)V
    .locals 0
    .param p1, "samplePaddingValue"    # B

    .prologue
    .line 78
    iput-byte p1, p0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->samplePaddingValue:B

    .line 79
    return-void
.end method
