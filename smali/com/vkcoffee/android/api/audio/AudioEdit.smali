.class public Lcom/vkcoffee/android/api/audio/AudioEdit;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AudioEdit.java"


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
.method public constructor <init>(Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "audio"    # Lcom/vkcoffee/android/AudioFile;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "newArtist"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v0, "audio.edit"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "owner_id"

    iget v1, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/audio/AudioEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "audio_id"

    iget v1, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/audio/AudioEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/audio/AudioEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "artist"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/audio/AudioEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    const-string/jumbo v0, "response"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/audio/AudioEdit;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
