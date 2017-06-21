.class public abstract Lcom/vkcoffee/android/media/audio/MediaBuffer;
.super Ljava/lang/Object;
.source "MediaBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract getMaxBufferedPosition()I
.end method

.method public abstract getReadOffset()I
.end method

.method public abstract getWriteOffset()I
.end method

.method public abstract isEndOfStream()Z
.end method

.method public abstract isOffsetDownloaded(I)Z
.end method

.method public abstract read([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release(Z)V
.end method

.method public abstract setReadOffset(I)V
.end method

.method public abstract setWriteOffset(I)V
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
