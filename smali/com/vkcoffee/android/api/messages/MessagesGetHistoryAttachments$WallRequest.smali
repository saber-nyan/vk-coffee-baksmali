.class Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MessagesGetHistoryAttachments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 175
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest<TT;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 176
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest<TT;>;"
    const/4 v9, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    .line 180
    :try_start_0
    const-string/jumbo v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v10, "profiles"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 181
    .local v4, "profiles1":Lorg/json/JSONArray;
    const-string/jumbo v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v10, "groups"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 183
    .local v5, "profiles2":Lorg/json/JSONArray;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 184
    .local v2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 185
    .local v3, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 187
    .local v0, "f":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    if-eqz v4, :cond_2

    .line 188
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 189
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 190
    .local v6, "uid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "first_name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "last_name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    sget v8, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_0

    const-string/jumbo v8, "photo_100"

    :goto_1
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v10, "sex"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    const-string/jumbo v8, "photo_50"

    goto :goto_1

    .line 192
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 196
    .end local v1    # "i":I
    .end local v6    # "uid":I
    :cond_2
    if-eqz v5, :cond_4

    .line 197
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 198
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    neg-int v6, v8

    .line 200
    .restart local v6    # "uid":I
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    sget v8, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_3

    const-string/jumbo v8, "photo_100"

    :goto_4
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 201
    :cond_3
    const-string/jumbo v8, "photo_50"

    goto :goto_4

    .line 206
    .end local v1    # "i":I
    .end local v6    # "uid":I
    :cond_4
    new-instance v8, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;

    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;

    invoke-direct {v10, p0, v2, v3, v0}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest$1;-><init>(Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    const-string/jumbo v11, "response"

    .line 211
    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "next_from"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "f":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v2    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v3    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v4    # "profiles1":Lorg/json/JSONArray;
    .end local v5    # "profiles2":Lorg/json/JSONArray;
    :goto_5
    return-object v8

    .line 213
    :catch_0
    move-exception v7

    .line 214
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "vk"

    invoke-static {v8, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    const/4 v8, 0x0

    goto :goto_5
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method
