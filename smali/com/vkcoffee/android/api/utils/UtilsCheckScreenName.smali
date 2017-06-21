.class public Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "UtilsCheckScreenName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string/jumbo v0, "utils.checkScreenName"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "screen_name"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    const-string/jumbo v0, "suggestions"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;
    .locals 5
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 24
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 25
    new-instance v2, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;-><init>()V

    .line 26
    .local v2, "res":Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;
    const-string/jumbo v4, "status"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    iput-boolean v3, v2, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->isValid:Z

    .line 27
    iget-boolean v3, v2, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->isValid:Z

    if-nez v3, :cond_1

    .line 28
    const-string/jumbo v3, "reason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->reason:Ljava/lang/String;

    .line 29
    const-string/jumbo v3, "suggestions"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->suggestions:Ljava/util/List;

    .line 31
    const-string/jumbo v3, "suggestions"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "items"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 32
    .local v1, "js":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 33
    iget-object v3, v2, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->suggestions:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26
    .end local v0    # "i":I
    .end local v1    # "js":Lorg/json/JSONArray;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 37
    :cond_1
    return-object v2
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;

    move-result-object v0

    return-object v0
.end method
