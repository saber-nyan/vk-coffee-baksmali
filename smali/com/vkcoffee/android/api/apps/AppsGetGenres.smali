.class public Lcom/vkcoffee/android/api/apps/AppsGetGenres;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AppsGetGenres.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/data/GameGenre;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "apps.getGenres"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/AppsGetGenres;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/apps/AppsGetGenres;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameGenre;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v2, "genres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameGenre;>;"
    const-string/jumbo v4, "response"

    invoke-static {p1, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v0

    .line 25
    .local v0, "array":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 26
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 27
    new-instance v4, Lcom/vkcoffee/android/data/GameGenre;

    iget-object v5, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/data/GameGenre;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "array":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .end local v2    # "genres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameGenre;>;"
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    const/4 v2, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method
