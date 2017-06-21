.class Lcom/vkcoffee/android/Statistic$1;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "Statistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/Statistic;->ok()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/Statistic;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/Statistic;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/Statistic$1;->this$0:Lcom/vkcoffee/android/Statistic;

    .line 49
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

    .prologue
    .line 51
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, "response":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "first_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "name":Ljava/lang/String;
    const-string v7, "response"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "last_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "surname":Ljava/lang/String;
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 58
    .local v3, "params":Lcom/loopj/android/http/RequestParams;
    const-string v7, "vkid"

    invoke-static {}, Lcom/vkcoffee/android/Statistic;->access$0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v7, "name"

    invoke-virtual {v3, v7, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v7, "surname"

    invoke-virtual {v3, v7, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v7, "devicemanufacter"

    sget-object v8, Lcom/vkcoffee/android/Statistic;->deviceManufacter:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v7, "devicebrand"

    sget-object v8, Lcom/vkcoffee/android/Statistic;->deviceBrand:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v7, "devicemodel"

    sget-object v8, Lcom/vkcoffee/android/Statistic;->deviceModel:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v7, "androidversion"

    sget-object v8, Lcom/vkcoffee/android/Statistic;->androidVersion:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v7, "vkversion"

    sget-object v8, Lcom/vkcoffee/android/Statistic;->vkVersion:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v7, "serialD"

    sget-object v8, Lcom/vkcoffee/android/Statistic;->serial:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 70
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "vkid"

    invoke-static {}, Lcom/vkcoffee/android/Statistic;->access$0()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v7, "name"

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v7, "surname"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v7, "type"

    invoke-static {}, Lcom/vkcoffee/android/Statistic;->access$1()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 77
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    sget-object v7, Lcom/vkcoffee/android/Statistic;->url:Ljava/lang/String;

    new-instance v8, Lcom/vkcoffee/android/Statistic$1$1;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/Statistic$1$1;-><init>(Lcom/vkcoffee/android/Statistic$1;)V

    invoke-virtual {v0, v7, v3, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "response":Lorg/json/JSONObject;
    .end local v6    # "surname":Ljava/lang/String;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v7

    goto :goto_0
.end method
