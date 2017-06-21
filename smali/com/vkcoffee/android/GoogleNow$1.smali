.class final Lcom/vkcoffee/android/GoogleNow$1;
.super Ljava/lang/Object;
.source "GoogleNow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/GoogleNow;->updateTokenAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 19
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Updating google now token"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v1, 0x0

    .line 22
    .local v1, "token":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "841415684880-77p77ds9nvkh5mdd4f6polb9t23bobc0.apps.googleusercontent.com"

    invoke-static {v4, v5}, Lcom/google/android/now/NowAuthService;->getAuthCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 48
    :goto_1
    return-void

    .line 23
    :catch_0
    move-exception v2

    .line 24
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    instance-of v4, v2, Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 26
    check-cast v4, Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;

    invoke-virtual {v4}, Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "serverToken":Ljava/lang/String;
    :try_start_1
    new-instance v4, Lcom/vkcoffee/android/api/account/AccountRevokeGoogleNow;

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/api/account/AccountRevokeGoogleNow;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vkcoffee/android/GoogleNow$1$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/GoogleNow$1$1;-><init>(Lcom/vkcoffee/android/GoogleNow$1;)V

    .line 29
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/account/AccountRevokeGoogleNow;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    const-class v5, Lcom/vkcoffee/android/GoogleNow;

    const-string/jumbo v6, "revokeRetryCallback"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lorg/json/JSONObject;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lorg/json/JSONObject;

    aput-object v9, v7, v8

    .line 35
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 37
    :catch_1
    move-exception v3

    .line 38
    .local v3, "xx":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "WTF?!"

    invoke-static {v4, v5, v2}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 45
    .end local v0    # "serverToken":Ljava/lang/String;
    .end local v2    # "x":Ljava/lang/Exception;
    .end local v3    # "xx":Ljava/lang/NoSuchMethodException;
    :cond_1
    new-instance v4, Lcom/vkcoffee/android/api/account/AccountRegisterGoogleNow;

    invoke-direct {v4, v1}, Lcom/vkcoffee/android/api/account/AccountRegisterGoogleNow;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4, v10, v10}, Lcom/vkcoffee/android/api/account/AccountRegisterGoogleNow;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1
.end method
