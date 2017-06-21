.class public interface abstract Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerCallback"
.end annotation


# virtual methods
.method public abstract displayInfo(Lcom/vkcoffee/android/AudioFile;)V
.end method

.method public abstract setBuffered(I)V
.end method

.method public abstract setNumber(II)V
.end method

.method public abstract setPlaying(Z)V
.end method

.method public abstract setPosition(IJ)V
.end method
