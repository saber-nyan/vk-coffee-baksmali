.class public Lcom/vkcoffee/android/api/users/GetOnlines;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GetOnlines.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "execute.getOnlines"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "user_ids"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/users/GetOnlines;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Landroid/util/SparseArray;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .local v4, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const-string/jumbo v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 26
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 27
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 28
    .local v1, "aa":Lorg/json/JSONObject;
    const-string/jumbo v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "aa":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 34
    const/4 v4, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/users/GetOnlines;->parse(Lorg/json/JSONObject;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
