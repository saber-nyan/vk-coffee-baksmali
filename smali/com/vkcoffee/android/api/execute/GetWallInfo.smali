.class public Lcom/vkcoffee/android/api/execute/GetWallInfo;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GetWallInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 15
    const-string/jumbo v0, "execute.getUserInfo"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "func_v"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/execute/GetWallInfo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    :try_start_0
    const-string/jumbo v11, "response"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 22
    const-string/jumbo v11, "profile"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 23
    .local v4, "jp":Lorg/json/JSONObject;
    const-string/jumbo v11, "info"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 24
    .local v2, "info":Lorg/json/JSONObject;
    const-string/jumbo v11, "intro"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 25
    .local v3, "intro":I
    const-string/jumbo v11, "exports"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 26
    .local v5, "jx":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 27
    .local v0, "country":I
    const-string/jumbo v11, "country"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 28
    const-string/jumbo v11, "country"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v12, "id"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 30
    :cond_0
    new-instance v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    invoke-direct {v7}, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;-><init>()V

    .line 31
    .local v7, "res":Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "first_name"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "last_name"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->name:Ljava/lang/String;

    .line 32
    const-string/jumbo v11, "status"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->status:Ljava/lang/String;

    .line 33
    sget v11, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    const-string/jumbo v11, "photo_100"

    :goto_0
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->photo:Ljava/lang/String;

    .line 34
    if-eqz v5, :cond_2

    const-string/jumbo v11, "twitter"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->exportTwi:Z

    .line 35
    if-eqz v5, :cond_3

    const-string/jumbo v11, "facebook"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->exportFb:Z

    .line 36
    const-string/jumbo v11, "time"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->time:I

    .line 37
    iput v0, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->country:I

    .line 38
    iput v3, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->intro:I

    .line 39
    const-string/jumbo v11, "has_new_items"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->numNewStickers:I

    .line 40
    const-string/jumbo v11, "stickers_updates"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->stickersUpdates:I

    .line 41
    const-string/jumbo v11, "sex"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->f:Z

    .line 42
    const-string/jumbo v11, "bdate"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->bdate:Ljava/lang/String;

    .line 43
    const-string/jumbo v11, "support_url"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->supportUrl:Ljava/lang/String;

    .line 44
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->adsFilter:Ljava/util/ArrayList;

    .line 45
    const-string/jumbo v11, "ads_stop_list"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 46
    const-string/jumbo v11, "ads_stop_list"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 47
    .local v6, "list":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_5

    .line 48
    iget-object v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->adsFilter:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 33
    .end local v1    # "i":I
    .end local v6    # "list":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v11, "photo_50"

    goto/16 :goto_0

    .line 34
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 35
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 41
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 51
    :cond_5
    const-string/jumbo v11, "allow_buy_votes"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->allowBuyVotes:Z

    .line 52
    const-string/jumbo v11, "use_vigo"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->useVigo:Z

    .line 53
    const-string/jumbo v11, "vigo_connect_timeout"

    const/16 v12, 0x3e8

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->vigoConnectTimeout:I

    .line 54
    const-string/jumbo v11, "vigo_read_timeout"

    const/16 v12, 0x3e8

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->vigoReadTimeout:I

    .line 55
    const-string/jumbo v11, "google_now"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->needUpdateGoogleNow:Z

    .line 56
    const-string/jumbo v11, "settings"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 57
    .local v9, "settings":Lorg/json/JSONArray;
    if-eqz v9, :cond_8

    .line 58
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_8

    .line 59
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 60
    .local v8, "setting":Lorg/json/JSONObject;
    const-string/jumbo v11, "name"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v11, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :cond_6
    :goto_7
    packed-switch v11, :pswitch_data_1

    .line 58
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 55
    .end local v1    # "i":I
    .end local v8    # "setting":Lorg/json/JSONObject;
    .end local v9    # "settings":Lorg/json/JSONArray;
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 60
    .restart local v1    # "i":I
    .restart local v8    # "setting":Lorg/json/JSONObject;
    .restart local v9    # "settings":Lorg/json/JSONArray;
    :pswitch_0
    const-string/jumbo v13, "gif_autoplay"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v11, 0x0

    goto :goto_7

    .line 62
    :pswitch_1
    const-string/jumbo v11, "available"

    iget-boolean v12, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->gifAutoplayAvailable:Z

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v7, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->gifAutoplayAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 69
    .end local v0    # "country":I
    .end local v1    # "i":I
    .end local v2    # "info":Lorg/json/JSONObject;
    .end local v3    # "intro":I
    .end local v4    # "jp":Lorg/json/JSONObject;
    .end local v5    # "jx":Lorg/json/JSONObject;
    .end local v7    # "res":Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;
    .end local v8    # "setting":Lorg/json/JSONObject;
    .end local v9    # "settings":Lorg/json/JSONArray;
    :catch_0
    move-exception v10

    .line 70
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v11, "vk"

    invoke-static {v11, v10}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    const/4 v7, 0x0

    .end local v10    # "x":Ljava/lang/Exception;
    :cond_8
    return-object v7

    .line 60
    :pswitch_data_0
    .packed-switch -0x2542e882
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/execute/GetWallInfo;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    move-result-object v0

    return-object v0
.end method
