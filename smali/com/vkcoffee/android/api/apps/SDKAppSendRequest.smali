.class public Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "SDKAppSendRequest.java"


# annotations
.annotation runtime Lcom/vkcoffee/android/api/annotations/ForceHTTPS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "user_id"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "app_id"    # I

    .prologue
    .line 15
    const-string/jumbo v0, "apps.sendRequest"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "invite"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    const-string/jumbo v0, "attachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 1
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/apps/SDKAppSendRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
