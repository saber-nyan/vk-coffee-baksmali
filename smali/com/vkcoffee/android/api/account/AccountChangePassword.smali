.class public Lcom/vkcoffee/android/api/account/AccountChangePassword;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AccountChangePassword.java"


# annotations
.annotation runtime Lcom/vkcoffee/android/api/annotations/ForceHTTPS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldPass"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string/jumbo v0, "account.changePassword"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "old_password"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    const-string/jumbo v0, "new_password"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/account/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "pass"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string/jumbo v0, "account.changePassword"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "restore_sid"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "change_password_hash"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/account/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/account/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    :try_start_0
    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 28
    new-instance v0, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;-><init>()V

    .line 29
    .local v0, "res":Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;
    const-string/jumbo v2, "token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;->token:Ljava/lang/String;

    .line 30
    const-string/jumbo v2, "secret"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;->secret:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "res":Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v0, 0x0

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
    .line 9
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/account/AccountChangePassword;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/account/AccountChangePassword$Result;

    move-result-object v0

    return-object v0
.end method
