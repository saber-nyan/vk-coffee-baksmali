.class public Lcom/vkcoffee/android/api/docs/DocsGetTypes;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "DocsGetTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;,
        Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "oid"    # I

    .prologue
    .line 19
    const-string/jumbo v0, "execute.getDocTypes"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/docs/DocsGetTypes;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 25
    :try_start_0
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 26
    .local v2, "response":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;

    invoke-direct {v3}, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;-><init>()V

    .line 27
    .local v3, "result":Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;
    const-string/jumbo v7, "docs"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 28
    new-instance v7, Lcom/vkcoffee/android/data/VKList;

    const-string/jumbo v8, "docs"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-class v9, Lcom/vkcoffee/android/api/Document;

    invoke-direct {v7, v8, v9}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    iput-object v7, v3, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;->docs:Lcom/vkcoffee/android/data/VKList;

    .line 32
    :goto_0
    const-string/jumbo v7, "can_add"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    :goto_1
    iput-boolean v5, v3, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;->canAdd:Z

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;->docTypes:Ljava/util/List;

    .line 35
    iget-object v5, v3, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;->docTypes:Ljava/util/List;

    new-instance v6, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;

    const/4 v7, -0x1

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v9, 0x7f080136

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;-><init>(ILjava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string/jumbo v5, "items"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 40
    iget-object v5, v3, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;->docTypes:Ljava/util/List;

    new-instance v6, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 30
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_0
    new-instance v7, Lcom/vkcoffee/android/data/VKList;

    invoke-direct {v7}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    iput-object v7, v3, Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;->docs:Lcom/vkcoffee/android/data/VKList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "result":Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;
    :catch_0
    move-exception v4

    .line 45
    .local v4, "x":Ljava/lang/Exception;
    const/4 v3, 0x0

    .end local v4    # "x":Ljava/lang/Exception;
    :cond_1
    return-object v3

    .restart local v2    # "response":Lorg/json/JSONObject;
    .restart local v3    # "result":Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;
    :cond_2
    move v5, v6

    .line 32
    goto :goto_1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/docs/DocsGetTypes;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/docs/DocsGetTypes$Result;

    move-result-object v0

    return-object v0
.end method
