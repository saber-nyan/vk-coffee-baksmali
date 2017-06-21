.class Lcom/vkcoffee/android/LongPollService$1;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->updateServerInfo()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LongPollService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$1;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 331
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 290
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LongPollService$1;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 293
    :try_start_0
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "s"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 294
    .local v5, "o":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$1;->this$0:Lcom/vkcoffee/android/LongPollService;

    const-string/jumbo v10, "ts"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/LongPollService;->access$002(Lcom/vkcoffee/android/LongPollService;I)I

    .line 295
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$1;->this$0:Lcom/vkcoffee/android/LongPollService;

    const-string/jumbo v10, "key"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/LongPollService;->access$102(Lcom/vkcoffee/android/LongPollService;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$1;->this$0:Lcom/vkcoffee/android/LongPollService;

    const-string/jumbo v10, "server"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/LongPollService;->access$202(Lcom/vkcoffee/android/LongPollService;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$1;->this$0:Lcom/vkcoffee/android/LongPollService;

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string/jumbo v11, "useHTTPS"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/LongPollService;->access$302(Lcom/vkcoffee/android/LongPollService;Z)Z

    .line 301
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "c"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 303
    .local v6, "o1":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/vkcoffee/android/LongPollService;->parseCountersInfo(Lorg/json/JSONObject;)V

    .line 304
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$1;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/LongPollService;->setNumUnread(I)V

    .line 306
    sget v9, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    invoke-static {v9}, Lcom/vkcoffee/android/data/Friends;->notifyRequestsChanged(I)V

    .line 307
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "fo"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 308
    .local v2, "fo":Lorg/json/JSONObject;
    const-string/jumbo v9, "online"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 309
    .local v0, "fdo":Lorg/json/JSONArray;
    const-string/jumbo v9, "online_mobile"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 316
    .local v1, "fmo":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v4, "mobileOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 318
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 321
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 323
    :cond_1
    invoke-static {v7, v4}, Lcom/vkcoffee/android/data/Friends;->setOnlines(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "fdo":Lorg/json/JSONArray;
    .end local v1    # "fmo":Lorg/json/JSONArray;
    .end local v2    # "fo":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "mobileOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "o":Lorg/json/JSONObject;
    .end local v6    # "o1":Lorg/json/JSONObject;
    .end local v7    # "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    return-void

    .line 324
    :catch_0
    move-exception v8

    .line 325
    .local v8, "x":Ljava/lang/Exception;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
