.class Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "MessagesGetDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/DialogEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;

.field private final synthetic val$profiles:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;->this$0:Lcom/vkcoffee/android/api/messages/MessagesGetDialogs;

    iput-object p2, p0, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;->val$profiles:Landroid/util/SparseArray;

    .line 46
    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/DialogEntry;
    .locals 20
    .param p1, "msgWrap"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v5, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v5}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 49
    .local v5, "entry":Lcom/vkcoffee/android/DialogEntry;
    const-string v17, "message"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 50
    .local v11, "msg":Lorg/json/JSONObject;
    const-string v17, "unread"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;->val$profiles:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const-string v18, "user_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    sget-object v19, Lcom/vkcoffee/android/UserProfile;->EMPTY_USER:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual/range {v17 .. v19}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 52
    iget-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 53
    new-instance v17, Lcom/vkcoffee/android/UserProfile;

    invoke-direct/range {v17 .. v17}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 54
    iget-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v17, v0

    const-string v18, "user_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 56
    :cond_0
    new-instance v10, Lcom/vkcoffee/android/Message;

    invoke-direct {v10, v11}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 57
    .local v10, "m":Lcom/vkcoffee/android/Message;
    iput-object v10, v5, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;->val$profiles:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    iget v0, v10, Lcom/vkcoffee/android/Message;->sender:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;->val$profiles:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    iget v0, v10, Lcom/vkcoffee/android/Message;->sender:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 63
    :goto_0
    iget v0, v10, Lcom/vkcoffee/android/Message;->peer:I

    move/from16 v17, v0

    const v18, 0x77359400

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 64
    new-instance v17, Lcom/vkcoffee/android/UserProfile;

    invoke-direct/range {v17 .. v17}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 65
    iget-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v17, v0

    iget v0, v10, Lcom/vkcoffee/android/Message;->peer:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 66
    iget-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v17, v0

    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 67
    iget-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v17, v0

    const-string v18, "admin_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "dnd":I
    const/4 v12, 0x0

    .line 70
    .local v12, "mute":Z
    const-string v17, "push_settings"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 71
    const-string v17, "push_settings"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 72
    .local v9, "jps":Lorg/json/JSONObject;
    const-string v17, "disabled_until"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 73
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 74
    const v4, 0x7fffffff

    .line 76
    :cond_1
    const-string v17, "sound"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/4 v12, 0x1

    .line 78
    .end local v9    # "jps":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v16, "x":Landroid/os/Bundle;
    const-string v17, "dnd"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v17, "mute"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    iget-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 82
    const-string v17, "photo_50"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 84
    iget-object v15, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 85
    .local v15, "userProfile":Lcom/vkcoffee/android/UserProfile;
    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6

    .line 86
    const-string v14, "photo_100"

    .line 90
    .local v14, "str":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 116
    .end local v4    # "dnd":I
    .end local v12    # "mute":Z
    .end local v14    # "str":Ljava/lang/String;
    .end local v15    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    .end local v16    # "x":Landroid/os/Bundle;
    :cond_3
    :goto_3
    return-object v5

    .line 61
    :cond_4
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Profile for "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v10, Lcom/vkcoffee/android/Message;->sender:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found!!!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    .restart local v4    # "dnd":I
    .restart local v9    # "jps":Lorg/json/JSONObject;
    .restart local v12    # "mute":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 88
    .end local v9    # "jps":Lorg/json/JSONObject;
    .restart local v15    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    .restart local v16    # "x":Landroid/os/Bundle;
    :cond_6
    const-string v14, "photo_50"

    .restart local v14    # "str":Ljava/lang/String;
    goto :goto_2

    .line 92
    .end local v14    # "str":Ljava/lang/String;
    .end local v15    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_7
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 93
    .local v3, "bldr":Landroid/net/Uri$Builder;
    const-string v17, "vkchatphoto"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    const-string v18, "c"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v13, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "chat_active"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 96
    .local v2, "act":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_9

    .line 106
    :cond_8
    const/4 v6, 0x0

    .line 107
    .local v6, "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 108
    .local v7, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_c

    .line 112
    iget-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v17, v0

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 113
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Set photo "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 97
    .end local v6    # "i":I
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    sget v18, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;->val$profiles:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;->val$profiles:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 96
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 109
    .restart local v6    # "i":I
    .restart local v7    # "it":Ljava/util/Iterator;
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "photo"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetDialogs$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/DialogEntry;

    move-result-object v0

    return-object v0
.end method
