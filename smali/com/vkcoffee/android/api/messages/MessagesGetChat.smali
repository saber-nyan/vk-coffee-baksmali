.class public Lcom/vkcoffee/android/api/messages/MessagesGetChat;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "MessagesGetChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "chatID"    # I

    .prologue
    .line 22
    const-string/jumbo v0, "messages.getChat"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetChat;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "fields"

    const-string/jumbo v2, "photo_50,photo_100,sex"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;
    .locals 22
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    :try_start_0
    const-string/jumbo v20, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 29
    .local v13, "r":Lorg/json/JSONObject;
    const-string/jumbo v20, "users"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 30
    .local v2, "arr":Lorg/json/JSONArray;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v12, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 32
    .local v17, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v9, "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_0

    .line 34
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 35
    .local v7, "jp":Lorg/json/JSONObject;
    new-instance v11, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v11, v7}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 36
    .local v11, "p":Lcom/vkcoffee/android/UserProfile;
    iget v0, v11, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38
    .end local v7    # "jp":Lorg/json/JSONObject;
    .end local v11    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_2

    .line 39
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 40
    .restart local v7    # "jp":Lorg/json/JSONObject;
    const-string/jumbo v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 41
    .local v16, "userID":I
    const-string/jumbo v20, "invited_by"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 42
    .local v6, "invID":I
    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 43
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 46
    .end local v6    # "invID":I
    .end local v7    # "jp":Lorg/json/JSONObject;
    .end local v16    # "userID":I
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 47
    invoke-static {v9}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v18

    .line 48
    .local v18, "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkcoffee/android/UserProfile;

    .line 49
    .local v15, "u":Lcom/vkcoffee/android/UserProfile;
    iget v0, v15, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 80
    .end local v2    # "arr":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v9    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    .end local v13    # "r":Lorg/json/JSONObject;
    .end local v15    # "u":Lcom/vkcoffee/android/UserProfile;
    .end local v17    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v18    # "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_0
    move-exception v19

    .line 81
    .local v19, "x":Ljava/lang/Exception;
    const-string/jumbo v20, "vk"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const/4 v14, 0x0

    .end local v19    # "x":Ljava/lang/Exception;
    :goto_3
    return-object v14

    .line 52
    .restart local v2    # "arr":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v9    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    .restart local v13    # "r":Lorg/json/JSONObject;
    .restart local v17    # "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    const/4 v5, 0x0

    :goto_4
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_4

    .line 53
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 54
    .restart local v7    # "jp":Lorg/json/JSONObject;
    const-string/jumbo v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 55
    .restart local v16    # "userID":I
    const-string/jumbo v20, "invited_by"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 56
    .restart local v6    # "invID":I
    new-instance v3, Lcom/vkcoffee/android/ChatUser;

    invoke-direct {v3}, Lcom/vkcoffee/android/ChatUser;-><init>()V

    .line 57
    .local v3, "cu":Lcom/vkcoffee/android/ChatUser;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    .line 58
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    .line 59
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 61
    .end local v3    # "cu":Lcom/vkcoffee/android/ChatUser;
    .end local v6    # "invID":I
    .end local v7    # "jp":Lorg/json/JSONObject;
    .end local v16    # "userID":I
    :cond_4
    const/4 v4, 0x0

    .line 62
    .local v4, "dnd":I
    const/4 v10, 0x0

    .line 63
    .local v10, "mute":Z
    const-string/jumbo v20, "push_settings"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 64
    const-string/jumbo v20, "push_settings"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 65
    .local v8, "jps":Lorg/json/JSONObject;
    const-string/jumbo v20, "disabled_until"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 66
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_5

    .line 67
    const v4, 0x7fffffff

    .line 69
    :cond_5
    const-string/jumbo v20, "sound"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/4 v10, 0x1

    .line 72
    .end local v8    # "jps":Lorg/json/JSONObject;
    :cond_6
    :goto_5
    new-instance v14, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;

    invoke-direct {v14}, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;-><init>()V

    .line 73
    .local v14, "result":Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;
    iput-object v12, v14, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->users:Ljava/util/ArrayList;

    .line 74
    const-string/jumbo v20, "title"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->title:Ljava/lang/String;

    .line 75
    sget v20, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8

    const-string/jumbo v20, "photo_100"

    :goto_6
    invoke-static {v12}, Lcom/vkcoffee/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->photo:Ljava/lang/String;

    .line 76
    const-string/jumbo v20, "admin_id"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->adminID:I

    .line 77
    iput v4, v14, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->dnd:I

    .line 78
    iput-boolean v10, v14, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->mute:Z

    goto/16 :goto_3

    .line 69
    .end local v14    # "result":Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;
    .restart local v8    # "jps":Lorg/json/JSONObject;
    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    .line 75
    .end local v8    # "jps":Lorg/json/JSONObject;
    .restart local v14    # "result":Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;
    :cond_8
    const-string/jumbo v20, "photo_50"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetChat;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;

    move-result-object v0

    return-object v0
.end method
