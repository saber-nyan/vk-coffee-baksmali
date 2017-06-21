.class public Lcom/vkcoffee/android/data/Games;
.super Ljava/lang/Object;
.source "Games.java"


# static fields
.field public static final ACTION_HIDE_REQUEST:Ljava/lang/String; = "com.vkcoffee.android.games.HIDE_REQUEST"

.field public static final ACTION_HIDE_REQUEST_ALL:Ljava/lang/String; = "com.vkcoffee.android.games.HIDE_REQUEST_ALL"

.field public static final ACTION_RELOAD_INSTALLED:Ljava/lang/String; = "com.vkcoffee.android.games.RELOAD_INSTALLED"

.field public static final ACTION_RELOAD_REQUESTS:Ljava/lang/String; = "com.vkcoffee.android.games.RELOAD_REQUESTS"

.field private static final KEY_REQUEST:Ljava/lang/String; = "com.vkcoffee.android.games.REQUEST_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decreaseAppsCounter()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumAppRequests()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vkcoffee/android/LongPollService;->setNumAppRequests(I)V

    .line 134
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->notifyCountersChanged()V

    .line 135
    return-void
.end method

.method public static getRequestFromIntent(Landroid/content/Intent;)Lcom/vkcoffee/android/data/GameRequest;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const-string/jumbo v0, "com.vkcoffee.android.games.REQUEST_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/GameRequest;

    return-object v0
.end method

.method public static hideRequest(Landroid/content/Context;Lcom/vkcoffee/android/data/GameRequest;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/vkcoffee/android/data/GameRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 34
    if-eqz p1, :cond_0

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.games.HIDE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.vkcoffee.android.games.REQUEST_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 39
    iget-object v1, p1, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;

    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;-><init>([I)V

    new-instance v2, Lcom/vkcoffee/android/data/Games$1;

    invoke-direct {v2}, Lcom/vkcoffee/android/data/Games$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v3, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static hideRequestAll(Landroid/content/Context;Lcom/vkcoffee/android/data/GameRequest;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/vkcoffee/android/data/GameRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.games.HIDE_REQUEST_ALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.vkcoffee.android.games.REQUEST_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 56
    iget-object v1, p1, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;

    iget-object v2, p1, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;-><init>([I)V

    new-instance v2, Lcom/vkcoffee/android/data/Games$2;

    invoke-direct {v2}, Lcom/vkcoffee/android/data/Games$2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v3, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static isAppInstalledOnDevice(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "x":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method static nullAppsCounter()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/LongPollService;->setNumAppRequests(I)V

    .line 139
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->notifyCountersChanged()V

    .line 140
    return-void
.end method

.method public static open(Lcom/vkcoffee/android/data/ApiApplication;Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "app"    # Lcom/vkcoffee/android/data/ApiApplication;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "act"    # Landroid/app/Activity;
    .param p3, "vs"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cs"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "act"    # Landroid/app/Activity;
    .param p3, "id"    # I
    .param p4, "vs"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "cs"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 86
    :cond_0
    const-string/jumbo v8, "No platform_id, can\'t start app!"

    const/4 v9, 0x0

    invoke-static {p2, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 130
    :goto_0
    return-void

    .line 90
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 91
    .local v5, "mgr":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 93
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const/16 v8, 0x80

    :try_start_1
    invoke-virtual {v5, p0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 97
    :goto_1
    if-eqz v3, :cond_4

    .line 98
    :try_start_2
    invoke-virtual {v5, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 99
    .local v4, "launcherIntent":Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " has no launchable activities"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p2, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 126
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "launcherIntent":Landroid/content/Intent;
    .end local v5    # "mgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    .line 127
    .local v7, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "vk"

    invoke-static {v8, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    const v8, 0x7f080165

    const/4 v9, 0x0

    invoke-static {p2, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    .end local v7    # "x":Ljava/lang/Exception;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    .restart local v4    # "launcherIntent":Landroid/content/Intent;
    .restart local v5    # "mgr":Landroid/content/pm/PackageManager;
    :cond_2
    if-eqz p1, :cond_3

    .line 104
    :try_start_3
    invoke-virtual {v4, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 106
    :cond_3
    const-string/jumbo v8, "auth_user_id"

    sget v9, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 108
    const-string/jumbo v1, "game_launch"

    .line 119
    .end local v4    # "launcherIntent":Landroid/content/Intent;
    .local v1, "action":Ljava/lang/String;
    :goto_2
    const-string/jumbo v8, "games_action"

    invoke-static {v8}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    const-string/jumbo v9, "visit_source"

    .line 120
    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    const-string/jumbo v9, "click_source"

    .line 121
    move-object/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    const-string/jumbo v9, "action_type"

    .line 122
    invoke-virtual {v8, v9, v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    const-string/jumbo v9, "game_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-virtual {v8, v9, v10}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v9

    const-string/jumbo v10, "request_name"

    if-eqz p1, :cond_5

    const-string/jumbo v8, "name"

    .line 124
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v10, v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    .line 125
    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    goto/16 :goto_0

    .line 110
    .end local v1    # "action":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "utm_source=vk&utm_campaign="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "utm":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    .line 113
    :try_start_4
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "market://details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&referrer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    :goto_4
    :try_start_5
    const-string/jumbo v1, "game_install"

    .restart local v1    # "action":Ljava/lang/String;
    goto/16 :goto_2

    .line 114
    .end local v1    # "action":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 115
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&referrer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 124
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v6    # "utm":Ljava/lang/String;
    .restart local v1    # "action":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 94
    .end local v1    # "action":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method
