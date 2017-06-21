.class public Lcom/vkcoffee/android/api/audio/AudioGetById;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AudioGetById.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "audios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "audio.getById"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "audios"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/audio/AudioGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/audio/AudioGetById;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const-string/jumbo v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 26
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 27
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 28
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    .local v2, "f":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkcoffee/android/AudioFile;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 30
    .local v1, "af":Lcom/vkcoffee/android/AudioFile;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "af":Lcom/vkcoffee/android/AudioFile;
    .end local v2    # "f":Lorg/json/JSONObject;
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v5

    .line 37
    const/4 v3, 0x0

    :cond_0
    return-object v3
.end method
