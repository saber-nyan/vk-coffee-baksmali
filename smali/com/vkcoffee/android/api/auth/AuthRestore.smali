.class public Lcom/vkcoffee/android/api/auth/AuthRestore;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AuthRestore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "voice"    # Z

    .prologue
    .line 10
    const-string/jumbo v0, "auth.restore"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/auth/AuthRestore;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "sid"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/auth/AuthRestore;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    if-eqz p3, :cond_0

    .line 14
    const-string/jumbo v0, "voice"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthRestore;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    :cond_0
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/auth/AuthRestore;->parse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 23
    const/4 v0, 0x0

    goto :goto_0
.end method
