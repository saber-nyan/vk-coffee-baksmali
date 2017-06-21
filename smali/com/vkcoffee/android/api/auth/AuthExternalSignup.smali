.class public Lcom/vkcoffee/android/api/auth/AuthExternalSignup;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AuthExternalSignup.java"


# annotations
.annotation runtime Lcom/vkcoffee/android/api/annotations/ForceHTTPS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string/jumbo v0, "auth.externalSignUp"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "service"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/auth/AuthExternalSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "token"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/auth/AuthExternalSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/auth/AuthExternalSignup;->parse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method
