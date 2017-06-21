.class public Lcom/vkcoffee/android/LinkRedirActivity;
.super Landroid/app/Activity;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/ResulterProvider;


# static fields
.field private static final NOT_DOMAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private forceInternal:Z

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field private mResulters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/ActivityResulter;",
            ">;"
        }
    .end annotation
.end field

.field private otherApp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "/settings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "/edit"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/LinkRedirActivity;->NOT_DOMAINS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/LinkRedirActivity;->forceInternal:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/LinkRedirActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/LinkRedirActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/LinkRedirActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity;->openChat(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/LinkRedirActivity;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/LinkRedirActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static addCustomTabsExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1418
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "useChromeCustomTabs"

    invoke-interface {v9, v10, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1419
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 1420
    .local v5, "rand":Ljava/util/Random;
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    new-array v6, v9, [C

    .line 1421
    .local v6, "randomDomain":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v6

    if-lt v3, v9, :cond_4

    .line 1424
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1425
    .local v1, "defBrowser":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 1426
    .local v2, "destination":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".vk.com"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "vk.com"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/away"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    const-string v10, "to"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1427
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    const-string v10, "to"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1428
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "___"

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1431
    :cond_1
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    .line 1432
    .local v8, "target":Landroid/content/ComponentName;
    if-eqz v8, :cond_2

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1433
    :cond_2
    const-string v9, "android.support.customtabs.extra.SESSION"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1434
    const-string v9, "android.support.customtabs.extra.TOOLBAR_COLOR"

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0012

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1435
    const-string v9, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {p0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1436
    new-instance v7, Landroid/content/Intent;

    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v10, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1437
    .local v7, "share":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020023

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 1439
    .local v4, "icon":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1440
    .local v0, "btnBundle":Landroid/os/Bundle;
    const-string v9, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1441
    const-string v9, "android.support.customtabs.customaction.PENDING_INTENT"

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v10, v13, v7, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1442
    const-string v9, "android.support.customtabs.customaction.DESCRIPTION"

    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v11, 0x7f08053a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v9, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {p0, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1446
    .end local v0    # "btnBundle":Landroid/os/Bundle;
    .end local v1    # "defBrowser":Landroid/content/ComponentName;
    .end local v2    # "destination":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "rand":Ljava/util/Random;
    .end local v6    # "randomDomain":[C
    .end local v7    # "share":Landroid/content/Intent;
    .end local v8    # "target":Landroid/content/ComponentName;
    :cond_3
    return-object p0

    .line 1422
    .restart local v3    # "i":I
    .restart local v5    # "rand":Ljava/util/Random;
    .restart local v6    # "randomDomain":[C
    :cond_4
    const/16 v9, 0x1a

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x61

    int-to-char v9, v9

    aput-char v9, v6, v3

    .line 1421
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public static createIntentForNotification(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "lastUserId"

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private openBrowser(Landroid/net/Uri;)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1354
    const-string v8, "new.vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "m.vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "vkontakte.ru"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "no_browser"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1356
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1358
    .local v0, "builder":Landroid/net/Uri$Builder;
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8, v13, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "forceHTTPS"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1359
    const-string v6, "https"

    .line 1364
    .local v6, "type":Ljava/lang/String;
    :goto_0
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "awayPHP"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1365
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v8, v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v8}, Lcom/vkcoffee/android/LinkRedirActivity;->addCustomTabsExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 1432
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1361
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    const-string v6, "http"

    .restart local v6    # "type":Ljava/lang/String;
    goto :goto_0

    .line 1367
    :cond_2
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "m.vk.com"

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "/away"

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "to"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "utf"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v8}, Lcom/vkcoffee/android/LinkRedirActivity;->addCustomTabsExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1370
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "type":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "no_browser"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1372
    iget-boolean v8, p0, Lcom/vkcoffee/android/LinkRedirActivity;->forceInternal:Z

    if-eqz v8, :cond_5

    .line 1373
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/vkcoffee/android/ValidationActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1374
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "device_token"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1376
    const-string v8, "device_token"

    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "device_token"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    :cond_4
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1382
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unrecognized link: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v8, "vkontakte"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "vk"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1384
    :cond_6
    const-string v8, "m.vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1385
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 1390
    :cond_7
    move-object v4, p1

    .line 1391
    .local v4, "orig":Landroid/net/Uri;
    const-string v8, "new.vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "m.vk.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "vkontakte.ru"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1392
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8, v13, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "forceHTTPS"

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "https"

    :goto_2
    invoke-virtual {v9, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 1400
    :goto_3
    const/4 v7, 0x0

    .line 1401
    .local v7, "unsupportedLink":Z
    iget-boolean v8, p0, Lcom/vkcoffee/android/LinkRedirActivity;->otherApp:Z

    if-eqz v8, :cond_a

    const-string v8, "new.vk.com"

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "vk.com"

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "m.vk.com"

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "vkontakte.ru"

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1402
    :cond_9
    const/4 v7, 0x1

    .line 1404
    :cond_a
    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1405
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_11

    .line 1406
    const/4 v1, 0x0

    .line 1407
    .local v1, "foundSelf":Z
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1408
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_f

    .line 1418
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_11

    if-eqz v1, :cond_11

    .line 1419
    const v8, 0x7f080165

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1392
    .end local v1    # "foundSelf":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "unsupportedLink":Z
    :cond_b
    const-string v8, "http"

    goto :goto_2

    .line 1394
    :cond_c
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "awayPHP"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1395
    move-object p1, v4

    .line 1396
    goto/16 :goto_3

    .line 1397
    :cond_d
    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8, v13, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "forceHTTPS"

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "https"

    :goto_5
    invoke-virtual {v9, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "utf"

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto/16 :goto_3

    :cond_e
    const-string v8, "http"

    goto :goto_5

    .line 1408
    .restart local v1    # "foundSelf":Z
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "unsupportedLink":Z
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1409
    .local v2, "info2":Landroid/content/pm/ResolveInfo;
    const-string v9, "com.vkcoffee.android"

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1410
    const/4 v1, 0x1

    .line 1411
    goto/16 :goto_4

    .line 1412
    :cond_10
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    invoke-static {v3}, Lcom/vkcoffee/android/LinkRedirActivity;->addCustomTabsExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1414
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1423
    .end local v1    # "foundSelf":Z
    .end local v2    # "info2":Landroid/content/pm/ResolveInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_11
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1424
    .restart local v3    # "intent":Landroid/content/Intent;
    if-eqz v7, :cond_12

    .line 1425
    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    const-string v11, "http://vk.qwe"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1426
    .restart local v2    # "info2":Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1428
    .end local v2    # "info2":Landroid/content/pm/ResolveInfo;
    :cond_12
    invoke-static {v3}, Lcom/vkcoffee/android/LinkRedirActivity;->addCustomTabsExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1429
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private openChat(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const v3, 0x77359400

    .line 1367
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1368
    .local v1, "progress":Landroid/app/ProgressDialog;
    const v2, 0x7f080293

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1369
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1370
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1371
    if-ge p1, v3, :cond_0

    .line 1372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    invoke-static {p0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 1393
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 1386
    :cond_0
    sub-int v2, p1, v3

    invoke-static {p0, v1, p1}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;I)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/data/Messages;->getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "param"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 1421
    if-nez p0, :cond_0

    .line 1427
    :goto_0
    return v1

    .line 1425
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1426
    :catch_0
    move-exception v0

    .line 1427
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private safeParseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1342
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1345
    :goto_0
    return v0

    .line 1343
    :catch_0
    move-exception v0

    .line 1345
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$null$643(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1102
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 1103
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1104
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;)V

    .line 1108
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1109
    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1110
    return-void

    .line 1106
    :cond_0
    const v0, 0x7f080165

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method synthetic lambda$null$647(Ljava/util/ArrayList;Landroid/app/ProgressDialog;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1375
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1376
    const v1, 0x7f080162

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1381
    :goto_0
    invoke-static {p2}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 1382
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1383
    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1384
    return-void

    .line 1378
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 1379
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v3, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method

.method synthetic lambda$null$649(Landroid/app/ProgressDialog;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1387
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 1388
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    invoke-direct {v0, p2, p3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 1389
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1390
    invoke-virtual {p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1391
    return-void
.end method

.method synthetic lambda$onCreate$644(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 1101
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;Ljava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$openChat$648(Landroid/app/ProgressDialog;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 1374
    invoke-static {p0, p2, p1}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Ljava/util/ArrayList;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$openChat$650(Landroid/app/ProgressDialog;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "users"    # Ljava/util/ArrayList;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "photo"    # Ljava/lang/String;

    .prologue
    .line 1386
    invoke-static {p0, p1, p2, p4}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1397
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1398
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity;->mResulters:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1399
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity;->mResulters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ActivityResulter;

    .line 1400
    .local v0, "resulter":Lcom/vkcoffee/android/ui/ActivityResulter;
    invoke-interface {v0, p1, p2, p3}, Lcom/vkcoffee/android/ui/ActivityResulter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1403
    .end local v0    # "resulter":Lcom/vkcoffee/android/ui/ActivityResulter;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 59
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vkcoffee/android/LinkRedirActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "lastUserId"

    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v5, v6, :cond_2

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 109
    new-instance v27, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/vkcoffee/android/MainActivity;

    move-object/from16 v0, v27

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v27, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v27    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string/jumbo v6, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    const-class v5, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 124
    .local v20, "data":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_4

    .line 125
    const v5, 0x7f080165

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto :goto_0

    .line 131
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v53

    .line 134
    .local v53, "url":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 135
    new-instance v27, Landroid/content/Intent;

    const-class v5, Lcom/vkcoffee/android/SendActivity;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .restart local v27    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.TEXT"

    move-object/from16 v0, v27

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v5, "_internal"

    const/4 v6, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string/jumbo v5, "text/plain"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 144
    .end local v27    # "intent":Landroid/content/Intent;
    :cond_5
    const-string/jumbo v5, "content"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 146
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "data1"

    aput-object v9, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 147
    .local v19, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    const-string/jumbo v5, "data1"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 149
    .local v51, "uid":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, "ctype":Ljava/lang/String;
    const-string/jumbo v5, "vnd.android.cursor.item/vnd.com.vkcoffee.android.profile"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 151
    new-instance v5, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    move/from16 v0, v51

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 156
    .end local v18    # "ctype":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v51    # "uid":I
    :catch_0
    move-exception v56

    .line 157
    .local v56, "x":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 153
    .end local v56    # "x":Ljava/lang/Exception;
    .restart local v18    # "ctype":Ljava/lang/String;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .restart local v51    # "uid":I
    :cond_6
    :try_start_1
    const-string/jumbo v5, "vnd.android.cursor.item/vnd.com.vkcoffee.android.sendmsg"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->openChat(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 160
    .end local v18    # "ctype":Ljava/lang/String;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v51    # "uid":I
    :cond_7
    const-string/jumbo v5, "vklink"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 161
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\?"

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v53, v5, v6

    .line 162
    const-string/jumbo v5, "internal"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/vkcoffee/android/LinkRedirActivity;->forceInternal:Z

    .line 163
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/vkcoffee/android/LinkRedirActivity;->forceInternal:Z

    if-eqz v5, :cond_13

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "token"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-static {v5, v0}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->verifyToken(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 173
    :cond_8
    const-string/jumbo v5, "vkontakte"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "vk"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 174
    :cond_9
    const-string/jumbo v5, "profile"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 175
    new-instance v6, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v6, v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 178
    :cond_a
    const-string/jumbo v5, "search"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 179
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    .line 180
    .local v22, "dt":Ljava/lang/String;
    const-string/jumbo v5, "/"

    const/4 v6, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v42, v5, v6

    .line 181
    .local v42, "q":Ljava/lang/String;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v15, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "q"

    move-object/from16 v0, v42

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-class v5, Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 186
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v22    # "dt":Ljava/lang/String;
    .end local v42    # "q":Ljava/lang/String;
    :cond_b
    const-string/jumbo v5, "chat"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 187
    const-string/jumbo v5, "peer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v51

    .line 188
    .restart local v51    # "uid":I
    new-instance v16, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    const-string/jumbo v5, "title"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move/from16 v1, v51

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    .line 189
    .local v16, "builder":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    const v5, 0x77359400

    move/from16 v0, v51

    if-ge v0, v5, :cond_c

    .line 190
    const-string/jumbo v5, "photo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    .line 192
    :cond_c
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v27

    .line 193
    .restart local v27    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->isInBackground()Z

    move-result v5

    if-nez v5, :cond_d

    .line 194
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 198
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 196
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 200
    .end local v16    # "builder":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v51    # "uid":I
    :cond_e
    const-string/jumbo v5, "reply"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 201
    const-string/jumbo v45, ""

    .line 202
    .local v45, "s":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v56

    .line 203
    .local v56, "x":Landroid/os/Bundle;
    const-string/jumbo v5, "hash"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 204
    .local v26, "hash":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "msg_reply_hash"

    const-string/jumbo v8, ""

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 205
    .local v44, "rhash":Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 207
    const-string/jumbo v5, "peer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v36

    .line 208
    .local v36, "peer":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "voice_reply"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 210
    .local v48, "text":Ljava/lang/String;
    if-eqz v36, :cond_f

    .line 211
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v48

    invoke-static {v0, v1, v5, v6, v8}, Lcom/vkcoffee/android/data/Messages;->send(ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vkcoffee/android/Message;

    .line 214
    .end local v36    # "peer":I
    .end local v48    # "text":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 216
    .end local v26    # "hash":Ljava/lang/String;
    .end local v44    # "rhash":Ljava/lang/String;
    .end local v45    # "s":Ljava/lang/String;
    .end local v56    # "x":Landroid/os/Bundle;
    :cond_10
    const-string/jumbo v5, "app"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 217
    const-string/jumbo v5, "pkg"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "pkg":Ljava/lang/String;
    const-string/jumbo v5, "id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v7

    .line 219
    .local v7, "id":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "push"

    const-string/jumbo v9, "push"

    move-object/from16 v6, p0

    invoke-static/range {v4 .. v9}, Lcom/vkcoffee/android/data/Games;->open(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 222
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v7    # "id":I
    :cond_11
    const-string/jumbo v5, "new_post"

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 223
    new-instance v16, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct/range {v16 .. v16}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    .line 224
    .local v16, "builder":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->uid(I)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 225
    const-string/jumbo v5, "text"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachText(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 226
    const-string/jumbo v5, "camera"

    const-string/jumbo v6, "attach"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachCamera(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 227
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->isPublic(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 228
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->send(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 229
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 234
    .end local v16    # "builder":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    :cond_12
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/vkcoffee/android/LinkRedirActivity;->otherApp:Z

    .line 236
    :cond_13
    const-string/jumbo v5, "http://"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "https://"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "vkontakte://"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "vk://"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 240
    :cond_14
    invoke-static/range {v53 .. v53}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    .line 242
    .local v52, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "force_browser"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 248
    :cond_15
    const-string/jumbo v5, "vk.me"

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 249
    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v35

    .line 250
    .local v35, "path":Ljava/lang/String;
    const-string/jumbo v5, "^/id[0-9]+$"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 251
    const-string/jumbo v5, "/id([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 252
    .local v41, "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 253
    .local v30, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 254
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v51

    .line 255
    .restart local v51    # "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->openChat(I)V

    goto/16 :goto_0

    .line 256
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v51    # "uid":I
    :cond_16
    const-string/jumbo v5, "^/(club|public|event)[0-9]+$"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 257
    const-string/jumbo v5, "/(?:club|public|event)([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 258
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 259
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 260
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v0, v5

    move/from16 v51, v0

    .line 261
    .restart local v51    # "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->openChat(I)V

    goto/16 :goto_0

    .line 262
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v51    # "uid":I
    :cond_17
    const-string/jumbo v5, "/[A-Za-z0-9\\._]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Lcom/vkcoffee/android/LinkRedirActivity;->NOT_DOMAINS:Ljava/util/List;

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 263
    const-string/jumbo v5, "/([A-Za-z0-9\\._]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 264
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 265
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 266
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v46

    .line 268
    .local v46, "scrName":Ljava/lang/String;
    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v6, "execute.resolveScreenName"

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "screen_name"

    .line 269
    move-object/from16 v0, v46

    invoke-virtual {v5, v6, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$1;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 270
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 299
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 302
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v46    # "scrName":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 308
    .end local v35    # "path":Ljava/lang/String;
    :cond_19
    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "vkontakte.ru"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "vk.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "new.vk.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "m.vk.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "vkontakte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "vk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 309
    :cond_1a
    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v35

    .line 311
    .restart local v35    # "path":Ljava/lang/String;
    const/16 v32, 0x0

    .line 312
    .local v32, "notDomain":Z
    const-string/jumbo v5, "z"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "z"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "\\/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 315
    const/16 v32, 0x1

    .line 322
    :cond_1b
    :goto_2
    const-string/jumbo v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string/jumbo v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 323
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 316
    :cond_1d
    const-string/jumbo v5, "w"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "w"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "\\/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "://vk.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 319
    const/16 v32, 0x1

    goto :goto_2

    .line 328
    :cond_1e
    const-string/jumbo v5, "/apps"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 329
    const-string/jumbo v5, "/app"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/LinkRedirActivity;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 330
    .local v14, "appId":I
    if-eqz v14, :cond_1f

    .line 331
    :goto_3
    if-eqz v14, :cond_20

    .line 333
    :goto_4
    const-string/jumbo v5, "type"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/LinkRedirActivity;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 334
    .local v25, "genreId":I
    if-eqz v25, :cond_21

    .line 336
    :goto_5
    const-string/jumbo v5, "from_notification"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    const/16 v28, 0x1

    .line 337
    .local v28, "isFromPush":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "from_notification"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    or-int v28, v28, v5

    .line 338
    if-eqz v28, :cond_23

    const-string/jumbo v55, "push"

    .line 339
    .local v55, "vs":Ljava/lang/String;
    :goto_7
    if-eqz v25, :cond_24

    .line 340
    new-instance v24, Lcom/vkcoffee/android/data/GameGenre;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/data/GameGenre;-><init>(ILjava/lang/String;)V

    .line 341
    .local v24, "gameGenre":Lcom/vkcoffee/android/data/GameGenre;
    new-instance v17, Lcom/vkcoffee/android/data/CatalogInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/data/CatalogInfo;-><init>(Lcom/vkcoffee/android/data/GameGenre;)V

    .line 342
    .local v17, "catalogInfo":Lcom/vkcoffee/android/data/CatalogInfo;
    const-string/jumbo v5, "push"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v17

    invoke-static {v0, v1, v5, v2}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/CatalogInfo;)V

    .line 349
    .end local v17    # "catalogInfo":Lcom/vkcoffee/android/data/CatalogInfo;
    .end local v24    # "gameGenre":Lcom/vkcoffee/android/data/GameGenre;
    :goto_8
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 330
    .end local v25    # "genreId":I
    .end local v28    # "isFromPush":Z
    .end local v55    # "vs":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v5, "game_id"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/LinkRedirActivity;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_3

    .line 331
    :cond_20
    const-string/jumbo v5, "games_id"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/LinkRedirActivity;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_4

    .line 334
    .restart local v25    # "genreId":I
    :cond_21
    const-string/jumbo v5, "genre_id"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/LinkRedirActivity;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto :goto_5

    .line 336
    :cond_22
    const/16 v28, 0x0

    goto :goto_6

    .line 338
    .restart local v28    # "isFromPush":Z
    :cond_23
    const-string/jumbo v55, "direct"

    goto :goto_7

    .line 343
    .restart local v55    # "vs":Ljava/lang/String;
    :cond_24
    if-eqz v14, :cond_25

    .line 344
    const-string/jumbo v5, "push"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-static {v0, v1, v5, v14}, Lcom/vkcoffee/android/GameCardActivity;->openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8

    .line 346
    :cond_25
    const-class v6, Lcom/vkcoffee/android/fragments/GamesFragment;

    if-eqz v28, :cond_26

    const-string/jumbo v5, "push"

    :goto_9
    invoke-static {v5}, Lcom/vkcoffee/android/fragments/GamesFragment;->createArgs(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v6, v5, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_8

    :cond_26
    const-string/jumbo v5, "direct"

    goto :goto_9

    .line 354
    .end local v14    # "appId":I
    .end local v25    # "genreId":I
    .end local v28    # "isFromPush":Z
    .end local v55    # "vs":Ljava/lang/String;
    :cond_27
    const-string/jumbo v5, "/friends"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 355
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 356
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "requests"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 357
    const-class v5, Lcom/vkcoffee/android/fragments/friends/FriendRequestsFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 358
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 362
    :cond_28
    const-string/jumbo v5, "id"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 363
    const-string/jumbo v5, "id"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v7

    .line 364
    .restart local v7    # "id":I
    if-lez v7, :cond_29

    .line 365
    const-string/jumbo v5, "uid"

    invoke-virtual {v15, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    .end local v7    # "id":I
    :cond_29
    const-class v5, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 369
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 374
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_2a
    const-string/jumbo v5, "/stickers/settings"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 375
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->start(Landroid/app/Activity;)V

    .line 376
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 381
    :cond_2b
    const-string/jumbo v5, "/groups"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 382
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 383
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "id"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 384
    const-string/jumbo v5, "id"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v7

    .line 385
    .restart local v7    # "id":I
    if-lez v7, :cond_2c

    .line 386
    const-string/jumbo v5, "uid"

    invoke-virtual {v15, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    .end local v7    # "id":I
    :cond_2c
    const-string/jumbo v5, "events"

    const-string/jumbo v6, "tab"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 390
    const-string/jumbo v5, "tab"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    :cond_2d
    const-string/jumbo v5, "admin"

    const-string/jumbo v6, "tab"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 393
    const-string/jumbo v5, "admin_only"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    :cond_2e
    const-class v5, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 396
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 400
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_2f
    const-string/jumbo v5, "/search"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 404
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "c\\[([a-z]+)\\]="

    const-string/jumbo v8, "c_$1="

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 405
    .local v23, "fixedUri":Landroid/net/Uri;
    const-string/jumbo v5, "people"

    const-string/jumbo v6, "c_section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 406
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 407
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "c_q"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 408
    const-string/jumbo v5, "q"

    const-string/jumbo v6, "c_q"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_30
    const-class v5, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 411
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 414
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_31
    const-string/jumbo v5, "communities"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string/jumbo v5, "communities"

    const-string/jumbo v6, "c_section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 415
    :cond_32
    const-class v5, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 416
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 419
    :cond_33
    const-string/jumbo v5, "statuses"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const-string/jumbo v5, "statuses"

    const-string/jumbo v6, "c_section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 421
    :cond_34
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 422
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "c_q"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 423
    const-string/jumbo v5, "q"

    const-string/jumbo v6, "c_q"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_35
    const-class v5, Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 426
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 429
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_36
    const-string/jumbo v5, "audio"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    const-string/jumbo v5, "audio"

    const-string/jumbo v6, "c_section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 431
    :cond_37
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 432
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "c_q"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 433
    const-string/jumbo v5, "search"

    const-string/jumbo v6, "c_q"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_38
    const-class v5, Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 436
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 439
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_39
    const-string/jumbo v5, "video"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string/jumbo v5, "video"

    const-string/jumbo v6, "c_section"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 440
    :cond_3a
    const-class v5, Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 441
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 446
    .end local v23    # "fixedUri":Landroid/net/Uri;
    :cond_3b
    const-string/jumbo v5, "/fave"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 447
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 448
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "likes_posts"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 449
    const-string/jumbo v5, "tab"

    const/4 v6, 0x3

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    :cond_3c
    const-string/jumbo v5, "likes_photo"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 452
    const-string/jumbo v5, "tab"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    :cond_3d
    const-string/jumbo v5, "likes_video"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 455
    const-string/jumbo v5, "tab"

    const/4 v6, 0x0

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    :cond_3e
    const-string/jumbo v5, "links"

    const-string/jumbo v6, "section"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 458
    const-string/jumbo v5, "tab"

    const/4 v6, 0x4

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    :cond_3f
    const-class v5, Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 461
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 465
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_40
    const-string/jumbo v5, "/mail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    const-string/jumbo v5, "/im"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 466
    :cond_41
    const-class v5, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 471
    :cond_42
    const-string/jumbo v5, "/feed"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 472
    const-string/jumbo v5, "section"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 473
    .local v47, "section":Ljava/lang/String;
    const-string/jumbo v5, "notifications"

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 474
    const-class v5, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 500
    :goto_a
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 475
    :cond_43
    const-string/jumbo v5, "search"

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 476
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 477
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "q"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 478
    const-string/jumbo v5, "q"

    const-string/jumbo v6, "q"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_44
    const-class v5, Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_a

    .line 481
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_45
    const-string/jumbo v5, "recommended"

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 482
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 483
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "list_id"

    const/4 v6, -0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    const-class v5, Lcom/vkcoffee/android/fragments/NewsFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_a

    .line 485
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_46
    const-string/jumbo v5, "friends"

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 486
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 487
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "list_id"

    const/4 v6, -0x2

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    const-class v5, Lcom/vkcoffee/android/fragments/NewsFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_a

    .line 489
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_47
    const-string/jumbo v5, "groups"

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 490
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 491
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "list_id"

    const/4 v6, -0x3

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    const-class v5, Lcom/vkcoffee/android/fragments/NewsFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_a

    .line 493
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_48
    const-string/jumbo v5, "list"

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 494
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 495
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "list_id"

    const-string/jumbo v6, "list"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 496
    const-class v5, Lcom/vkcoffee/android/fragments/NewsFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_a

    .line 498
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_49
    const-class v5, Lcom/vkcoffee/android/fragments/NewsFragment;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_a

    .line 505
    .end local v47    # "section":Ljava/lang/String;
    :cond_4a
    const-string/jumbo v5, "/support"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 506
    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v5, :cond_4b

    .line 507
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 508
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "url"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/vkcoffee/android/LinkRedirActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v8, "support_url"

    const-string/jumbo v9, "about:blank"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string/jumbo v5, "open_internally"

    const/4 v6, 0x1

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 510
    const-class v5, Lcom/vkcoffee/android/fragments/WebViewFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 512
    .end local v15    # "args":Landroid/os/Bundle;
    :cond_4b
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 517
    :cond_4c
    const-string/jumbo v5, "/stickers/[a-zA-Z0-_9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 518
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 519
    const-string/jumbo v5, "/stickers/([a-zA-Z0-_9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 520
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 521
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 522
    new-instance v5, Lcom/vkcoffee/android/api/store/GetStockItemByName;

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/store/GetStockItemByName;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$2;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/store/GetStockItemByName;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 544
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 545
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 550
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_4d
    const-string/jumbo v5, "/stickers"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 551
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 552
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->start(Landroid/app/Activity;)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 557
    :cond_4e
    const-string/jumbo v5, "^/ru/.+$"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 558
    const-string/jumbo v5, "/ru/(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 559
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    .line 560
    .local v31, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    .line 561
    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v50

    .line 562
    .local v50, "title":Ljava/lang/String;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 563
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "title"

    move-object/from16 v0, v50

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-class v5, Lcom/vkcoffee/android/fragments/WikiViewFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 565
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 570
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v31    # "matcher":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v50    # "title":Ljava/lang/String;
    :cond_4f
    const-string/jumbo v5, "^/[a-zA-Z0-9\\._]+/[^/]+$"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 571
    const-string/jumbo v5, "/([a-zA-Z0-9\\._]+)/(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 572
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v31

    .line 573
    .restart local v31    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v31 .. v31}, Ljava/util/regex/Matcher;->find()Z

    .line 574
    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    .line 575
    .local v21, "domain":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 576
    .local v43, "query":Ljava/lang/String;
    const-string/jumbo v5, "dev"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 577
    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v6, "execute.resolveScreenName"

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "screen_name"

    .line 578
    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v43

    move-object/from16 v3, v21

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/vkcoffee/android/LinkRedirActivity$3;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 609
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 614
    .end local v21    # "domain":Ljava/lang/String;
    .end local v31    # "matcher":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v43    # "query":Ljava/lang/String;
    :cond_50
    const-string/jumbo v5, "q"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    const-string/jumbo v5, "/wall[-0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 615
    const-string/jumbo v5, "/wall([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 616
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 617
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 618
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v51

    .line 619
    .restart local v51    # "uid":I
    const-string/jumbo v5, "q"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 620
    .restart local v43    # "query":Ljava/lang/String;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 621
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "q"

    move-object/from16 v0, v43

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string/jumbo v5, "owner"

    move/from16 v0, v51

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    const-class v5, Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 624
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 629
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v43    # "query":Ljava/lang/String;
    .end local v51    # "uid":I
    :cond_51
    const-string/jumbo v5, "/tag[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 631
    const-string/jumbo v5, "/tag([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 632
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 633
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 634
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v51

    .line 635
    .restart local v51    # "uid":I
    new-instance v5, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;

    const/4 v6, 0x1

    move/from16 v0, v51

    invoke-direct {v5, v0, v6}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;-><init>(IZ)V

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/LinkRedirActivity$4;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;)V

    .line 636
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 655
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 659
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v51    # "uid":I
    :cond_52
    const-string/jumbo v5, "/(photos|albums)[-0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 660
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 662
    const-string/jumbo v5, "/(?:photos|albums)([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 663
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 664
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 665
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v51

    .line 666
    .restart local v51    # "uid":I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 667
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "uid"

    move/from16 v0, v51

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    const-string/jumbo v5, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f08006d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 669
    const-class v5, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 673
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v51    # "uid":I
    :cond_53
    const-string/jumbo v5, "/(videos)[-0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 674
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 676
    const-string/jumbo v5, "/(?:videos)([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 677
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 678
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 679
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v51

    .line 680
    .restart local v51    # "uid":I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 681
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "uid"

    move/from16 v0, v51

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 683
    const-class v5, Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 687
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v51    # "uid":I
    :cond_54
    const-string/jumbo v5, "/(id|wall)[-0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 688
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 690
    const-string/jumbo v5, "/(?:id|wall)([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 691
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 692
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 693
    new-instance v5, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 698
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_55
    const-string/jumbo v5, "/write[-0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    .local v29, "isWrite":Z
    if-nez v29, :cond_56

    const-string/jumbo v5, "/im\\?sel=[-0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 699
    :cond_56
    if-eqz v29, :cond_57

    const-string/jumbo v5, "/write([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 700
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    :goto_b
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 701
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 702
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v51

    .line 703
    .restart local v51    # "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->openChat(I)V

    goto/16 :goto_0

    .line 699
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v51    # "uid":I
    :cond_57
    const-string/jumbo v5, "/im\\?sel=([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    goto :goto_b

    .line 707
    :cond_58
    const-string/jumbo v5, "/docs[-0-9]*"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 708
    const-string/jumbo v5, "/docs([-0-9]*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 709
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 710
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 711
    new-instance v5, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;

    invoke-direct {v5}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;-><init>()V

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->setOwnerId(I)Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/fragments/documents/DocumentsFragmentBuilder;->go(Landroid/content/Context;)V

    .line 712
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 717
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_59
    const-string/jumbo v5, "/(club|event|public)[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 718
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 720
    const-string/jumbo v5, "/(?:club|event|public)([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 721
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 722
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 723
    new-instance v5, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v6

    neg-int v6, v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 727
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_5a
    const-string/jumbo v5, "/board[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 728
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 730
    const-string/jumbo v5, "/board([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 731
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 732
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 733
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v51

    .line 735
    .restart local v51    # "uid":I
    new-instance v5, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$Builder;

    move/from16 v0, v51

    invoke-direct {v5, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$Builder;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$Builder;->go(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 739
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v51    # "uid":I
    :cond_5b
    const-string/jumbo v5, "/album[-0-9]+_[-0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 740
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 741
    const-string/jumbo v5, "/album([-0-9]+)_([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 742
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 743
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 744
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v33

    .line 745
    .local v33, "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v10

    .line 746
    .local v10, "_aid":I
    const-string/jumbo v5, "0"

    const/4 v6, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 747
    const/4 v10, -0x6

    .line 753
    :cond_5c
    :goto_c
    move v11, v10

    .line 754
    .local v11, "aid":I
    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v6, "execute.getPhotoAlbum"

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "owner_id"

    .line 755
    move/from16 v0, v33

    invoke-virtual {v5, v6, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    const-string/jumbo v6, "album_id"

    .line 756
    invoke-virtual {v5, v6, v11}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v11, v1}, Lcom/vkcoffee/android/LinkRedirActivity$5;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;ILandroid/net/Uri;)V

    .line 757
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 788
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 789
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 748
    .end local v11    # "aid":I
    :cond_5d
    const-string/jumbo v5, "00"

    const/4 v6, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 749
    const/4 v10, -0x7

    goto :goto_c

    .line 750
    :cond_5e
    const-string/jumbo v5, "000"

    const/4 v6, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 751
    const/16 v10, -0xf

    goto :goto_c

    .line 793
    .end local v10    # "_aid":I
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v33    # "oid":I
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_5f
    const-string/jumbo v5, "/pages"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const-string/jumbo v5, "oid"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    const-string/jumbo v5, "p"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 794
    const-string/jumbo v5, "oid"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v33

    .line 795
    .restart local v33    # "oid":I
    const-string/jumbo v5, "p"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    const/16 v8, 0x20

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v50

    .line 796
    .restart local v50    # "title":Ljava/lang/String;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 797
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "title"

    move-object/from16 v0, v50

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string/jumbo v5, "oid"

    move/from16 v0, v33

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 799
    const-class v5, Lcom/vkcoffee/android/fragments/WikiViewFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 800
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 805
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v33    # "oid":I
    .end local v50    # "title":Ljava/lang/String;
    :cond_60
    const-string/jumbo v5, "/video[-0-9]+_[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 806
    const-string/jumbo v5, "/video([-0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 807
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 808
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 809
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v33

    .line 810
    .restart local v33    # "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v54

    .line 811
    .local v54, "vid":I
    new-instance v5, Lcom/vkcoffee/android/api/video/VideoGetById;

    const/4 v6, 0x0

    move/from16 v0, v33

    move/from16 v1, v54

    invoke-direct {v5, v0, v1, v6}, Lcom/vkcoffee/android/api/video/VideoGetById;-><init>(IILjava/lang/String;)V

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$6;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 812
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/video/VideoGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 828
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 829
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 833
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v33    # "oid":I
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v54    # "vid":I
    :cond_61
    const-string/jumbo v5, "/topic[-0-9]+_[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 834
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 835
    const-string/jumbo v5, "/topic([-0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 836
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 837
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 838
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v5

    neg-int v0, v5

    move/from16 v33, v0

    .line 839
    .restart local v33    # "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v49

    .line 840
    .local v49, "tid":I
    new-instance v5, Lcom/vkcoffee/android/api/board/BoardGetTopics;

    move/from16 v0, v33

    move/from16 v1, v49

    invoke-direct {v5, v0, v1}, Lcom/vkcoffee/android/api/board/BoardGetTopics;-><init>(II)V

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$7;

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v33

    move-object/from16 v3, v52

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/vkcoffee/android/LinkRedirActivity$7;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;IILandroid/net/Uri;)V

    .line 841
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/board/BoardGetTopics;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 857
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 858
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 862
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v33    # "oid":I
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v49    # "tid":I
    :cond_62
    const-string/jumbo v5, "/page[-0-9]+_[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 863
    const-string/jumbo v5, "/page([-0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 864
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 865
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 866
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v33

    .line 867
    .restart local v33    # "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v37

    .line 868
    .local v37, "pid":I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 869
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "oid"

    move/from16 v0, v33

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 870
    const-string/jumbo v5, "pid"

    move/from16 v0, v37

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 871
    const-class v5, Lcom/vkcoffee/android/fragments/WikiViewFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 872
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 877
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v33    # "oid":I
    .end local v37    # "pid":I
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_63
    const-string/jumbo v5, "/note[-0-9]+_[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 878
    const-string/jumbo v5, "/note([-0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 879
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 880
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 881
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v33

    .line 882
    .restart local v33    # "oid":I
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v37

    .line 883
    .restart local v37    # "pid":I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 884
    .restart local v15    # "args":Landroid/os/Bundle;
    const-string/jumbo v5, "oid"

    move/from16 v0, v33

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 885
    const-string/jumbo v5, "nid"

    move/from16 v0, v37

    invoke-virtual {v15, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 886
    const-class v5, Lcom/vkcoffee/android/fragments/WikiViewFragment;

    move-object/from16 v0, p0

    invoke-static {v5, v15, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 887
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 892
    .end local v15    # "args":Landroid/os/Bundle;
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v33    # "oid":I
    .end local v37    # "pid":I
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_64
    const-string/jumbo v5, "/photo[-_0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 894
    :try_start_2
    const-class v5, Landroid/app/Activity;

    const-string/jumbo v6, "overridePendingTransition"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v57, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v57, v8, v9

    const/4 v9, 0x1

    sget-object v57, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v57, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 895
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 898
    :goto_d
    const-string/jumbo v5, "/photo([-_0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 899
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 900
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 901
    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v6, "photos.getById"

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "photos"

    const/4 v8, 0x1

    .line 902
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    const-string/jumbo v6, "extended"

    const/4 v8, 0x1

    .line 903
    invoke-virtual {v5, v6, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    const-string/jumbo v6, "photo_sizes"

    const/4 v8, 0x1

    .line 904
    invoke-virtual {v5, v6, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$8;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 905
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 947
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 948
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 952
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_65
    const-string/jumbo v5, "/wall[-0-9]+_[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 953
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 954
    const-string/jumbo v5, "wall([-0-9]+_[0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 955
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 956
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 957
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v38

    .line 958
    .local v38, "post":Ljava/lang/String;
    new-instance v5, Lcom/vkcoffee/android/api/wall/WallGetById;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v38, v6, v8

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/wall/WallGetById;-><init>([Ljava/lang/String;)V

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v6, v0, v1, v2}, Lcom/vkcoffee/android/LinkRedirActivity$9;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/content/Context;Landroid/net/Uri;)V

    .line 959
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/wall/WallGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 991
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 992
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 996
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v38    # "post":Ljava/lang/String;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_66
    const-string/jumbo v5, "/audio[-0-9]+_[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 997
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 998
    const-string/jumbo v5, "audio([-0-9]+_[0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 999
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 1000
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 1001
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v38

    .line 1002
    .restart local v38    # "post":Ljava/lang/String;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 1003
    .local v12, "al":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1004
    new-instance v5, Lcom/vkcoffee/android/api/audio/AudioGetById;

    invoke-direct {v5, v12}, Lcom/vkcoffee/android/api/audio/AudioGetById;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$10;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 1005
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/audio/AudioGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 1031
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 1032
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 1036
    .end local v12    # "al":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v38    # "post":Ljava/lang/String;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_67
    const-string/jumbo v5, "/gifts"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1037
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 1038
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;)V

    .line 1039
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 1044
    :cond_68
    const-string/jumbo v5, "/product[0-9]+_[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_69

    const-string/jumbo v5, "/product-[0-9]+_[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1045
    :cond_69
    const/16 v34, 0x0

    .line 1046
    .local v34, "ownerId":I
    const/16 v39, 0x0

    .line 1047
    .local v39, "productId":I
    const-string/jumbo v5, "/product([0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 1048
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1049
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 1050
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 1052
    :cond_6a
    const-string/jumbo v5, "/product(-[0-9]+)_([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 1053
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1054
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 1055
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 1057
    :cond_6b
    if-eqz v34, :cond_6c

    if-eqz v39, :cond_6c

    .line 1058
    new-instance v5, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;

    sget-object v6, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->link:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    move/from16 v0, v34

    move/from16 v1, v39

    invoke-direct {v5, v6, v0, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;II)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->go(Landroid/content/Context;)V

    .line 1059
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 1065
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v34    # "ownerId":I
    .end local v39    # "productId":I
    :cond_6c
    const-string/jumbo v5, "/market[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string/jumbo v5, "/market[-0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1066
    :cond_6d
    const-string/jumbo v5, "section"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1067
    .restart local v47    # "section":Ljava/lang/String;
    const-string/jumbo v5, "/market([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 1068
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    const/16 v34, 0x0

    .line 1069
    .restart local v34    # "ownerId":I
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 1070
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 1072
    :cond_6e
    const-string/jumbo v5, "/market([-0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 1073
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1074
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 1076
    :cond_6f
    if-eqz v34, :cond_71

    .line 1077
    new-instance v16, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;-><init>(I)V

    .line 1078
    .local v16, "builder":Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_70

    const-string/jumbo v5, "album_"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1079
    const-string/jumbo v5, "album_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1080
    .local v13, "albumIdStr":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1081
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->setAlbum(I)Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    .line 1084
    .end local v13    # "albumIdStr":Ljava/lang/String;
    :cond_70
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->go(Landroid/content/Context;)V

    .line 1085
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 1091
    .end local v16    # "builder":Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v34    # "ownerId":I
    .end local v47    # "section":Ljava/lang/String;
    :cond_71
    const-string/jumbo v5, "/gifts[0-9]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1092
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkcoffee/android/LinkRedirActivity;->overridePendingTransition(II)V

    .line 1093
    const-string/jumbo v5, "/gifts([0-9]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 1094
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 1095
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1096
    const-string/jumbo v5, "send"

    const-string/jumbo v6, "act"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 1097
    new-instance v40, Landroid/app/ProgressDialog;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1098
    .local v40, "progress":Landroid/app/ProgressDialog;
    const v5, 0x7f080293

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1099
    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1100
    invoke-virtual/range {v40 .. v40}, Landroid/app/ProgressDialog;->show()V

    .line 1101
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/vkcoffee/android/LinkRedirActivity;->safeParseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/app/ProgressDialog;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto/16 :goto_0

    .line 1112
    .end local v40    # "progress":Landroid/app/ProgressDialog;
    :cond_72
    new-instance v5, Lcom/vkcoffee/android/api/gifts/GiftsResolveLink;

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/gifts/GiftsResolveLink;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$11;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/gifts/GiftsResolveLink;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 1140
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 1146
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    :cond_73
    const-string/jumbo v5, "/calendar"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    if-eqz v32, :cond_74

    .line 1147
    const-class v5, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v5, v6, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 1148
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 1153
    :cond_74
    const-string/jumbo v5, "/[A-Za-z0-9\\._]+"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    if-nez v32, :cond_75

    sget-object v5, Lcom/vkcoffee/android/LinkRedirActivity;->NOT_DOMAINS:Ljava/util/List;

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    .line 1155
    :try_start_3
    const-class v5, Landroid/app/Activity;

    const-string/jumbo v6, "overridePendingTransition"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v57, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v57, v8, v9

    const/4 v9, 0x1

    sget-object v57, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v57, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1156
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1159
    :goto_e
    const-string/jumbo v5, "/([A-Za-z0-9\\._]+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v41

    .line 1160
    .restart local v41    # "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 1161
    .restart local v30    # "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    .line 1162
    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v46

    .line 1164
    .restart local v46    # "scrName":Ljava/lang/String;
    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v6, "execute.resolveScreenName"

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "screen_name"

    .line 1165
    move-object/from16 v0, v46

    invoke-virtual {v5, v6, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/LinkRedirActivity$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v6, v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity$12;-><init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 1166
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 1209
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 1210
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 1215
    .end local v29    # "isWrite":Z
    .end local v30    # "m":Ljava/util/regex/Matcher;
    .end local v32    # "notDomain":Z
    .end local v35    # "path":Ljava/lang/String;
    .end local v41    # "ptn":Ljava/util/regex/Pattern;
    .end local v46    # "scrName":Ljava/lang/String;
    :cond_75
    const-string/jumbo v5, "new.vk.com"

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string/jumbo v5, ""

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string/jumbo v5, ""

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string/jumbo v5, ""

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, ""

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1216
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v57, "forceHTTPS"

    const/16 v58, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v58

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_77

    const-string/jumbo v5, "https"

    :goto_f
    invoke-virtual {v9, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v9, ""

    invoke-virtual {v5, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v9, "/away"

    invoke-virtual {v5, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v9, "to"

    invoke-virtual/range {v52 .. v52}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v5, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v9, "utf"

    const-string/jumbo v57, "1"

    move-object/from16 v0, v57

    invoke-virtual {v5, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v6, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v6}, Lcom/vkcoffee/android/LinkRedirActivity;->addCustomTabsExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 1220
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "no_browser"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_76

    .line 1221
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1223
    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto/16 :goto_0

    .line 1216
    :cond_77
    const-string/jumbo v5, "http"

    goto :goto_f

    .line 1218
    :cond_78
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->openBrowser(Landroid/net/Uri;)V

    goto :goto_10

    .line 1157
    .restart local v29    # "isWrite":Z
    .restart local v32    # "notDomain":Z
    .restart local v35    # "path":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto/16 :goto_e

    .line 896
    :catch_2
    move-exception v5

    goto/16 :goto_d
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 1351
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1352
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1362
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1363
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->onActivityPaused()V

    .line 1364
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 1356
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1357
    invoke-static {p0}, Lcom/vkcoffee/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 1358
    return-void
.end method

.method public registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity;->mResulters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity;->mResulters:Ljava/util/List;

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    return-void
.end method

.method public unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity;->mResulters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1418
    :cond_0
    return-void
.end method
