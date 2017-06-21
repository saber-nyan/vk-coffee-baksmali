.class public Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AuthExternalCheckAuth.java"


# annotations
.annotation runtime Lcom/vkcoffee/android/api/annotations/ForceHTTPS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string/jumbo v0, "auth.externalCheckAuth"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "sid"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth;->callback:Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;

    if-nez v0, :cond_0

    .line 54
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 43
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 44
    check-cast v7, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .line 45
    .local v7, "er":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;
    iget-object v0, p0, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth;->callback:Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, v7, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v7    # "er":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth;->callback:Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;

    invoke-interface {v0}, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;->tryLater()V

    goto :goto_0

    .line 50
    :cond_2
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v8, p1

    check-cast v8, [Ljava/lang/Object;

    .line 51
    .local v8, "r":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth;->callback:Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v8, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v8, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, v8, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v8, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v6, v8, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;->success(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 23
    :try_start_0
    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    .local v0, "r":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 25
    const-string/jumbo v2, ""

    .line 31
    .end local v0    # "r":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 27
    .restart local v0    # "r":Lorg/json/JSONObject;
    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "first_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "last_name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "email"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "fb_id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "photo"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "need_validate"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    .end local v0    # "r":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 29
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "x":Ljava/lang/Exception;
    .restart local v0    # "r":Lorg/json/JSONObject;
    :cond_1
    move v3, v4

    .line 27
    goto :goto_1
.end method

.method public setCallback(Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth;->callback:Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;

    .line 36
    return-object p0
.end method
