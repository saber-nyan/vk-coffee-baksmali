.class Lcom/vkcoffee/android/Auth$1;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z
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
.field private final synthetic val$result:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/Auth$1;->val$result:[Z

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const/4 v2, 0x0

    .line 365
    const-string v0, "vk"

    const-string v1, "Get user info FAILED!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/vkcoffee/android/Auth$1;->val$result:[Z

    aput-boolean v2, v0, v2

    .line 367
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V
    .locals 9
    .param p1, "r"    # Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    .prologue
    const/4 v7, 0x0

    .line 345
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 346
    .local v2, "prefs":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    .local v1, "generalPress":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "username"

    iget-object v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "userphoto"

    iget-object v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->photo:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "userstatus"

    iget-object v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->status:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "usercountry"

    iget v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->country:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "usersex"

    iget-boolean v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->f:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "intro"

    iget v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->intro:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "export_twitter_avail"

    iget-boolean v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->exportTwi:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "export_facebook_avail"

    iget-boolean v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->exportFb:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "ads_stoplist"

    new-instance v7, Lorg/json/JSONArray;

    iget-object v8, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->adsFilter:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "allow_buy_votes"

    iget-boolean v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->allowBuyVotes:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "support_url"

    iget-object v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->supportUrl:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "use_vigo"

    iget-boolean v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->useVigo:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "vigo_connect_timeout"

    iget v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->vigoConnectTimeout:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "vigo_read_timeout"

    iget v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->vigoReadTimeout:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "gif_autoplay_available"

    iget-boolean v7, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->gifAutoplayAvailable:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 349
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v3

    .line 350
    .local v3, "stickers":Lcom/vkcoffee/android/stickers/Stickers;
    iget v5, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->numNewStickers:I

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/stickers/Stickers;->setNumNewItems(I)V

    .line 351
    iget v5, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->stickersUpdates:I

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/stickers/Stickers;->setNumUpdates(I)V

    .line 353
    :try_start_0
    new-instance v0, Landroid/accounts/Account;

    iget-object v5, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->name:Ljava/lang/String;

    const-string v6, "com.vkcoffee.account"

    invoke-direct {v0, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v0, "account":Landroid/accounts/Account;
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v6, v7}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 355
    const-string v5, "com.android.contacts"

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_0
    iget-boolean v5, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->needUpdateGoogleNow:Z

    if-eqz v5, :cond_0

    .line 360
    invoke-static {}, Lcom/vkcoffee/android/GoogleNow;->updateTokenAsync()V

    .line 362
    :cond_0
    return-void

    .line 356
    :catch_0
    move-exception v4

    .line 357
    .local v4, "x":Ljava/lang/Throwable;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/Auth$1;->success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V

    return-void
.end method
