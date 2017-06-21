.class public Lcom/vkcoffee/android/api/ListAPIRequest;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "ListAPIRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<TI;>;>;"
    }
.end annotation


# instance fields
.field protected itemType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TI;>;"
        }
    .end annotation
.end field

.field protected parser:Lcom/vkcoffee/android/data/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/Parser",
            "<TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 29
    .local p0, "this":Lcom/vkcoffee/android/api/ListAPIRequest;, "Lcom/vkcoffee/android/api/ListAPIRequest<TI;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vkcoffee/android/data/Parser;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/data/Parser",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/vkcoffee/android/api/ListAPIRequest;, "Lcom/vkcoffee/android/api/ListAPIRequest<TI;>;"
    .local p2, "parser":Lcom/vkcoffee/android/data/Parser;, "Lcom/vkcoffee/android/data/Parser<TI;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lcom/vkcoffee/android/api/ListAPIRequest;->parser:Lcom/vkcoffee/android/data/Parser;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/vkcoffee/android/api/ListAPIRequest;, "Lcom/vkcoffee/android/api/ListAPIRequest<TI;>;"
    .local p2, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<TI;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/vkcoffee/android/api/ListAPIRequest;->itemType:Ljava/lang/Class;

    .line 26
    return-void
.end method


# virtual methods
.method protected getArrayObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/vkcoffee/android/api/ListAPIRequest;, "Lcom/vkcoffee/android/api/ListAPIRequest<TI;>;"
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 4
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<TI;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/vkcoffee/android/api/ListAPIRequest;, "Lcom/vkcoffee/android/api/ListAPIRequest<TI;>;"
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/api/ListAPIRequest;->itemType:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/ListAPIRequest;->getArrayObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/api/ListAPIRequest;->itemType:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 49
    :goto_0
    return-object v1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/api/ListAPIRequest;->parser:Lcom/vkcoffee/android/data/Parser;

    if-eqz v1, :cond_1

    .line 43
    new-instance v1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/ListAPIRequest;->getArrayObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/api/ListAPIRequest;->parser:Lcom/vkcoffee/android/data/Parser;

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error parsing response"

    invoke-static {v1, v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    const/4 v1, 0x0

    goto :goto_0

    .line 45
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t parse because there\'s no parser"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
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
    .local p0, "this":Lcom/vkcoffee/android/api/ListAPIRequest;, "Lcom/vkcoffee/android/api/ListAPIRequest<TI;>;"
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/ListAPIRequest;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method

.method protected setParser(Lcom/vkcoffee/android/data/Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/Parser",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/vkcoffee/android/api/ListAPIRequest;, "Lcom/vkcoffee/android/api/ListAPIRequest<TI;>;"
    .local p1, "p":Lcom/vkcoffee/android/data/Parser;, "Lcom/vkcoffee/android/data/Parser<TI;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/api/ListAPIRequest;->itemType:Ljava/lang/Class;

    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/api/ListAPIRequest;->parser:Lcom/vkcoffee/android/data/Parser;

    .line 35
    return-void
.end method
