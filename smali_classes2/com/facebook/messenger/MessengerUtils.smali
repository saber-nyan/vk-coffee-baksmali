.class public Lcom/facebook/messenger/MessengerUtils;
.super Ljava/lang/Object;
.source "MessengerUtils.java"


# static fields
.field public static final EXTRA_APP_ID:Ljava/lang/String; = "com.facebook.orca.extra.APPLICATION_ID"

.field public static final EXTRA_EXTERNAL_URI:Ljava/lang/String; = "com.facebook.orca.extra.EXTERNAL_URI"

.field public static final EXTRA_IS_COMPOSE:Ljava/lang/String; = "com.facebook.orca.extra.IS_COMPOSE"

.field public static final EXTRA_IS_REPLY:Ljava/lang/String; = "com.facebook.orca.extra.IS_REPLY"

.field public static final EXTRA_METADATA:Ljava/lang/String; = "com.facebook.orca.extra.METADATA"

.field public static final EXTRA_PARTICIPANTS:Ljava/lang/String; = "com.facebook.orca.extra.PARTICIPANTS"

.field public static final EXTRA_PROTOCOL_VERSION:Ljava/lang/String; = "com.facebook.orca.extra.PROTOCOL_VERSION"

.field public static final EXTRA_REPLY_TOKEN_KEY:Ljava/lang/String; = "com.facebook.orca.extra.REPLY_TOKEN"

.field public static final EXTRA_THREAD_TOKEN_KEY:Ljava/lang/String; = "com.facebook.orca.extra.THREAD_TOKEN"

.field public static final ORCA_THREAD_CATEGORY_20150314:Ljava/lang/String; = "com.facebook.orca.category.PLATFORM_THREAD_20150314"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.facebook.orca"

.field public static final PROTOCOL_VERSION_20150314:I = 0x133782a

