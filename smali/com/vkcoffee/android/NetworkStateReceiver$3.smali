.class Lcom/vkcoffee/android/NetworkStateReceiver$3;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/NetworkStateReceiver$3;->val$context:Landroid/content/Context;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4

    .prologue
    .line 281
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->access$1()[I

    move-result-object v1

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->access$2()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x5

    aget v1, v1, v2

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->access$310()I

    .line 286
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->access$2()I

    move-result v1

    if-lez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/vkcoffee/android/NetworkStateReceiver$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vkcoffee/android/NetworkStateReceiver;->access$3(Landroid/content/Context;)V

    .line 291
    :goto_1
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 289
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/vkcoffee/android/NetworkStateReceiver;->access$4(I)V

    goto :goto_1
.end method

.method public success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V
    .locals 12
    .param p1, "r"    # Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    .prologue
    const/4 v5, 0x2

    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 224
    sput-boolean v6, Lcom/vkcoffee/android/NetworkStateReceiver;->userInfoUpdated:Z

    .line 225
    iget-object v7, p0, Lcom/vkcoffee/android/NetworkStateReceiver$3;->val$context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 226
    .local v3, "prefs":Landroid/content/SharedPreferences;
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    .local v1, "generalPress":Landroid/content/SharedPreferences;
    iget v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->time:I

    invoke-static {v7}, Lcom/vkcoffee/android/TimeUtils;->setServerTime(I)V

    .line 228
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "usercountry"

    iget v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->country:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "username"

    iget-object v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "userphoto"

    iget-object v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->photo:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "userstatus"

    iget-object v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->status:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "time_diff"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "export_twitter_avail"

    iget-boolean v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->exportTwi:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "export_facebook_avail"

    iget-boolean v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->exportFb:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "usersex"

    iget-boolean v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->f:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "intro"

    iget v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->intro:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ads_stoplist"

    new-instance v9, Lorg/json/JSONArray;

    iget-object v10, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->adsFilter:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "allow_buy_votes"

    iget-boolean v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->allowBuyVotes:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "support_url"

    iget-object v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->supportUrl:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "use_vigo"

    iget-boolean v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->useVigo:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "vigo_connect_timeout"

    iget v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->vigoConnectTimeout:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "vigo_read_timeout"

    iget v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->vigoReadTimeout:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "gif_autoplay_available"

    iget-boolean v9, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->gifAutoplayAvailable:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    invoke-static {}, Lru/mail/android/mytracker/MRMyTracker;->getTrackerParams()Lru/mail/android/mytracker/MRMyTrackerParams;

    move-result-object v7

    invoke-virtual {v7}, Lru/mail/android/mytracker/MRMyTrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    .line 231
    .local v0, "customParams":Lru/mail/android/mytracker/providers/CustomParamsDataProvider;
    new-instance v7, Ljava/lang/StringBuilder;

    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->setVKId(Ljava/lang/String;)V

    .line 232
    iget-object v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->bdate:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    iget-object v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->bdate:Ljava/lang/String;

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "parts":[Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 235
    aget-object v7, v2, v11

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v2, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/vkcoffee/android/TimeUtils;->getAge(III)I

    move-result v7

    invoke-virtual {v0, v7}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->setAge(I)V

    .line 238
    .end local v2    # "parts":[Ljava/lang/String;
    :cond_0
    iget-boolean v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->f:Z

    if-eqz v7, :cond_2

    :goto_0
    invoke-virtual {v0, v5}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->setGender(I)V

    .line 239
    invoke-static {}, Lru/mail/android/mytracker/MRMyTracker;->getTrackerParams()Lru/mail/android/mytracker/MRMyTrackerParams;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/NetworkStateReceiver$3;->val$context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "mytrackerLocationCrapEnabled"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lru/mail/android/mytracker/MRMyTrackerParams;->setTrackingLocationEnabled(Z)V

    .line 240
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v4

    .line 241
    .local v4, "stickers":Lcom/vkcoffee/android/stickers/Stickers;
    iget v5, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->numNewStickers:I

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/stickers/Stickers;->setNumNewItems(I)V

    .line 242
    iget v5, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->stickersUpdates:I

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/stickers/Stickers;->setNumUpdates(I)V

    .line 243
    iget-object v5, p0, Lcom/vkcoffee/android/NetworkStateReceiver$3;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/vkcoffee/android/NetworkStateReceiver;->access$0(Landroid/content/Context;)V

    .line 244
    iget-boolean v5, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->needUpdateGoogleNow:Z

    if-eqz v5, :cond_1

    .line 245
    invoke-static {}, Lcom/vkcoffee/android/GoogleNow;->updateTokenAsync()V

    .line 277
    :cond_1
    return-void

    .end local v4    # "stickers":Lcom/vkcoffee/android/stickers/Stickers;
    :cond_2
    move v5, v6

    .line 238
    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/NetworkStateReceiver$3;->success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V

    return-void
.end method
