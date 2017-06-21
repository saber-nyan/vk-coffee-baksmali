.class public Lcom/vkcoffee/android/api/audio/AudioDelete;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AudioDelete.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "audio.delete"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/audio/AudioDelete;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "audio_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/audio/AudioDelete;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    return-void
.end method
