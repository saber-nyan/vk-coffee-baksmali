.class public Lcom/vkcoffee/android/api/docs/DocsSave;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "DocsSave.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/Document;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string/jumbo v0, "docs.save"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "file"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/docs/DocsSave;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/Document;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 23
    .local v0, "a":Lorg/json/JSONArray;
    new-instance v2, Lcom/vkcoffee/android/api/Document;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/api/Document;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0    # "a":Lorg/json/JSONArray;
    :goto_0
    return-object v2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "Vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const/4 v2, 0x0

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
    .line 13
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/docs/DocsSave;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/Document;

    move-result-object v0

    return-object v0
.end method
