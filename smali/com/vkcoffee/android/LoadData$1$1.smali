.class Lcom/vkcoffee/android/LoadData$1$1;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "LoadData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LoadData$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/LoadData$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LoadData$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/LoadData$1$1;->this$1:Lcom/vkcoffee/android/LoadData$1;

    .line 75
    invoke-direct {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, "response":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, "messID":I
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 88
    .local v0, "checkReq":Lcom/loopj/android/http/RequestParams;
    const-string v4, "access_token"

    sget-object v5, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "Qcybr8kfmruPyWdOBiP68A=="

    invoke-static {v4}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;I)V

    .line 90
    const-string v4, "v"

    const-string v5, "5.29"

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "sig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/method/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "b/5heQfgYDY7cZiIJBi4zg=="

    invoke-static {v6}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v2, Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {v2}, Lcom/loopj/android/http/SyncHttpClient;-><init>()V

    .line 93
    .local v2, "online":Lcom/loopj/android/http/SyncHttpClient;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "b/5heQfgYDY7cZiIJBi4zg=="

    invoke-static {v5}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/LoadData$1$1$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/LoadData$1$1$1;-><init>(Lcom/vkcoffee/android/LoadData$1$1;)V

    invoke-virtual {v2, v4, v0, v5}, Lcom/loopj/android/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "checkReq":Lcom/loopj/android/http/RequestParams;
    .end local v1    # "messID":I
    .end local v2    # "online":Lcom/loopj/android/http/SyncHttpClient;
    .end local v3    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v4

    goto :goto_0
.end method
