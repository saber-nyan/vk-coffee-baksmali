.class public Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
.super Ljava/lang/Object;
.source "MediaBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/audio/MediaBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;",
        ">;"
    }
.end annotation


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;)V
    .locals 1
    .param p1, "other"    # Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget v0, p1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    iput v0, p0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    .line 40
    iget v0, p1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iput v0, p0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    .line 41
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;)I
    .locals 2
    .param p1, "byteRange"    # Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .prologue
    .line 53
    iget v0, p0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    iget v1, p1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->compareTo(Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;)I

    move-result v0

    return v0
.end method

.method public contains(Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;)Z
    .locals 2
    .param p1, "other"    # Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .prologue
    .line 44
    iget v0, p1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    iget v1, p0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    iget v1, p0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
