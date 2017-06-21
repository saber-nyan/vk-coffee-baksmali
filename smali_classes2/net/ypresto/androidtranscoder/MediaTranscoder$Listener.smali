.class public interface abstract Lnet/ypresto/androidtranscoder/MediaTranscoder$Listener;
.super Ljava/lang/Object;
.source "MediaTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ypresto/androidtranscoder/MediaTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onTranscodeCanceled()V
.end method

.method public abstract onTranscodeCompleted()V
.end method

.method public abstract onTranscodeFailed(Ljava/lang/Exception;)V
.end method

.method public abstract onTranscodeProgress(D)V
.end method
