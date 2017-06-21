.class public Lcom/vkcoffee/android/api/external/GmailGetContacts;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GmailGetContacts.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field callback:Lcom/vkcoffee/android/api/Callback;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_token"    # Ljava/lang/String;
    .param p2, "_account"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string/jumbo v0, "__gmailGetContacts"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/vkcoffee/android/api/external/GmailGetContacts;->token:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/vkcoffee/android/api/external/GmailGetContacts;->account:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public doExec()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 31
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://www.google.com/m8/feeds/contacts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/api/external/GmailGetContacts;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/full?v=3.0&alt=json&max-results=1000&access_token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/api/external/GmailGetContacts;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v0

    .line 32
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 34
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "data":[B
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const/4 v3, 0x0

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
    .line 18
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/external/GmailGetContacts;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 16
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v12, "feed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "entry"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 45
    .local v4, "jusers":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v1, v12, :cond_2

    .line 46
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 47
    .local v3, "ju":Lorg/json/JSONObject;
    const-string/jumbo v12, "gd$email"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 45
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance v8, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v8}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 51
    .local v8, "p":Lcom/vkcoffee/android/UserProfile;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 52
    iget-object v12, v8, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v13, "external_id"

    const-string/jumbo v14, "gd$email"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string/jumbo v15, "address"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v12, "gd$name"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 54
    const-string/jumbo v12, "gd$name"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 55
    .local v7, "name":Lorg/json/JSONObject;
    const-string/jumbo v12, "gd$givenName"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "gd$givenName"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "$t"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_2
    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 56
    const-string/jumbo v12, "gd$familyName"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "gd$familyName"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "$t"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_3
    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 57
    const-string/jumbo v12, "gd$fullName"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "$t"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 61
    .end local v7    # "name":Lorg/json/JSONObject;
    :goto_4
    const/4 v9, 0x0

    .line 62
    .local v9, "photo":Ljava/lang/String;
    const-string/jumbo v12, "link"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 63
    .local v6, "links":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_1

    .line 64
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 65
    .local v5, "link":Lorg/json/JSONObject;
    const-string/jumbo v12, "type"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "image/*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "rel"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "#photo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 66
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "href"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "&access_token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/api/external/GmailGetContacts;->token:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 70
    .end local v5    # "link":Lorg/json/JSONObject;
    :cond_1
    iput-object v9, v8, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 71
    iget-object v12, v8, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v13, "external_id"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 72
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 76
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "ju":Lorg/json/JSONObject;
    .end local v4    # "jusers":Lorg/json/JSONArray;
    .end local v6    # "links":Lorg/json/JSONArray;
    .end local v8    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v9    # "photo":Ljava/lang/String;
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v11

    .line 77
    .local v11, "x":Ljava/lang/Exception;
    const-string/jumbo v12, "vk"

    invoke-static {v12, v11}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const/4 v10, 0x0

    .end local v11    # "x":Ljava/lang/Exception;
    :cond_2
    return-object v10

    .line 55
    .restart local v1    # "i":I
    .restart local v3    # "ju":Lorg/json/JSONObject;
    .restart local v4    # "jusers":Lorg/json/JSONArray;
    .restart local v7    # "name":Lorg/json/JSONObject;
    .restart local v8    # "p":Lcom/vkcoffee/android/UserProfile;
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v12, ""

    goto/16 :goto_2

    .line 56
    :cond_4
    const-string/jumbo v12, ""

    goto/16 :goto_3

    .line 59
    .end local v7    # "name":Lorg/json/JSONObject;
    :cond_5
    iget-object v12, v8, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v13, "external_id"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 63
    .restart local v2    # "j":I
    .restart local v5    # "link":Lorg/json/JSONObject;
    .restart local v6    # "links":Lorg/json/JSONArray;
    .restart local v9    # "photo":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5
.end method
