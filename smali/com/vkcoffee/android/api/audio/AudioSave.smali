.class public Lcom/vkcoffee/android/api/audio/AudioSave;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AudioSave.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "audio"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "server"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string/jumbo v0, "audio.save"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/audio/AudioSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "hash"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/audio/AudioSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "server"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/audio/AudioSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/AudioFile;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/AudioFile;

    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/AudioFile;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "Vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const/4 v1, 0x0

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
    .line 12
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/audio/AudioSave;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    return-object v0
.end method
