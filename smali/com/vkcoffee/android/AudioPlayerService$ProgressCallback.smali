.class public interface abstract Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressCallback"
.end annotation


# virtual methods
.method public abstract onBufferProgressChanged(III)V
.end method

.method public abstract onPlayProgressChanged(IIII)V
.end method
