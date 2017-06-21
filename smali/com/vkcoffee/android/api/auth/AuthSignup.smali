.class public Lcom/vkcoffee/android/api/auth/AuthSignup;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AuthSignup.java"


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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "firstName"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;
    .param p3, "gender"    # I
    .param p4, "phone"    # Ljava/lang/String;
    .param p5, "sid"    # Ljava/lang/String;
    .param p6, "voice"    # Z

    .prologue
    .line 10
    const-string/jumbo v0, "auth.signup"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "first_name"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/auth/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "last_name"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/auth/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "sex"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/auth/AuthSignup;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/auth/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "client_id"

    const v1, 0x22b2d3

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthSignup;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "client_secret"

    const-string/jumbo v1, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    if-eqz p6, :cond_0

    .line 19
    const-string/jumbo v0, "voice"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/auth/AuthSignup;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    :cond_0
    if-eqz p5, :cond_1

    .line 22
    const-string/jumbo v0, "sid"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/auth/AuthSignup;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    :cond_1
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/auth/AuthSignup;->parse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method
