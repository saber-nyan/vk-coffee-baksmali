.class public Lcom/vkcoffee/android/api/messages/MessagesSearch;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MessagesSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 22
    const-string/jumbo v0, "messages.search"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/messages/MessagesSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v1, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/api/messages/MessagesSearch$1;

    invoke-direct {v5, p0, v0}, Lcom/vkcoffee/android/api/messages/MessagesSearch$1;-><init>(Lcom/vkcoffee/android/api/messages/MessagesSearch;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v5}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V

    .line 56
    .local v1, "msgs":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Message;>;"
    new-instance v2, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;-><init>()V

    .line 57
    .local v2, "result":Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;
    iput-object v1, v2, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    .line 58
    iput-object v0, v2, Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;->chats:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v1    # "msgs":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Message;>;"
    .end local v2    # "result":Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    const/4 v2, 0x0

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
    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSearch;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;

    move-result-object v0

    return-object v0
.end method
