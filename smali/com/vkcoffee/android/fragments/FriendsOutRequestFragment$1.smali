.class Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "FriendsOutRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->loadFriendsRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    .line 86
    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 16
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "var3"    # Lorg/json/JSONObject;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    const-string v2, "response"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 93
    .local v9, "friends":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lt v10, v2, :cond_0

    .line 122
    .end local v9    # "friends":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :goto_1
    return-void

    .line 95
    .restart local v9    # "friends":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 96
    .local v12, "var6":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "first_name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "last_name"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "name":Ljava/lang/String;
    const-string v2, "photo_100"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "photo":Ljava/lang/String;
    const-string v2, "id"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 99
    .local v5, "id":Ljava/lang/Long;
    const-string v2, "last_seen"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 100
    .local v11, "last_s":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 101
    .local v6, "online":Ljava/lang/String;
    const/4 v7, 0x0

    .line 102
    .local v7, "icon":I
    const-string v2, "online"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "1"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const-string v6, "Online"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    const v7, 0x7f0201af

    .line 107
    :cond_1
    :try_start_2
    const-string v2, "online_mobile"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "1"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const-string v6, "Online(mob.)"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    const v7, 0x7f0201b0

    .line 112
    :cond_2
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    iget-object v13, v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->list2:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;

    invoke-direct/range {v2 .. v7}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    invoke-virtual {v13, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    new-instance v8, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v8, v2, v13}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;-><init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;Landroid/content/Context;)V

    .line 114
    .local v8, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 93
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "photo":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/Long;
    .end local v6    # "online":Ljava/lang/String;
    .end local v7    # "icon":I
    .end local v8    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;>;"
    .end local v11    # "last_s":Lorg/json/JSONObject;
    .end local v12    # "var6":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 117
    .end local v9    # "friends":Lorg/json/JSONArray;
    .end local v10    # "i":I
    :catch_0
    move-exception v12

    .line 118
    .local v12, "var6":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v13, "JSON FAIL"

    const/4 v14, 0x0

    invoke-static {v2, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 120
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 115
    .end local v12    # "var6":Lorg/json/JSONException;
    .restart local v9    # "friends":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    :catch_1
    move-exception v2

    goto :goto_3

    .line 111
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "photo":Ljava/lang/String;
    .restart local v5    # "id":Ljava/lang/Long;
    .restart local v6    # "online":Ljava/lang/String;
    .restart local v7    # "icon":I
    .restart local v11    # "last_s":Lorg/json/JSONObject;
    .local v12, "var6":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    goto :goto_2
.end method
