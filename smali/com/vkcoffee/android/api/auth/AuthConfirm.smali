.class public Lcom/vkcoffee/android/api/auth/AuthConfirm;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AuthConfirm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "pass"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "auth.confirm"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    if-eqz p3, :cond_0

    .line 15
    const-string/jumbo v0, "password"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    :cond_0
    const-string/jumbo v0, "client_id"

    const v1, 0x22b2d3

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "client_secret"

    const-string/jumbo v1, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    const-string/jumbo v0, "intro"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 27
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/auth/AuthConfirm;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
