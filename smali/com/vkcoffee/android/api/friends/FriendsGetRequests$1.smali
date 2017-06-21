.class Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "FriendsGetRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/api/FriendRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/friends/FriendsGetRequests;

.field final synthetic val$fromNames:Landroid/util/SparseArray;

.field final synthetic val$myFriends:Ljava/util/ArrayList;

.field final synthetic val$users:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/friends/FriendsGetRequests;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/friends/FriendsGetRequests;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->this$0:Lcom/vkcoffee/android/api/friends/FriendsGetRequests;

    iput-object p2, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->val$users:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->val$fromNames:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->val$myFriends:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/FriendRequest;
    .locals 12
    .param p1, "jreq"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 85
    new-instance v3, Lcom/vkcoffee/android/api/FriendRequest;

    invoke-direct {v3}, Lcom/vkcoffee/android/api/FriendRequest;-><init>()V

    .line 86
    .local v3, "req":Lcom/vkcoffee/android/api/FriendRequest;
    iget-object v6, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->val$users:Landroid/util/SparseArray;

    const-string/jumbo v7, "user_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/UserProfile;

    iput-object v6, v3, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 87
    iget-object v6, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->this$0:Lcom/vkcoffee/android/api/friends/FriendsGetRequests;

    invoke-static {v6}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests;->access$000(Lcom/vkcoffee/android/api/friends/FriendsGetRequests;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801ac

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->val$fromNames:Landroid/util/SparseArray;

    const-string/jumbo v10, "from"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkcoffee/android/api/FriendRequest;->message:Ljava/lang/String;

    .line 92
    :goto_0
    iget-object v6, v3, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v6, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    iput-object v6, v3, Lcom/vkcoffee/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 93
    const-string/jumbo v6, "mutual"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    const/4 v6, 0x5

    const-string/jumbo v7, "mutual"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "users"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 95
    .local v1, "nMFriends":I
    new-array v6, v1, [Lcom/vkcoffee/android/UserProfile;

    iput-object v6, v3, Lcom/vkcoffee/android/api/FriendRequest;->mutualFriends:[Lcom/vkcoffee/android/UserProfile;

    .line 96
    const-string/jumbo v6, "mutual"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    .line 97
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 98
    const-string/jumbo v6, "mutual"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "users"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 99
    .local v4, "uid":I
    new-instance v5, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v5}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 100
    .local v5, "up":Lcom/vkcoffee/android/UserProfile;
    iget-object v6, p0, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->val$myFriends:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 101
    .local v2, "pp":Lcom/vkcoffee/android/UserProfile;
    iget v7, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v7, v4, :cond_0

    .line 102
    move-object v5, v2

    .line 106
    .end local v2    # "pp":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iget-object v6, v3, Lcom/vkcoffee/android/api/FriendRequest;->mutualFriends:[Lcom/vkcoffee/android/UserProfile;

    aput-object v5, v6, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "j":I
    .end local v1    # "nMFriends":I
    .end local v4    # "uid":I
    .end local v5    # "up":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    const-string/jumbo v6, "message"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkcoffee/android/api/FriendRequest;->message:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_3
    iput v11, v3, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    .line 112
    :cond_4
    return-object v3
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/friends/FriendsGetRequests$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/FriendRequest;

    move-result-object v0

    return-object v0
.end method
