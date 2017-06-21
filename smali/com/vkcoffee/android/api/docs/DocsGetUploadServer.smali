.class public Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "DocsGetUploadServer.java"


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
.method public constructor <init>(IZZ)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "wall"    # Z
    .param p3, "graffiti"    # Z

    .prologue
    .line 13
    if-eqz p2, :cond_2

    const-string/jumbo v0, "docs.getWallUploadServer"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    if-gez p1, :cond_0

    .line 15
    const-string/jumbo v0, "group_id"

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    :cond_0
    if-eqz p3, :cond_1

    .line 18
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "graffiti"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    :cond_1
    return-void

    .line 13
    :cond_2
    const-string/jumbo v0, "docs.getUploadServer"

    goto :goto_0
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
    .line 10
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;->parse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "upload_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
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
