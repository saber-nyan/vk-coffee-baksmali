.class public Lcom/vkcoffee/android/api/messages/CoffeGetImp;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "CoffeGetImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/messages/CoffeGetImp$Result;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "var3"    # I

    .prologue
    .line 17
    const-string v0, "messages.get"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "filters"

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/messages/CoffeGetImp;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "photo_sizes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string v0, "fields"

    const-string v1, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/messages/CoffeGetImp;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "var1"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    :try_start_0
    const-string v4, "response"

    invoke-static {p1, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/api/messages/CoffeGetImp;->callback:Lcom/vkcoffee/android/api/Callback;

    if-eqz v4, :cond_0

    .line 30
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    aput-object v5, v3, v4

    .line 51
    :goto_0
    return-object v3

    .line 34
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/data/VKList;

    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/api/messages/CoffeGetImp$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/api/messages/CoffeGetImp$1;-><init>(Lcom/vkcoffee/android/api/messages/CoffeGetImp;)V

    invoke-direct {v1, v4, v5}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V

    .line 39
    .local v1, "var3":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Message;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 40
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;-><init>()V

    .line 41
    .local v0, "var2":Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;
    iput-object v1, v0, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    .line 42
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "skipped"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->offset:I

    .line 43
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "unread"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->unread:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    move-object v3, v0

    .line 51
    .local v3, "var5":Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;
    goto :goto_0

    .line 44
    .end local v0    # "var2":Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;
    .end local v1    # "var3":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/Message;>;"
    .end local v3    # "var5":Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;
    :catch_0
    move-exception v2

    .line 45
    .local v2, "var4":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "var5":Ljava/lang/Object;
    goto :goto_0
.end method
