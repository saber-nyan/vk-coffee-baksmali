.class public Lcom/vkcoffee/android/api/audio/AudioGetLyrics;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AudioGetLyrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;",
        ">;"
    }
.end annotation


# instance fields
.field lid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 12
    const-string/jumbo v0, "audio.getLyrics"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "lyrics_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/audio/AudioGetLyrics;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    iput p1, p0, Lcom/vkcoffee/android/api/audio/AudioGetLyrics;->lid:I

    .line 15
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;-><init>()V

    .line 20
    .local v0, "res":Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;
    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;->text:Ljava/lang/String;

    .line 21
    iget v2, p0, Lcom/vkcoffee/android/api/audio/AudioGetLyrics;->lid:I

    iput v2, v0, Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "res":Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;
    :goto_0
    return-object v0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/audio/AudioGetLyrics;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;

    move-result-object v0

    return-object v0
.end method
