.class public Lcom/vkcoffee/android/api/account/AccountLookupContacts;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AccountLookupContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "myContact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "account.lookupContacts"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "contacts"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/account/AccountLookupContacts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v0, "service"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/account/AccountLookupContacts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    if-eqz p3, :cond_0

    .line 25
    const-string/jumbo v0, "mycontact"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/account/AccountLookupContacts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    :cond_0
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_100,photo_50,photo_200,common_count"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/account/AccountLookupContacts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;
    .locals 16
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v6, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v10, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 34
    const-string/jumbo v10, "found"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 35
    .local v3, "jfound":Lorg/json/JSONArray;
    const-string/jumbo v10, "other"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 36
    .local v4, "jother":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 37
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 38
    .local v5, "jp":Lorg/json/JSONObject;
    new-instance v7, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v7, v5}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 39
    .local v7, "profile":Lcom/vkcoffee/android/UserProfile;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 40
    iget-object v10, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v11, "external_id"

    const-string/jumbo v12, "contact"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v10, "common_count"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_0

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e002e

    const-string/jumbo v12, "common_count"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "common_count"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    iput-object v10, v7, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    const-string/jumbo v10, ""

    goto :goto_1

    .line 44
    .end local v5    # "jp":Lorg/json/JSONObject;
    .end local v7    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 45
    new-instance v7, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v7}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 46
    .restart local v7    # "profile":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 47
    .restart local v5    # "jp":Lorg/json/JSONObject;
    const/4 v10, -0x1

    iput v10, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 48
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 49
    iget-object v10, v7, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v11, "external_id"

    const-string/jumbo v12, "contact"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 52
    .end local v5    # "jp":Lorg/json/JSONObject;
    .end local v7    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    new-instance v8, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;

    invoke-direct {v8}, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;-><init>()V

    .line 53
    .local v8, "res":Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;
    iput-object v1, v8, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->found:Ljava/util/ArrayList;

    .line 54
    iput-object v6, v8, Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;->other:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v2    # "i":I
    .end local v3    # "jfound":Lorg/json/JSONArray;
    .end local v4    # "jother":Lorg/json/JSONArray;
    .end local v6    # "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v8    # "res":Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;
    :goto_3
    return-object v8

    .line 56
    :catch_0
    move-exception v9

    .line 57
    .local v9, "x":Ljava/lang/Exception;
    const-string/jumbo v10, "vk"

    invoke-static {v10, v9}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const/4 v8, 0x0

    goto :goto_3
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
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/account/AccountLookupContacts;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/account/AccountLookupContacts$Result;

    move-result-object v0

    return-object v0
.end method
