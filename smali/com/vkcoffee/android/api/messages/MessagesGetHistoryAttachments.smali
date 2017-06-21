.class public Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;
.super Ljava/lang/Object;
.source "MessagesGetHistoryAttachments.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;,
        Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;,
        Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;,
        Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method public static create(Ljava/lang/Class;ILjava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 7
    .param p1, "peerId"    # I
    .param p2, "startFrom"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<",
            "Lcom/vkcoffee/android/data/VKList",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 44
    .local v2, "type":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    invoke-static {}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;->values()[Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 45
    .local v1, "t":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    iget-object v6, v1, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;->aClass:Ljava/lang/Class;

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 46
    move-object v2, v1

    .line 52
    .end local v1    # "t":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    :cond_0
    sget-object v3, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;->wall:Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;

    if-ne v2, v3, :cond_2

    .line 53
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;

    const-string/jumbo v3, "messages.getHistoryAttachments"

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$WallRequest;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "request":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lcom/vkcoffee/android/data/VKList<TT;>;>;"
    const-string/jumbo v3, "fields"

    const-string/jumbo v4, "sex,photo_100,photo_50"

    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 60
    :goto_1
    if-nez v2, :cond_3

    .line 61
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is unsupport"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    .end local v0    # "request":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lcom/vkcoffee/android/data/VKList<TT;>;>;"
    .restart local v1    # "t":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "t":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;

    const-string/jumbo v3, "messages.getHistoryAttachments"

    invoke-direct {v0, v3, p0}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    .restart local v0    # "request":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lcom/vkcoffee/android/data/VKList<TT;>;>;"
    const-string/jumbo v3, "fields"

    const-string/jumbo v4, "sex,photo_100,photo_50"

    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 63
    :cond_3
    const-string/jumbo v3, "peer_id"

    invoke-virtual {v0, v3, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string/jumbo v4, "count"

    invoke-virtual {v3, v4, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string/jumbo v4, "photo_sizes"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string/jumbo v4, "media_type"

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 65
    const-string/jumbo v3, "start_from"

    invoke-virtual {v0, v3, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 67
    :cond_4
    return-object v0
.end method

.method public static nextFrom(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "vkList"    # Ljava/util/List;

    .prologue
    .line 72
    instance-of v0, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;

    .end local p0    # "vkList":Ljava/util/List;
    iget-object v0, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;->nextFrom:Ljava/lang/String;

    .line 75
    :goto_0
    return-object v0

    .restart local p0    # "vkList":Ljava/util/List;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/SparseArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "isGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 128
    .local v2, "profiles1":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 129
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 130
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    if-eqz p3, :cond_0

    .line 131
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    neg-int v3, v3

    iput v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 133
    :cond_0
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {p1, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v2    # "profiles1":Lorg/json/JSONArray;
    :cond_1
    return-void
.end method
