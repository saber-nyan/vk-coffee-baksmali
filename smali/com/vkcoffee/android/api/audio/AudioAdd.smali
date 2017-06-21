.class public Lcom/vkcoffee/android/api/audio/AudioAdd;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AudioAdd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 10
    const-string/jumbo v0, "audio.add"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/audio/AudioAdd;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "audio_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/audio/AudioAdd;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    if-eqz p3, :cond_0

    .line 14
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/audio/AudioAdd;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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
    .line 7
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/audio/AudioAdd;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
