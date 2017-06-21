.class public Lcom/vkcoffee/android/api/friends/FriendsGet;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "FriendsGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/friends/FriendsGet$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/friends/FriendsGet$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "mutual"    # Z

    .prologue
    .line 20
    const-string/jumbo v0, "execute.getFriendsAndLists"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v1, "fields"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "photo_200,photo_100,photo_50,online"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    const-string/jumbo v0, ",bdate,first_name_gen,domain,last_name_gen,sex"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/friends/FriendsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    if-eqz p1, :cond_1

    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-ne p1, v0, :cond_2

    .line 23
    :cond_1
    const-string/jumbo v0, "order"

    const-string/jumbo v1, "hints"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v0, "need_lists"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    :cond_2
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    return-void

    .line 21
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private parseProfile(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;
    .locals 6
    .param p1, "p"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3, p1}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 31
    .local v3, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v4, "bdate"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 32
    const/4 v4, 0x0

    iput v4, v3, Lcom/vkcoffee/android/UserProfile;->country:I

    .line 33
    const-string/jumbo v4, "lists"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    const-string/jumbo v4, "lists"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 35
    .local v2, "lists":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 36
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 37
    .local v1, "l":I
    iget v4, v3, Lcom/vkcoffee/android/UserProfile;->country:I

    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v4, v5

    iput v4, v3, Lcom/vkcoffee/android/UserProfile;->country:I

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "i":I
    .end local v1    # "l":I
    .end local v2    # "lists":Lorg/json/JSONArray;
    :cond_0
    const-string/jumbo v4, "first_name_gen"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "first_name_gen"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "last_name_gen"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 43
    :cond_1
    return-object v3
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/friends/FriendsGet$Result;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v7, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v6, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;

    invoke-direct {v6}, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;-><init>()V

    .line 50
    .local v6, "result":Lcom/vkcoffee/android/api/friends/FriendsGet$Result;
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "items"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 51
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 77
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v6    # "result":Lcom/vkcoffee/android/api/friends/FriendsGet$Result;
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 54
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v6    # "result":Lcom/vkcoffee/android/api/friends/FriendsGet$Result;
    .restart local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 55
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vkcoffee/android/api/friends/FriendsGet;->parseProfile(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    :cond_2
    iput-object v7, v6, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;->friends:Ljava/util/List;

    .line 58
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "lists"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v5, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    const-string/jumbo v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v10, "lists"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 61
    .local v2, "jl":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 62
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 63
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 64
    .local v3, "jlist":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkcoffee/android/data/Friends$Folder;

    invoke-direct {v4}, Lcom/vkcoffee/android/data/Friends$Folder;-><init>()V

    .line 65
    .local v4, "list":Lcom/vkcoffee/android/data/Friends$Folder;
    const-string/jumbo v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/vkcoffee/android/data/Friends$Folder;->id:I

    .line 66
    const-string/jumbo v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkcoffee/android/data/Friends$Folder;->name:Ljava/lang/String;

    .line 67
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    .end local v3    # "jlist":Lorg/json/JSONObject;
    .end local v4    # "list":Lcom/vkcoffee/android/data/Friends$Folder;
    :cond_3
    iput-object v5, v6, Lcom/vkcoffee/android/api/friends/FriendsGet$Result;->lists:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jl":Lorg/json/JSONArray;
    .end local v5    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/Friends$Folder;>;"
    .end local v6    # "result":Lcom/vkcoffee/android/api/friends/FriendsGet$Result;
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v8

    .line 74
    .local v8, "x":Ljava/lang/Exception;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v9}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 75
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v6, 0x0

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
    .line 17
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/friends/FriendsGet$Result;

    move-result-object v0

    return-object v0
.end method