.field private static final TAG:Ljava/lang/String; = "MessengerUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishShareToMessenger(Landroid/app/Activity;Lcom/facebook/messenger/ShareToMessengerParams;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareToMessengerParams"    # Lcom/facebook/messenger/ShareToMessengerParams;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 200
    .local v2, "originalIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 201
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 203
    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 231
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string/jumbo v5, "com.facebook.orca.category.PLATFORM_THREAD_20150314"

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    invoke-static {v2}, Lbolts/AppLinks;->getAppLinkExtras(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, "appLinkExtras":Landroid/os/Bundle;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v5, "com.facebook.orca.category.PLATFORM_THREAD_20150314"

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    const-string/jumbo v5, "com.facebook.orca.extra.PROTOCOL_VERSION"

    const v6, 0x133782a

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string/jumbo v5, "com.facebook.orca.extra.THREAD_TOKEN"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "threadToken":Ljava/lang/String;
    const-string/jumbo v5, "com.facebook.orca.extra.THREAD_TOKEN"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v5, p1, Lcom/facebook/messenger/ShareToMessengerParams;->uri:Landroid/net/Uri;

    iget-object v6, p1, Lcom/facebook/messenger/ShareToMessengerParams;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    const-string/jumbo v5, "com.facebook.orca.extra.APPLICATION_ID"

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v5, "com.facebook.orca.extra.METADATA"

    iget-object v6, p1, Lcom/facebook/messenger/ShareToMessengerParams;->metaData:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v5, "com.facebook.orca.extra.EXTERNAL_URI"

    iget-object v6, p1, Lcom/facebook/messenger/ShareToMessengerParams;->externalUri:Landroid/net/Uri;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 217
    .end local v4    # "threadToken":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v5

    .line 228
    .end local v0    # "appLinkExtras":Landroid/os/Bundle;
    .end local v3    # "resultIntent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private static getAllAvailableProtocolVersions(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 264
    .local v6, "allAvailableVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string/jumbo v4, "content://com.facebook.orca.provider.MessengerPlatformProvider/versions"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 265
    .local v1, "uri":Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "version"

    aput-object v5, v2, v4

    .local v2, "projection":[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 266
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 267
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 269
    :try_start_0
    const-string/jumbo v3, "version"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 270
    .local v9, "versionColumnIndex":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 272
    .local v8, "version":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    .end local v8    # "version":I
    .end local v9    # "versionColumnIndex":I
    :catchall_0
    move-exception v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v9    # "versionColumnIndex":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 278
    .end local v9    # "versionColumnIndex":I
    :cond_1
    return-object v6
.end method

.method public static getMessengerThreadParamsForIntent(Landroid/content/Intent;)Lcom/facebook/messenger/MessengerThreadParams;
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 162
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 163
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v8

    .line 166
    :cond_1
    const-string/jumbo v9, "com.facebook.orca.category.PLATFORM_THREAD_20150314"

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    invoke-static {p0}, Lbolts/AppLinks;->getAppLinkExtras(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "appLinkExtras":Landroid/os/Bundle;
    const-string/jumbo v8, "com.facebook.orca.extra.THREAD_TOKEN"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "threadToken":Ljava/lang/String;
    const-string/jumbo v8, "com.facebook.orca.extra.METADATA"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "metadata":Ljava/lang/String;
    const-string/jumbo v8, "com.facebook.orca.extra.PARTICIPANTS"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "participants":Ljava/lang/String;
    const-string/jumbo v8, "com.facebook.orca.extra.IS_REPLY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 172
    .local v3, "isReply":Z
    const-string/jumbo v8, "com.facebook.orca.extra.IS_COMPOSE"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 173
    .local v2, "isCompose":Z
    sget-object v5, Lcom/facebook/messenger/MessengerThreadParams$Origin;->UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 174
    .local v5, "origin":Lcom/facebook/messenger/MessengerThreadParams$Origin;
    if-eqz v3, :cond_3

    .line 175
    sget-object v5, Lcom/facebook/messenger/MessengerThreadParams$Origin;->REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 180
    :cond_2
    :goto_1
    new-instance v8, Lcom/facebook/messenger/MessengerThreadParams;

    .line 184
    invoke-static {v6}, Lcom/facebook/messenger/MessengerUtils;->parseParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v5, v7, v4, v9}, Lcom/facebook/messenger/MessengerThreadParams;-><init>(Lcom/facebook/messenger/MessengerThreadParams$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 176
    :cond_3
    if-eqz v2, :cond_2

    .line 177
    sget-object v5, Lcom/facebook/messenger/MessengerThreadParams$Origin;->COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    goto :goto_1
.end method

.method public static hasMessengerInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 241
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.facebook.orca"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    const/4 v1, 0x1

    .line 244
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static openMessengerInPlayStore(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    :try_start_0
    const-string/jumbo v1, "market://details?id=com.facebook.orca"

    invoke-static {p0, v1}, Lcom/facebook/messenger/MessengerUtils;->startViewUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "http://play.google.com/store/apps/details?id=com.facebook.orca"

    invoke-static {p0, v1}, Lcom/facebook/messenger/MessengerUtils;->startViewUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseParticipants(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 287
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 294
    :cond_1
    return-object v2

    .line 289
    :cond_2
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "parts":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 292
    .local v0, "part":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static shareToMessenger(Landroid/app/Activity;ILcom/facebook/messenger/ShareToMessengerParams;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "shareToMessengerParams"    # Lcom/facebook/messenger/ShareToMessengerParams;

    .prologue
    .line 114
    invoke-static {p0}, Lcom/facebook/messenger/MessengerUtils;->hasMessengerInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-static {p0}, Lcom/facebook/messenger/MessengerUtils;->openMessengerInPlayStore(Landroid/content/Context;)V

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {p0}, Lcom/facebook/messenger/MessengerUtils;->getAllAvailableProtocolVersions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 120
    .local v0, "allAvailableVersions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const v1, 0x133782a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {p0, p1, p2}, Lcom/facebook/messenger/MessengerUtils;->shareToMessenger20150314(Landroid/app/Activity;ILcom/facebook/messenger/ShareToMessengerParams;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p0}, Lcom/facebook/messenger/MessengerUtils;->openMessengerInPlayStore(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static shareToMessenger20150314(Landroid/app/Activity;ILcom/facebook/messenger/ShareToMessengerParams;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "shareToMessengerParams"    # Lcom/facebook/messenger/ShareToMessengerParams;

    .prologue
    .line 133
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v3, "shareIntent":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const-string/jumbo v4, "com.facebook.orca"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v4, "android.intent.extra.STREAM"

    iget-object v5, p2, Lcom/facebook/messenger/ShareToMessengerParams;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    iget-object v4, p2, Lcom/facebook/messenger/ShareToMessengerParams;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "appId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 140
    const-string/jumbo v4, "com.facebook.orca.extra.PROTOCOL_VERSION"

    const v5, 0x133782a

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string/jumbo v4, "com.facebook.orca.extra.APPLICATION_ID"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v4, "com.facebook.orca.extra.METADATA"

    iget-object v5, p2, Lcom/facebook/messenger/ShareToMessengerParams;->metaData:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v4, "com.facebook.orca.extra.EXTERNAL_URI"

    iget-object v5, p2, Lcom/facebook/messenger/ShareToMessengerParams;->externalUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    :cond_0
    invoke-virtual {p0, v3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "appId":Ljava/lang/String;
    .end local v3    # "shareIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.facebook.orca"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 149
    .local v2, "openMessenger":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static startViewUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void
.end method
