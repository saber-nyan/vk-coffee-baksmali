.class public Lcom/vkcoffee/android/api/messages/MessagesSearchDialogs;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MessagesSearchDialogs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string/jumbo v0, "messages.searchDialogs"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSearchDialogs;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    const-string/jumbo v2, "fields"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    const-string/jumbo v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",online"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void

    .line 18
    :cond_0
    const-string/jumbo v0, "photo_rec"

    goto :goto_0
.end method

.method private parseProfile(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;
    .locals 3
    .param p1, "p"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 23
    .local v0, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v1, "first_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 24
    const-string/jumbo v1, "last_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 26
    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const-string/jumbo v1, "photo_medium_rec"

    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 27
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 28
    invoke-static {p1}, Lcom/vkcoffee/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 29
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v1, "photo_rec"

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
    .line 14
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSearchDialogs;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 34
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 38
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    .local v1, "e":Lorg/json/JSONObject;
    const-string/jumbo v7, "profile"

    const-string/jumbo v8, "type"

    const-string/jumbo v9, "profile"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 40
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/messages/MessagesSearchDialogs;->parseProfile(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    const-string/jumbo v7, "chat"

    const-string/jumbo v8, "type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 43
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 44
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    const v7, 0x77359400

    const-string/jumbo v8, "id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 45
    const-string/jumbo v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 46
    const-string/jumbo v7, ""

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 47
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_3

    const-string/jumbo v7, "photo_100"

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    const-string/jumbo v7, "group"

    const-string/jumbo v8, "type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 52
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v7, "id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    neg-int v7, v7

    iput v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 53
    const-string/jumbo v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 54
    const-string/jumbo v7, ""

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 55
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_4

    const-string/jumbo v7, "photo_100"

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 56
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 47
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    const-string/jumbo v7, "photo_50"

    goto :goto_1

    .line 55
    :cond_4
    const-string/jumbo v7, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 61
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "e":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v5

    .line 62
    .local v5, "x":Ljava/lang/Exception;
    const-string/jumbo v7, "vk"

    invoke-static {v7, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v6

    .line 64
    .end local v5    # "x":Ljava/lang/Exception;
    :cond_5
    return-object v4
.end method
