.class public interface abstract Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/PlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStateListener"
.end annotation


# virtual methods
.method public abstract onEndOfBuffer()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onPlaybackCompleted()V
.end method

.method public abstract onPlaybackResumed()V
.end method

.method public abstract onPlayerReady(II)V
.end method

.method public abstract onUpdateBuffered(I)V
.end method

.method public abstract onUpdatePlaybackPosition(I)V
.end method
