.class public Lcom/vkcoffee/android/api/execute/FindCityByName;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "FindCityByName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/execute/FindCityByName$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/execute/FindCityByName$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string/jumbo v0, "execute.findCity"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "country"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/execute/FindCityByName;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "city"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/execute/FindCityByName;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/execute/FindCityByName$Result;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    :try_start_0
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    .local v0, "r":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkcoffee/android/api/execute/FindCityByName$Result;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/execute/FindCityByName$Result;-><init>()V

    .line 23
    .local v1, "res":Lcom/vkcoffee/android/api/execute/FindCityByName$Result;
    if-eqz v0, :cond_0

    .line 24
    const-string/jumbo v3, "city"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/vkcoffee/android/api/execute/FindCityByName$Result;->cityID:I

    .line 25
    const-string/jumbo v3, "country"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/vkcoffee/android/api/execute/FindCityByName$Result;->countryID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v0    # "r":Lorg/json/JSONObject;
    .end local v1    # "res":Lcom/vkcoffee/android/api/execute/FindCityByName$Result;
    :cond_0
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "Vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const/4 v1, 0x0

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
    .line 11
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/execute/FindCityByName;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/execute/FindCityByName$Result;

    move-result-object v0

    return-object v0
.end method
