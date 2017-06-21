.class final Lcom/vkcoffee/android/LongPollService$6;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->updateCounters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 765
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 725
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LongPollService$6;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 728
    :try_start_0
    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 729
    .local v2, "r":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 730
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "r":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 732
    .restart local v2    # "r":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v6, "friends"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 733
    .local v1, "numReqs":I
    sget v6, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    if-eq v1, v6, :cond_1

    .line 734
    sput v1, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    .line 735
    sget v6, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    invoke-static {v6}, Lcom/vkcoffee/android/data/Friends;->notifyRequestsChanged(I)V

    .line 737
    :cond_1
    const-string/jumbo v6, "notifications"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/vkcoffee/android/LongPollService;->numNotifications:I

    .line 738
    const-string/jumbo v6, "groups"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/vkcoffee/android/LongPollService;->numGroupInvitations:I

    .line 739
    const-string/jumbo v6, "messages"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 740
    .local v0, "numMsgs":I
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v6

    if-eq v0, v6, :cond_2

    .line 741
    const/4 v6, 0x1

    sput-boolean v6, Lcom/vkcoffee/android/LongPollService;->needReloadDialogs:Z

    .line 742
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.vkcoffee.android.REFRESH_DIALOGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 743
    invoke-static {v0}, Lcom/vkcoffee/android/LongPollService;->setNumNewMessages(I)V

    .line 747
    :cond_2
    invoke-static {v2}, Lcom/vkcoffee/android/LongPollService;->parseCountersInfo(Lorg/json/JSONObject;)V

    .line 748
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->notifyCountersChanged()V

    .line 750
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "forceHTTPS"

    const-string/jumbo v8, "https_required"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_3

    move v4, v5

    :cond_3
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 751
    const-string/jumbo v4, "https_required"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 752
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "useHTTPS"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 754
    :cond_4
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "intro"

    const-string/jumbo v6, "intro"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 755
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.vkcoffee.android.COUNTERS_UPDATED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v0    # "numMsgs":I
    .end local v1    # "numReqs":I
    .end local v2    # "r":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v3

    .line 758
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
