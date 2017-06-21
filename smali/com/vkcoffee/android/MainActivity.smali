.class public Lcom/vkcoffee/android/MainActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/ResulterProvider;
.implements Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/MainActivity$MainActivity$$Lambda$1;
    }
.end annotation


# instance fields
.field private detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

.field private lastUpdatedCounters:J

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

.field private navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

.field private showNewsOnResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 95
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    .line 97
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vkcoffee/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 99
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/MainActivity;->lastUpdatedCounters:J

    .line 86
    new-instance v0, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-direct {v0, p0, v2, v2}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/MainActivity;->showNewsOnResume:Z

    .line 83
    return-void
.end method

.method private checkForIntro()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 340
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/vkcoffee/android/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "intro"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 341
    .local v1, "intro":I
    and-int/lit8 v2, v1, 0x1

    if-gtz v2, :cond_0

    and-int/lit8 v2, v1, 0x2

    if-lez v2, :cond_2

    .line 342
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/SuggestionsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    .line 344
    const-string v2, "groups"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    :cond_1
    const/16 v2, 0x65

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public static goCheck(Landroid/app/Activity;Z)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "wall"    # Z

    .prologue
    .line 408
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v4

    invoke-static {v4}, Lcom/vkcoffee/android/PlatformData;->getSid(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "sid":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v4

    invoke-static {v4}, Lcom/vkcoffee/android/PlatformData;->getSecret(I)Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "secret":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 411
    .local v0, "checkReq":Lcom/loopj/android/http/RequestParams;
    const-string v4, "access_token"

    invoke-virtual {v0, v4, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v4, "fields"

    const-string v5, "country"

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v4, "v"

    const-string v5, "5.29"

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v4, "sig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/method/account.getInfo?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 416
    .local v1, "online":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "account.getInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/MainActivity$4;

    invoke-direct {v5, p1}, Lcom/vkcoffee/android/MainActivity$4;-><init>(Z)V

    invoke-virtual {v1, v4, v0, v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 452
    return-void

    .line 408
    .end local v0    # "checkReq":Lcom/loopj/android/http/RequestParams;
    .end local v1    # "online":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "secret":Ljava/lang/String;
    .end local v3    # "sid":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v4

    invoke-static {v4}, Lcom/vkcoffee/android/PlatformData;->getSid(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 409
    .restart local v3    # "sid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v4

    invoke-static {v4}, Lcom/vkcoffee/android/PlatformData;->getSecret(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static lambda$showAbout$651(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    .local v0, "bmp":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    return-object v0
.end method

.method private setTextViewMarquee(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 516
    if-eqz p1, :cond_0

    .line 517
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 518
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 519
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 520
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 521
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 523
    :cond_0
    return-void
.end method

.method public static showAbout(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v13, 0x15

    .line 362
    const/4 v3, 0x2

    .line 364
    .local v3, "i":I
    :try_start_0
    invoke-static {p0}, Lcom/vkcoffee/android/MainActivity$MainActivity$$Lambda$1;->lambdaFactory$(Landroid/content/Context;)Landroid/text/Html$ImageGetter;

    move-result-object v4

    .line 365
    .local v4, "igetter":Landroid/text/Html$ImageGetter;
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    .local v2, "dlg":Landroid/app/AlertDialog$Builder;
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_1

    .line 367
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 368
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/Object;

    .line 369
    .local v5, "objArr":[Ljava/lang/Object;
    const/4 v7, 0x0

    aput-object p0, v5, v7

    .line 370
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v13, :cond_0

    .line 371
    const/4 v3, 0x4

    .line 373
    :cond_0
    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    .line 374
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "dlg":Landroid/app/AlertDialog$Builder;
    check-cast v2, Landroid/app/AlertDialog$Builder;

    .line 376
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "objArr":[Ljava/lang/Object;
    .restart local v2    # "dlg":Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0802a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<br/><img src=\'1\'/><br/><b>VK Coffee</b> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/vkcoffee/android/OTA;->VERSION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<br/><b>\u0414\u0430\u0442\u0430 \u043a\u043e\u043c\u043f\u0438\u043b\u044f\u0446\u0438\u0438:</b> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "05/09/2016"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<br/><b>\u041e\u0441\u043d\u043e\u0432\u0430\u043d\u043e \u043d\u0430 \u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u043c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438</b> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080044

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "4.3"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0x351

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 379
    const-string v7, "OK"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 381
    .local v1, "d":Landroid/app/AlertDialog;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v13, :cond_2

    .line 382
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const v8, 0x7f0202f1

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 384
    :cond_2
    const v7, 0x102000b

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, -0x602404

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 385
    const v7, 0x102000b

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, -0x7f602404

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 386
    const v7, 0x102000b

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 387
    const v7, 0x102000b

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 388
    const v7, 0x102000b

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkcoffee/android/MainActivity$3;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/MainActivity$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v1    # "d":Landroid/app/AlertDialog;
    .end local v2    # "dlg":Landroid/app/AlertDialog$Builder;
    .end local v4    # "igetter":Landroid/text/Html$ImageGetter;
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v6

    .line 403
    .local v6, "x":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 547
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "menuZone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "doubleTap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 549
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 551
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNavDelegate()Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 469
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/VKActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 470
    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    .line 471
    if-ne p2, v6, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 473
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/vkcoffee/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 474
    iget-object v3, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->updateUserInfo()V

    .line 475
    const-string v3, "enableC2DM"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    invoke-static {}, Lcom/vkcoffee/android/C2DM;->start()V

    .line 478
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/vkcoffee/android/LongPollService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 479
    iput-boolean v7, p0, Lcom/vkcoffee/android/MainActivity;->showNewsOnResume:Z

    .line 480
    invoke-static {v5}, Lcom/vkcoffee/android/data/Friends;->reload(Z)V

    .line 481
    invoke-static {v5}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V

    .line 482
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/stickers/Stickers;->reload()V

    .line 483
    sget-object v3, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-eqz v3, :cond_1

    .line 484
    sget-object v0, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    .line 485
    .local v0, "longPollService":Lcom/vkcoffee/android/LongPollService;
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->updateCounters()V

    .line 487
    .end local v0    # "longPollService":Lcom/vkcoffee/android/LongPollService;
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/MainActivity;->checkForIntro()V

    .line 492
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    if-eq p2, v6, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->finish()V

    .line 495
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/MainActivity;->mResulters:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 496
    iget-object v3, p0, Lcom/vkcoffee/android/MainActivity;->mResulters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 500
    :cond_4
    return-void

    .line 489
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->finish()V

    goto :goto_0

    .line 496
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/ActivityResulter;

    .line 497
    .local v2, "resulter":Lcom/vkcoffee/android/ui/ActivityResulter;
    invoke-interface {v2, p1, p2, p3}, Lcom/vkcoffee/android/ui/ActivityResulter;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 526
    iget-object v1, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10001b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 528
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkcoffee/android/fragments/BackListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vkcoffee/android/fragments/BackListener;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/vkcoffee/android/fragments/BackListener;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onBackPressed()V

    .line 532
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 316
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 317
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->setLocalization(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/vkcoffee/android/VKApplication;->оnConfigurationChanged()V

    .line 106
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 109
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_1

    .line 110
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 111
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_1

    const-string v8, "flyme_3dtouch"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 112
    const-string v8, "/close"

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->closeApp()V

    .line 302
    .end local v2    # "data":Landroid/net/Uri;
    :goto_0
    return-void

    .line 116
    .restart local v2    # "data":Landroid/net/Uri;
    :cond_0
    const-string v8, "/tost"

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 117
    const-string v8, "TOOOSSST"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 123
    .end local v2    # "data":Landroid/net/Uri;
    :cond_1
    new-instance v1, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/FitSystemWindowsFragmentWrapperFrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, "contentView":Landroid/widget/FrameLayout;
    const v8, 0x7f10001b

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 125
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 126
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 129
    :cond_2
    new-instance v8, Lcom/vkcoffee/android/OTA;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/vkcoffee/android/OTA;-><init>(Landroid/app/Activity;Z)V

    .line 130
    new-instance v8, Lcom/vkcoffee/android/CheckCoffee;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/CheckCoffee;-><init>(Landroid/app/Activity;)V

    .line 135
    iget-object v8, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v8, v1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->setContentView(Landroid/view/View;)Landroid/view/View;

    .line 136
    iget-object v8, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->setCurrentItem(I)V

    .line 140
    new-instance v8, Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    invoke-direct {v8, p0, p0}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SimpleGestureFilter$SimpleGestureListener;)V

    iput-object v8, p0, Lcom/vkcoffee/android/MainActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    .line 141
    iget-object v8, p0, Lcom/vkcoffee/android/MainActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v10, "Swipe"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "speed"

    const/16 v11, 0x32

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeMinVelocity(I)V

    .line 142
    iget-object v8, p0, Lcom/vkcoffee/android/MainActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v10, "Swipe"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "swipeMin"

    const/16 v11, 0x64

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeXMinDistance(I)V

    .line 143
    iget-object v8, p0, Lcom/vkcoffee/android/MainActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v10, "Swipe"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "swipeMax"

    const/16 v11, 0x1f4

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeXMaxDistance(I)V

    .line 144
    iget-object v8, p0, Lcom/vkcoffee/android/MainActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v10, "Swipe"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "minY"

    const/16 v11, 0xa

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeYMinDistance(I)V

    .line 145
    iget-object v8, p0, Lcom/vkcoffee/android/MainActivity;->detector:Lcom/vkcoffee/android/ui/SimpleGestureFilter;

    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v10, "Swipe"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "maxY"

    const/16 v11, 0x32

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/SimpleGestureFilter;->setSwipeYMaxDistance(I)V

    .line 150
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 151
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "sid"

    invoke-interface {v6, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "uid"

    invoke-interface {v6, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "uid"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_15

    .line 152
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offImpMode()V

    .line 153
    invoke-static {}, Lcom/vkcoffee/android/fragments/AudioListFragment;->offSimMode()V

    .line 156
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v8

    const-string v9, "vk_uid"

    new-instance v10, Ljava/lang/StringBuilder;

    sget v11, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "class"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "class"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "args"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {p0, v8, v9, v10}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;

    .line 280
    :cond_3
    :goto_1
    :try_start_0
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 281
    .local v7, "webView":Landroid/webkit/WebView;
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 282
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 283
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 284
    new-instance v8, Lcom/vkcoffee/android/MainActivity$2;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/MainActivity$2;-><init>(Lcom/vkcoffee/android/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 295
    const-string v8, "http://m.vk.com/counters.php"

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v7    # "webView":Landroid/webkit/WebView;
    :goto_2
    invoke-direct {p0}, Lcom/vkcoffee/android/MainActivity;->checkForIntro()V

    goto/16 :goto_0

    .line 159
    :cond_4
    if-nez p1, :cond_3

    .line 166
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v8

    sget v9, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    if-eq v8, v9, :cond_5

    .line 167
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/vkcoffee/android/MainActivity;->goCheck(Landroid/app/Activity;Z)V

    .line 169
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v8

    sget v9, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    if-eq v8, v9, :cond_6

    .line 170
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/vkcoffee/android/MainActivity;->goCheck(Landroid/app/Activity;Z)V

    .line 172
    :cond_6
    invoke-static {}, Lcom/vkcoffee/android/MAC;->changedAcc()Z

    move-result v8

    if-nez v8, :cond_7

    .line 173
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->disableEnteredState()V

    .line 178
    :cond_7
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v9, "StatusSNL"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "prevStatus"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 179
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/vkcoffee/android/MainActivity$1;

    invoke-direct {v9, p0}, Lcom/vkcoffee/android/MainActivity$1;-><init>(Lcom/vkcoffee/android/MainActivity;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 199
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 205
    :cond_8
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "statusPref"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 206
    sget-object v8, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    if-nez v8, :cond_9

    .line 207
    new-instance v4, Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/vkcoffee/android/StatusSNL;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 208
    .local v4, "i":Landroid/content/Intent;
    const-string v8, "other"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 214
    .end local v4    # "i":Landroid/content/Intent;
    :cond_9
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "crazyPref"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 215
    sget-object v8, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    if-nez v8, :cond_a

    .line 216
    new-instance v4, Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/vkcoffee/android/CrazyTypingSNL;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 217
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v8, "other"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 221
    .end local v4    # "i":Landroid/content/Intent;
    :cond_a
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "stayOnlinePref"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 222
    sget-object v8, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    if-nez v8, :cond_b

    .line 223
    new-instance v4, Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/vkcoffee/android/OnlineSNL;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 224
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v8, "online"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    .end local v4    # "i":Landroid/content/Intent;
    :cond_b
    :goto_3
    new-instance v8, Lcom/vkcoffee/android/LoadData;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/vkcoffee/android/LoadData;-><init>(Landroid/app/Activity;Z)V

    .line 243
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v9, "Downloads"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v0, "bundleFirstStart":Landroid/os/Bundle;
    const-string v8, "id"

    sget v9, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_d

    .line 249
    const-string v8, "ProfileFragment"

    iget-object v9, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {p0, v8, v0, v9}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;

    goto/16 :goto_1

    .line 230
    .end local v0    # "bundleFirstStart":Landroid/os/Bundle;
    :cond_c
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "phantomOnlinePref"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 231
    sget-object v8, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    if-nez v8, :cond_b

    .line 232
    new-instance v4, Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/vkcoffee/android/OnlineSNL;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 233
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v8, "online"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 250
    .end local v4    # "i":Landroid/content/Intent;
    .restart local v0    # "bundleFirstStart":Landroid/os/Bundle;
    :cond_d
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 251
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f10001b

    new-instance v10, Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-direct {v10}, Lcom/vkcoffee/android/fragments/NewsFragment;-><init>()V

    const-string v11, "news"

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 252
    :cond_e
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    .line 253
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f10001b

    new-instance v10, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;

    invoke-direct {v10}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;-><init>()V

    const-string v11, "feedback"

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 254
    :cond_f
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_10

    .line 255
    new-instance v3, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-direct {v3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;-><init>()V

    .line 256
    .local v3, "fragment":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f10001b

    const-string v10, "DialogsFragment"

    invoke-virtual {v8, v9, v3, v10}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 259
    .end local v3    # "fragment":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    :cond_10
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_11

    .line 260
    new-instance v3, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-direct {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;-><init>()V

    .line 261
    .local v3, "fragment":Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f10001b

    const-string v10, "DialogsFragment"

    invoke-virtual {v8, v9, v3, v10}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 264
    .end local v3    # "fragment":Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
    :cond_11
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_12

    .line 265
    const-string v8, "PhotosFragment"

    iget-object v9, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {p0, v8, v0, v9}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;

    goto/16 :goto_1

    .line 266
    :cond_12
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_13

    .line 267
    const-string v8, "AudioListFragment"

    iget-object v9, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {p0, v8, v0, v9}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;

    goto/16 :goto_1

    .line 268
    :cond_13
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_14

    .line 269
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f10001b

    new-instance v10, Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    invoke-direct {v10}, Lcom/vkcoffee/android/fragments/fave/FaveFragment;-><init>()V

    const-string v11, "fave"

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 270
    :cond_14
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "firstOpenApp"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f10001b

    new-instance v10, Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-direct {v10}, Lcom/vkcoffee/android/fragments/SettingsListFragment;-><init>()V

    const-string v11, "settings"

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 301
    .end local v0    # "bundleFirstStart":Landroid/os/Bundle;
    :cond_15
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/vkcoffee/android/AuthActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v9, 0x64

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 296
    :catch_0
    move-exception v8

    goto/16 :goto_2
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/VKActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDoubleTap()V
    .locals 3

    .prologue
    .line 566
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "doubleTap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->openDrawer()V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->closeDrawer()V

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->openDrawer()V

    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 351
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onPause()V

    .line 352
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 306
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->onPostCreate()V

    .line 307
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/Menu;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 311
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 320
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onResume()V

    .line 321
    iget-boolean v1, p0, Lcom/vkcoffee/android/MainActivity;->showNewsOnResume:Z

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/MainActivity;->showNewsOnResume:Z

    .line 323
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f10001b

    new-instance v3, Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-direct {v3}, Lcom/vkcoffee/android/fragments/NewsFragment;-><init>()V

    const-string v4, "news"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 325
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkcoffee/android/MainActivity;->lastUpdatedCounters:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 326
    sget-object v0, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    .line 327
    .local v0, "longPollService":Lcom/vkcoffee/android/LongPollService;
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->updateCounters()V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/MainActivity;->lastUpdatedCounters:J

    .line 330
    .end local v0    # "longPollService":Lcom/vkcoffee/android/LongPollService;
    :cond_1
    invoke-static {p0}, Lcom/vkcoffee/android/NetworkStateReceiver;->getNotifications(Landroid/content/Context;)V

    .line 331
    invoke-static {p0}, Lcom/vkcoffee/android/NetworkStateReceiver;->getAppNotifications(Landroid/content/Context;)V

    .line 332
    iget-object v1, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->updateUserInfo()V

    .line 333
    return-void
.end method

.method public onSwipe(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 556
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "menuZone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    packed-switch p1, :pswitch_data_0

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 558
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->openDrawer()V

    goto :goto_0

    .line 559
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;->closeDrawer()V

    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->mResulters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MainActivity;->mResulters:Ljava/util/List;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method public restartAfterLogout()V
    .locals 3

    .prologue
    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->finishAffinity()V

    .line 464
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/activities/LogoutReceiver;->sendLogout()V

    .line 465
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method public unregisterActivityResult(Lcom/vkcoffee/android/ui/ActivityResulter;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/ui/ActivityResulter;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->mResulters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity;->mResulters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 513
    :cond_0
    return-void
.end method
