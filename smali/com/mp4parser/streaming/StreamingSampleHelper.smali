.class public Lcom/mp4parser/streaming/StreamingSampleHelper;
.super Ljava/lang/Object;
.source "StreamingSampleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSampleExtension(Lcom/mp4parser/streaming/StreamingSample;Ljava/lang/Class;)Lcom/mp4parser/streaming/SampleExtension;
    .locals 5
    .param p0, "streamingSample"    # Lcom/mp4parser/streaming/StreamingSample;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Lcom/mp4parser/streaming/SampleExtension;",
            ">(",
            "Lcom/mp4parser/streaming/StreamingSample;",
            "Ljava/lang/Class",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TB;>;"
    invoke-interface {p0}, Lcom/mp4parser/streaming/StreamingSample;->getExtensions()[Lcom/mp4parser/streaming/SampleExtension;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 20
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 15
    :cond_1
    aget-object v0, v2, v1

    .line 16
    .local v0, "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static hasSampleExtension(Lcom/mp4parser/streaming/StreamingSample;Ljava/lang/Class;)Z
    .locals 6
    .param p0, "streamingSample"    # Lcom/mp4parser/streaming/StreamingSample;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mp4parser/streaming/StreamingSample;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mp4parser/streaming/SampleExtension;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mp4parser/streaming/SampleExtension;>;"
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0}, Lcom/mp4parser/streaming/StreamingSample;->getExtensions()[Lcom/mp4parser/streaming/SampleExtension;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 11
    :goto_1
    return v1

    .line 6
    :cond_0
    aget-object v0, v3, v2

    .line 7
    .local v0, "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    const/4 v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
