.class public Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "MessagesGetHistoryAttachments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListAPIRequestImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl<TT;>;"
    .local p2, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected getNextFrom(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl<TT;>;"
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "next_from"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 9
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl<TT;>;"
    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->itemType:Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 93
    const-class v6, Lcom/vkcoffee/android/api/VideoFile;

    iget-object v7, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    new-instance v1, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->getArrayObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->getNextFrom(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/String;)V

    .line 95
    .local v1, "list":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl<TT;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 96
    .local v3, "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "profiles"

    const/4 v8, 0x0

    invoke-static {v6, v3, v7, v8}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;Z)V

    .line 97
    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "groups"

    const/4 v8, 0x1

    invoke-static {v6, v3, v7, v8}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;->parseProfiles(Lorg/json/JSONObject;Landroid/util/SparseArray;Ljava/lang/String;Z)V

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 99
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/api/VideoFile;

    .line 100
    .local v4, "videoFile":Lcom/vkcoffee/android/api/VideoFile;
    iget v6, v4, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 101
    .local v2, "profile":Lcom/vkcoffee/android/UserProfile;
    if-eqz v2, :cond_0

    .line 102
    iget-object v6, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v6, v4, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 103
    iget-object v6, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v6, v4, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    .end local v1    # "list":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl<TT;>;"
    .end local v2    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v3    # "profiles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v4    # "videoFile":Lcom/vkcoffee/android/api/VideoFile;
    :cond_1
    new-instance v1, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->getArrayObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->getNextFrom(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/String;)V

    .line 117
    :cond_2
    :goto_1
    return-object v1

    .line 110
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->parser:Lcom/vkcoffee/android/data/Parser;

    if-eqz v6, :cond_4

    .line 111
    new-instance v1, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->getArrayObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->parser:Lcom/vkcoffee/android/data/Parser;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->getNextFrom(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 115
    :catch_0
    move-exception v5

    .line 116
    .local v5, "x":Ljava/lang/Exception;
    const-string/jumbo v6, "vk"

    const-string/jumbo v7, "Error parsing response"

    invoke-static {v6, v7, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const/4 v1, 0x0

    goto :goto_1

    .line 113
    .end local v5    # "x":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Can\'t parse because there\'s no parser"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl<TT;>;"
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$ListAPIRequestImpl;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method
