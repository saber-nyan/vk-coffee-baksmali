.class public Lcom/vkcoffee/android/api/audio/AudioGet;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "AudioGet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 9
    const-string/jumbo v0, "audio.get"

    const-class v1, Lcom/vkcoffee/android/AudioFile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/audio/AudioGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    return-void
.end method
