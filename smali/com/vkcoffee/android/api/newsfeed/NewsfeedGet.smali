.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "NewsfeedGet.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;",
        ">;",
        "Lcom/vkcoffee/android/data/ServerKeys;"
    }
.end annotation


# static fields
.field private static final FEED_TYPE_RECENT:Ljava/lang/String; = "recent"

.field private static final FEED_TYPE_TOP:Ljava/lang/String; = "top"

.field public static final LIST_ID_FRIENDS:I = -0x2

.field public static final LIST_ID_GROUPS:I = -0x3

.field public static final LIST_ID_NEWS:I = 0x0

.field public static final LIST_ID_PHOTOS:I = -0x4

.field public static final LIST_ID_RECOMMENDATION:I = -0x1

.field public static final LIST_ID_VIDEOS:I = -0x5


# instance fields
.field final from:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 10
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "list"    # I

    .prologue
    const/4 v5, -0x1

    .line 55
    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v9}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;-><init>(Ljava/lang/String;IILjava/lang/Boolean;IIIIZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Boolean;IIIIZ)V
    .locals 12
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "list"    # I
    .param p4, "isSmartNews"    # Ljava/lang/Boolean;
    .param p5, "position"    # I
    .param p6, "lastPostOwnerId"    # I
    .param p7, "lastPostId"    # I
    .param p8, "awayTimeSec"    # I
    .param p9, "forceNotification"    # Z

    .prologue
    .line 59
    const-string v7, "execute.getNewsfeedSmart"

    invoke-direct {p0, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->from:Ljava/lang/String;

    .line 61
    const-string v7, "start_from"

    invoke-virtual {p0, v7, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 62
    const-string v7, "count"

    invoke-virtual {p0, v7, p2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 63
    if-eqz p9, :cond_0

    .line 64
    const-string v7, "forced_notifications"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 66
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    .line 85
    const-string v8, "filters"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, "post,photo,photo_tag"

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "recomendedFriends"

    const/4 v11, 0x1

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, ",friends_recomm"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "__dbg_no_ads"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, ",ads_app,ads_site,ads_post"

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 88
    :goto_3
    packed-switch p3, :pswitch_data_2

    .line 99
    if-lez p3, :cond_1

    .line 100
    const-string v7, "source_ids"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "list"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 105
    :cond_1
    :goto_4
    if-nez p3, :cond_5

    if-eqz p4, :cond_5

    .line 106
    const-string v7, "0"

    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 107
    const-string v8, "feed_type"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "top"

    :goto_5
    invoke-virtual {p0, v8, v7}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 111
    :cond_2
    :goto_6
    if-ltz p5, :cond_3

    .line 112
    const-string v7, "update_position"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 114
    :cond_3
    if-ltz p7, :cond_4

    if-eqz p6, :cond_4

    .line 115
    const-string v7, "update_post"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 117
    :cond_4
    if-ltz p8, :cond_5

    .line 118
    const-string v7, "update_away_time"

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 121
    :cond_5
    if-eqz p3, :cond_6

    .line 122
    const-string v7, "is_not_newsfeed"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 124
    :cond_6
    const-string v7, "photo_sizes"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 126
    :try_start_0
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "last_get_notify_app"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 127
    .local v5, "last":I
    if-eqz v5, :cond_7

    .line 128
    const-string v7, "last_request_notification_sec"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    int-to-long v10, v5

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 130
    :cond_7
    const-string v3, "4.3"

    .line 131
    .local v3, "appVersion":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .local v4, "devInfo":Lorg/json/JSONObject;
    const-string v7, "app_version"

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v7, "system_name"

    const-string v8, "Android"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v7, "system_version"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v7, "manufacturer"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v7, "device_model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "adId":Ljava/lang/String;
    const-string v7, "-3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 139
    const-string v7, "ads_tracking_disabled"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    :cond_8
    :goto_7
    sget-wide v8, Lcom/vkcoffee/android/VKApplication;->deviceID:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_9

    .line 147
    const-string v7, "ads_android_id"

    sget-wide v8, Lcom/vkcoffee/android/VKApplication;->deviceID:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_9
    const-string v7, "device_info"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 150
    const-string v7, "app_package_id"

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v2    # "adId":Ljava/lang/String;
    .end local v3    # "appVersion":Ljava/lang/String;
    .end local v4    # "devInfo":Lorg/json/JSONObject;
    .end local v5    # "last":I
    :goto_8
    return-void

    .line 68
    :pswitch_1
    const-string v7, "extended"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 71
    :pswitch_2
    const-string v7, "return_banned"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 74
    :pswitch_3
    const-string v7, "feed_type"

    const-string v8, "recommended"

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 79
    :pswitch_4
    const-string v7, "filters"

    const-string v8, "video"

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_3

    .line 82
    :pswitch_5
    const-string v7, "filters"

    const-string v8, "photo,photo_tag,wall_photo"

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_3

    .line 85
    :cond_a
    const-string v7, ""

    goto/16 :goto_1

    :cond_b
    const-string v7, ""

    goto/16 :goto_2

    .line 90
    :pswitch_6
    const-string v7, "source_ids"

    const-string v8, "friends,following"

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_4

    .line 93
    :pswitch_7
    const-string v7, "source_ids"

    const-string v8, "groups,pages"

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_4

    .line 96
    :pswitch_8
    const-string v7, "source_ids"

    const-string v8, "friends,following"

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_4

    .line 107
    :cond_c
    const-string v7, "recent"

    goto/16 :goto_5

    .line 108
    :cond_d
    invoke-static {}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->isStartFromInterestingPending()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 109
    const-string v8, "forced_feed_type"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "top"

    :goto_9
    invoke-virtual {p0, v8, v7}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_6

    :cond_e
    const-string v7, "recent"

    goto :goto_9

    .line 140
    .restart local v2    # "adId":Ljava/lang/String;
    .restart local v3    # "appVersion":Ljava/lang/String;
    .restart local v4    # "devInfo":Lorg/json/JSONObject;
    .restart local v5    # "last":I
    :cond_f
    :try_start_1
    const-string v7, "-1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "-2"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 141
    const-string v7, "ads_device_id"

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    invoke-static {}, Lcom/vkcoffee/android/data/Analytics;->isLimitAdTrackingEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 143
    const-string v7, "ads_tracking_disabled"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 151
    .end local v2    # "adId":Ljava/lang/String;
    .end local v3    # "appVersion":Ljava/lang/String;
    .end local v4    # "devInfo":Lorg/json/JSONObject;
    .end local v5    # "last":I
    :catch_0
    move-exception v6

    .line 152
    .local v6, "x":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_8

    .line 66
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 77
    :pswitch_data_1
    .packed-switch -0x5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 88
    :pswitch_data_2
    .packed-switch -0x4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static isStartFromInterestingPending()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "start_from_interesting_pending"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setStartFromInterestingPending(Z)V
    .locals 3
    .param p0, "b"    # Z

    .prologue
    .line 161
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "start_from_interesting_pending"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .locals 6
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 166
    :try_start_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 167
    .local v1, "jResponse":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->parseNews(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->parseLists(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->parseFeedType(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->parseNotifications(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    move-result-object v2

    .line 168
    .local v2, "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->setStartFromInterestingPending(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "jResponse":Lorg/json/JSONObject;
    .end local v2    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 171
    const-string v4, "error"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 172
    const/4 v2, 0x0

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
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    move-result-object v0

    return-object v0
.end method

.method public parseFeedType(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .locals 2
    .param p1, "newsEntries"    # Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .param p2, "jResponse"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    const-string v0, "feed_type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    .end local p1    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    const-string v0, "next_from"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local p1    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    :cond_0
    const-string v0, "feed_type"

    const-string v1, "recent"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "top"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->isSmartNews:Ljava/lang/Boolean;

    .line 204
    :cond_1
    return-object p1
.end method

.method public parseLists(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .locals 9
    .param p1, "newsEntries"    # Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .param p2, "jResponse"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 211
    const-string v5, "sections"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "sections"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    .end local p1    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    const-string v5, "next_from"

    invoke-virtual {p2, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local p1    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    :cond_0
    iget-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    if-nez v5, :cond_1

    .line 216
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    .line 218
    :cond_1
    const-string v5, "sections"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 219
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_6

    .line 268
    .end local v0    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    const-string v5, "lists"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "lists"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 269
    if-nez p1, :cond_3

    .line 270
    new-instance p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    .end local p1    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    const-string v5, "next_from"

    invoke-virtual {p2, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v5}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local p1    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    :cond_3
    iget-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    if-nez v5, :cond_4

    .line 273
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    .line 275
    :cond_4
    const-string v5, "lists"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 276
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_9

    .line 280
    .end local v0    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_5
    return-object p1

    .line 220
    .restart local v0    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "enabled"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 222
    const/4 v3, -0x1

    .line 223
    .local v3, "obj":B
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 249
    :cond_7
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 219
    .end local v3    # "obj":B
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .restart local v3    # "obj":B
    :sswitch_0
    const-string v5, "groups"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 226
    const/4 v3, 0x3

    .line 227
    goto :goto_2

    .line 231
    :sswitch_1
    const-string v5, "photos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 232
    const/4 v3, 0x0

    .line 233
    goto :goto_2

    .line 237
    :sswitch_2
    const-string v5, "videos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 238
    const/4 v1, 0x1

    .line 239
    .local v1, "i2":I
    goto :goto_2

    .line 243
    .end local v1    # "i2":I
    :sswitch_3
    const-string v5, "friends"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 244
    const/4 v3, 0x2

    goto :goto_2

    .line 251
    :pswitch_0
    iget-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    new-instance v6, Lcom/vkcoffee/android/NewsfeedList;

    const/4 v7, -0x4

    invoke-direct {v6, v7, v4}, Lcom/vkcoffee/android/NewsfeedList;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 254
    :pswitch_1
    iget-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    new-instance v6, Lcom/vkcoffee/android/NewsfeedList;

    const/4 v7, -0x5

    invoke-direct {v6, v7, v4}, Lcom/vkcoffee/android/NewsfeedList;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 257
    :pswitch_2
    iget-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    new-instance v6, Lcom/vkcoffee/android/NewsfeedList;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v4}, Lcom/vkcoffee/android/NewsfeedList;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 260
    :pswitch_3
    iget-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    new-instance v6, Lcom/vkcoffee/android/NewsfeedList;

    const/4 v7, -0x3

    invoke-direct {v6, v7, v4}, Lcom/vkcoffee/android/NewsfeedList;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 277
    .end local v3    # "obj":B
    .end local v4    # "type":Ljava/lang/String;
    :cond_9
    iget-object v5, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    new-instance v6, Lcom/vkcoffee/android/NewsfeedList;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/NewsfeedList;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        -0x49c2262c -> :sswitch_0
        -0x3af3777f -> :sswitch_1
        -0x30ad84a8 -> :sswitch_2
        -0x23c4b66b -> :sswitch_3
    .end sparse-switch

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public parseNews(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .locals 25
    .param p1, "jResponse"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    const-string v22, "items"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 287
    .local v12, "jItems":Lorg/json/JSONArray;
    const-string v22, "profiles"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 288
    .local v13, "jProfiles":Lorg/json/JSONArray;
    const-string v22, "groups"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 289
    .local v10, "jGroups":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 290
    .local v3, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v15, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    const-string v22, "next_from"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;-><init>(Ljava/lang/String;)V

    .line 291
    .local v15, "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    if-nez v12, :cond_1

    .line 366
    .end local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v10    # "jGroups":Lorg/json/JSONArray;
    .end local v12    # "jItems":Lorg/json/JSONArray;
    .end local v13    # "jProfiles":Lorg/json/JSONArray;
    .end local v15    # "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    :cond_0
    :goto_0
    return-object v15

    .line 297
    .restart local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v10    # "jGroups":Lorg/json/JSONArray;
    .restart local v12    # "jItems":Lorg/json/JSONArray;
    .restart local v13    # "jProfiles":Lorg/json/JSONArray;
    .restart local v15    # "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    :cond_1
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 298
    .local v17, "userNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 299
    .local v18, "userPhotos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    .line 300
    .local v19, "userSex":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    if-eqz v13, :cond_2

    .line 301
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 302
    .local v14, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v14, :cond_7

    .line 318
    .end local v7    # "i":I
    .end local v14    # "length":I
    :cond_2
    if-eqz v10, :cond_3

    .line 319
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 320
    .restart local v14    # "length":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-lt v7, v14, :cond_b

    .line 333
    .end local v7    # "i":I
    .end local v14    # "length":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_0

    .line 335
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 336
    .local v11, "jItem":Lorg/json/JSONObject;
    const-string v22, "ads"

    const-string v23, "type"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 337
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v11, v0, v1, v2, v3}, Lcom/vkcoffee/android/NewsEntry;->parseAd(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/Vector;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v5

    .line 338
    .local v5, "e":Lcom/vkcoffee/android/NewsEntry;
    if-eqz v5, :cond_5

    .line 339
    invoke-virtual {v15}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->size()I

    move-result v22

    if-lez v22, :cond_e

    invoke-virtual {v15}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    :goto_4
    move/from16 v0, v22

    iput v0, v5, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 340
    iget-object v0, v5, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 341
    .local v8, "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_f

    .line 359
    .end local v8    # "it":Ljava/util/Iterator;
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 360
    invoke-virtual {v15, v5}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 303
    .end local v5    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v11    # "jItem":Lorg/json/JSONObject;
    .restart local v14    # "length":I
    :cond_7
    invoke-virtual {v13, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "id"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/vkcoffee/android/ProfileStatic;->verBafCoffee(I)Z

    move-result v22

    if-nez v22, :cond_8

    .line 305
    invoke-virtual {v13, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 306
    .restart local v11    # "jItem":Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 307
    .local v16, "uid":I
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "first_name"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "last_name"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    sget v22, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_9

    const-string v22, "photo_100"

    :goto_6
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    const-string v22, "sex"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 310
    const/16 v21, 0x1

    .line 314
    .local v21, "z":Z
    :goto_7
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    .end local v11    # "jItem":Lorg/json/JSONObject;
    .end local v16    # "uid":I
    .end local v21    # "z":Z
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 308
    .restart local v11    # "jItem":Lorg/json/JSONObject;
    .restart local v16    # "uid":I
    :cond_9
    const-string v22, "photo_50"

    goto :goto_6

    .line 312
    :cond_a
    const/16 v21, 0x0

    .restart local v21    # "z":Z
    goto :goto_7

    .line 322
    .end local v11    # "jItem":Lorg/json/JSONObject;
    .end local v16    # "uid":I
    .end local v21    # "z":Z
    :cond_b
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "id"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/vkcoffee/android/ProfileStatic;->verBafCoffee(I)Z

    move-result v22

    if-nez v22, :cond_c

    .line 323
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 324
    .restart local v11    # "jItem":Lorg/json/JSONObject;
    const-string v22, "id"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 325
    .local v6, "gid":I
    neg-int v0, v6

    move/from16 v22, v0

    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    neg-int v0, v6

    move/from16 v23, v0

    sget v22, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v24

    if-lez v22, :cond_d

    const-string v22, "photo_100"

    :goto_8
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    const-string v22, "is_admin"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 328
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v6    # "gid":I
    .end local v11    # "jItem":Lorg/json/JSONObject;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 326
    .restart local v6    # "gid":I
    .restart local v11    # "jItem":Lorg/json/JSONObject;
    :cond_d
    const-string v22, "photo_50"

    goto :goto_8

    .line 339
    .end local v6    # "gid":I
    .end local v14    # "length":I
    .restart local v5    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_e
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v22

    goto/16 :goto_4

    .line 342
    .restart local v8    # "it":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/Attachment;

    .line 343
    .local v4, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 344
    check-cast v4, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .end local v4    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v0, v4, Lcom/vkcoffee/android/attachments/ShitAttachment;->statLoadURLs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 345
    .local v9, "it2":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 346
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/vkcoffee/android/data/Analytics;->trackExternal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 364
    .end local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v5    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v7    # "i":I
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "it2":Ljava/util/Iterator;
    .end local v10    # "jGroups":Lorg/json/JSONArray;
    .end local v11    # "jItem":Lorg/json/JSONObject;
    .end local v12    # "jItems":Lorg/json/JSONArray;
    .end local v13    # "jProfiles":Lorg/json/JSONArray;
    .end local v15    # "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .end local v17    # "userNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v18    # "userPhotos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v19    # "userSex":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v20

    .line 365
    .local v20, "x":Ljava/lang/Exception;
    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 366
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 351
    .end local v20    # "x":Ljava/lang/Exception;
    .restart local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v7    # "i":I
    .restart local v10    # "jGroups":Lorg/json/JSONArray;
    .restart local v11    # "jItem":Lorg/json/JSONObject;
    .restart local v12    # "jItems":Lorg/json/JSONArray;
    .restart local v13    # "jProfiles":Lorg/json/JSONArray;
    .restart local v15    # "result":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .restart local v17    # "userNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v18    # "userPhotos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v19    # "userSex":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :cond_10
    :try_start_1
    const-string v22, "friends_recomm"

    const-string v23, "type"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 352
    invoke-static {v11}, Lcom/vkcoffee/android/NewsEntry;->parseFriendsRecomm(Lorg/json/JSONObject;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v5

    .line 353
    .restart local v5    # "e":Lcom/vkcoffee/android/NewsEntry;
    goto/16 :goto_5

    .line 354
    .end local v5    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_11
    new-instance v5, Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v5, v11, v0, v1, v2}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 355
    .restart local v5    # "e":Lcom/vkcoffee/android/NewsEntry;
    iget v0, v5, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move/from16 v22, v0

    if-gez v22, :cond_5

    iget v0, v5, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 356
    iget v0, v5, Lcom/vkcoffee/android/NewsEntry;->flags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x40

    move/from16 v0, v22

    iput v0, v5, Lcom/vkcoffee/android/NewsEntry;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method public parseNotifications(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .locals 11
    .param p1, "newsEntries"    # Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    .param p2, "jResponse"    # Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 178
    const-string v3, "notifications"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_get_notify_app"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    .end local p1    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    const-string v3, "next_from"

    invoke-virtual {p2, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local p1    # "newsEntries":Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;
    :cond_0
    const-string v3, "notifications"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/data/UserNotification;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/UserNotification;>;"
    if-eqz v2, :cond_1

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    .line 186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 193
    .end local v1    # "i":I
    .end local v2    # "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/UserNotification;>;"
    :cond_1
    return-object p1

    .line 187
    .restart local v1    # "i":I
    .restart local v2    # "notifications":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/UserNotification;>;"
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/UserNotification;

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lcom/vkcoffee/android/data/UserNotification;)V

    .line 188
    .local v0, "entry":Lcom/vkcoffee/android/NewsEntry;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, v1, v3

    iput v3, v0, Lcom/vkcoffee/android/NewsEntry;->order_position:I

    .line 189
    iget-object v3, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
