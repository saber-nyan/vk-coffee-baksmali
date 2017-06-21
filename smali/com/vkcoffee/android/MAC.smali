.class public Lcom/vkcoffee/android/MAC;
.super Ljava/lang/Object;
.source "MAC.java"


# static fields
.field public static ACTIVE:Z = false

.field private static final Added:Ljava/lang/String; = "Add_"

.field private static final EMPTY_VALUE:Ljava/lang/String; = ""

.field private static final LastAct:Ljava/lang/String; = "Act_"

.field public static final MAIN_MANIPULATE_ID:I = 0x1

.field private static final Manipulate_ID:Ljava/lang/String; = "ManID_"

.field private static final SEPARATE:Ljava/lang/String; = ":"

.field private static auth:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/MAC;->ACTIVE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Data()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "MAC"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static accView(ILandroid/app/Activity;)V
    .locals 4
    .param p0, "item"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 132
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v1, "viewAcc":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getNameAcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<b>id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b><br><b>\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d:</b> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/MAC;->getAddedTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<b>\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u044f\u044f \u0430\u043a\u0442\u0438\u0432\u0430\u0446\u0438\u044f:</b> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/MAC;->getLastActTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCurrentUID()I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 138
    const-string v2, "\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    .line 139
    new-instance v3, Lcom/vkcoffee/android/MAC$3;

    invoke-direct {v3, p1, p0}, Lcom/vkcoffee/android/MAC$3;-><init>(Landroid/app/Activity;I)V

    .line 138
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    const-string v2, "\u0420\u0435\u0434."

    .line 147
    new-instance v3, Lcom/vkcoffee/android/MAC$4;

    invoke-direct {v3, p1, p0}, Lcom/vkcoffee/android/MAC$4;-><init>(Landroid/app/Activity;I)V

    .line 146
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    const-string v2, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c"

    .line 154
    new-instance v3, Lcom/vkcoffee/android/MAC$5;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/MAC$5;-><init>(ILandroid/app/Activity;)V

    .line 153
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    :cond_0
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 164
    return-void
.end method

.method static synthetic access$0(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 131
    invoke-static {p0, p1}, Lcom/vkcoffee/android/MAC;->accView(ILandroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1(I)I
    .locals 1

    .prologue
    .line 499
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/vkcoffee/android/MAC;->confirmDel(ILandroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$4()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/vkcoffee/android/MAC;->auth:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 405
    invoke-static {p0, p1}, Lcom/vkcoffee/android/MAC;->goChangeAcc(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$6(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getP(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 754
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/MAC;->sayNewAuthWithEdit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 749
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/MAC;->sayNewAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addAcc(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 537
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "uids"

    const-string v6, ":"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "uids":Ljava/lang/String;
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->checkDuplicate(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    if-eqz p3, :cond_0

    .line 541
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->setNewManipulateID(I)V

    .line 543
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->setAddedTime(I)V

    .line 545
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 546
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 547
    const-string v5, "uids"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 548
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 551
    :cond_1
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "null"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 552
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 553
    const-string v5, "uid"

    invoke-interface {v4, v5, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 554
    const-string v5, "sid"

    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 555
    const-string v5, "secret"

    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 556
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 558
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    .line 559
    .local v2, "currentUID":I
    sget-object v1, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 560
    .local v1, "currentSID":Ljava/lang/String;
    sget-object v0, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 562
    .local v0, "currentSECRET":Ljava/lang/String;
    sput p0, Lcom/vkcoffee/android/Global;->uid:I

    .line 563
    sput-object p1, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 564
    sput-object p2, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 565
    new-instance v4, Lcom/vkcoffee/android/api/execute/GetWallInfo;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/api/execute/GetWallInfo;-><init>(I)V

    new-instance v5, Lcom/vkcoffee/android/MAC$8;

    invoke-direct {v5, v2, v1, v0, p0}, Lcom/vkcoffee/android/MAC$8;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/execute/GetWallInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 586
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 587
    return-void
.end method

.method private static applyConfigs(I)V
    .locals 0
    .param p0, "uid"    # I

    .prologue
    .line 397
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->setCurrentUID(I)V

    .line 403
    return-void
.end method

.method private static applyNewAcc(I)V
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 350
    const-string v0, "2fa"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 351
    const-string v0, "picker_default"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 352
    const-string v0, "stikers"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 353
    const-string v0, "vk-orm_meta"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 354
    const-string v0, "cookieStore"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 355
    const-string v0, "drafts"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 357
    const-string v0, "longpoll"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 358
    const-string v0, "msg"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 359
    const-string v0, "notify"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 360
    const-string v0, "WebViewChromiumPrefs"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 361
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->restoreStaticSett(I)V

    .line 362
    const-string v0, "null"

    invoke-static {p0, v0}, Lcom/vkcoffee/android/MAC;->restorePreferences(ILjava/lang/String;)V

    .line 363
    return-void
.end method

.method private static backupAndClearCurrentAcc()V
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCurrentUID()I

    move-result v0

    .line 334
    .local v0, "uid":I
    const-string v1, "2fa"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 335
    const-string v1, "picker_default"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 336
    const-string v1, "stikers"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 337
    const-string v1, "vk-orm_meta"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 338
    const-string v1, "cookieStore"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 339
    const-string v1, "drafts"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 341
    const-string v1, "longpoll"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 342
    const-string v1, "msg"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 343
    const-string v1, "notify"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 344
    const-string v1, "WebViewChromiumPrefs"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 345
    invoke-static {v0}, Lcom/vkcoffee/android/MAC;->backupStaticSett(I)V

    .line 346
    const-string v1, "null"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->backupPreferences(ILjava/lang/String;)V

    .line 347
    return-void
.end method

.method private static backupPreferences(ILjava/lang/String;)V
    .locals 5
    .param p0, "uid"    # I
    .param p1, "mainKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 366
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->copyPrefs(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 367
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    return-void
.end method

.method private static backupStaticSett(I)V
    .locals 5
    .param p0, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 383
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GENERAL"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->copyPrefs(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 384
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "STATIC"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->generalSet(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 385
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    return-void
.end method

.method public static changedAcc()Z
    .locals 4

    .prologue
    .line 420
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "chAcc"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 421
    .local v0, "realState":Z
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "chAcc"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    return v0
.end method

.method private static checkDon(I)Z
    .locals 10
    .param p0, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "uids"

    const-string v6, ":"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "uids":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 245
    :goto_1
    return v3

    .line 233
    :cond_0
    aget-object v0, v5, v4

    .line 234
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, "uid1":I
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v8, "OTA"

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "internalAccess"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 237
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v8, "VERIFICATION"

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "helpers"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 238
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v8, "VERIFICATION"

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "donnated"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v8, "VERIFICATION"

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "donnatedVerifCoffee"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 240
    :cond_1
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 233
    .end local v1    # "uid1":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public static checkDuplicate(I)Z
    .locals 7
    .param p0, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "uids"

    const-string v5, ":"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "uids":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 277
    :goto_1
    return v2

    .line 270
    :cond_0
    aget-object v0, v4, v3

    .line 271
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p0, :cond_1

    .line 273
    const/4 v2, 0x1

    goto :goto_1

    .line 270
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static checkStatusEditData()Z
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "newAuthEdit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static checkStatusGetData()Z
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "newAuth"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static clearCurrentUID()V
    .locals 3

    .prologue
    .line 262
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    const-string v1, "CurrentUID"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method private static confirmDel(ILandroid/app/Activity;)V
    .locals 3
    .param p0, "item"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 167
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "confirmDel":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v1, "\u0412\u044b \u0442\u043e\u0447\u043d\u043e \u0436\u0435\u043b\u0430\u0435\u0442\u0435 \u0443\u0434\u0430\u043b\u0438\u0442\u044c \u0434\u0430\u043d\u043d\u044b\u0439 \u0430\u043a\u043a\u0430\u0443\u043d\u0442?"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    const-string v1, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c!"

    .line 170
    new-instance v2, Lcom/vkcoffee/android/MAC$6;

    invoke-direct {v2, p0, p1}, Lcom/vkcoffee/android/MAC$6;-><init>(ILandroid/app/Activity;)V

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    const-string v1, "\u041d\u0430\u0437\u0430\u0434"

    .line 178
    new-instance v2, Lcom/vkcoffee/android/MAC$7;

    invoke-direct {v2, p0, p1}, Lcom/vkcoffee/android/MAC$7;-><init>(ILandroid/app/Activity;)V

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 185
    return-void
.end method

.method private static copyPrefs(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 8
    .param p0, "from"    # Landroid/content/SharedPreferences;
    .param p1, "to"    # Landroid/content/SharedPreferences;

    .prologue
    .line 474
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 475
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v3, p0

    .line 478
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    return-void

    .line 478
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 479
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 480
    .local v4, "v":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 484
    .local v2, "key":Ljava/lang/String;
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 485
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 486
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_3

    .line 487
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 488
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 489
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 490
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_5

    .line 491
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 492
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 493
    check-cast v4, Ljava/lang/String;

    .end local v4    # "v":Ljava/lang/Object;
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private static delAddedTime(I)V
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 249
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    return-void
.end method

.method private static delLastActTime(I)V
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 203
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Act_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    return-void
.end method

.method public static deleteAcc(ILandroid/app/Activity;)V
    .locals 4
    .param p0, "uid"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 286
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->delLastActTime(I)V

    .line 287
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->delAddedTime(I)V

    .line 289
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "posts"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 290
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "friends"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 291
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dialogs"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 292
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chats"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 293
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "groups"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 294
    const-string v1, "null"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 295
    const-string v1, "2fa"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 296
    const-string v1, "picker_default"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 297
    const-string v1, "stikers"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 298
    const-string v1, "vk-orm_meta"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 299
    const-string v1, "cookieStore"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 300
    const-string v1, "drafts"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 302
    const-string v1, "longpoll"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 303
    const-string v1, "msg"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 304
    const-string v1, "notify"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 305
    const-string v1, "WebViewChromiumPrefs"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 306
    const-string v1, "GENERAL"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 307
    const-string v1, "Platform"

    invoke-static {p0, v1}, Lcom/vkcoffee/android/MAC;->deletePreferences(ILjava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "uids"

    const-string v3, ":"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "uids":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 313
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 314
    const-string v2, "uids"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ManID_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    return-void
.end method

.method private static deletePreferences(ILjava/lang/String;)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "mainKey"    # Ljava/lang/String;

    .prologue
    .line 379
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    return-void
.end method

.method public static disableEditDataStatus()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "newAuthEdit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public static disableGetDataStatus()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "newAuth"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method private static generalSet(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 10
    .param p0, "from"    # Landroid/content/SharedPreferences;
    .param p1, "to"    # Landroid/content/SharedPreferences;

    .prologue
    .line 435
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 436
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v4, p0

    .line 439
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 470
    return-void

    .line 439
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 440
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 441
    .local v5, "v":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 444
    .local v2, "key":Ljava/lang/String;
    const-string v3, ":publicTest:selectLangApp:VKCoffee_icon:animVKApp:colorNavBar:recomendedFriends:__dbg_no_ads:blurMenu:jeremy:menuZone:doubleTap:normalSwipe:goSetPinN:strongModePinN:finger:customDirCh:shakeUpd:useOficPathCache:customDirCoffee:exVideo:exVideoEX:awayPHP:photoRev:tablet:youtube:forceCardView:forceCardViewCh:showCount:notifCount:messCount:friendCount:groupCount:photoCount:videoCount:gamesCount:NEWS:FEEDBACK:DIALOGS:FRIENDS:GROUPS:PHOTOS:VIDEOS:AUDIOS:GAMES:FAVE:SEARCH:SETTINGS:OFFLINE:UNREAD:UNTYPING:CLOSE:PIN:compressPhotos:enableAudioCache:forceTabletUI:sendByEnter:saveProcessedImage:bigImagesMobile:fontSize:friendsOrderNew:useChromeCustomTabs:compressVideos:gif_autoplay:"

    .line 454
    .local v3, "neededParams":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 455
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    .line 456
    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "v":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 457
    .restart local v5    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v7, v5, Ljava/lang/Float;

    if-eqz v7, :cond_3

    .line 458
    check-cast v5, Ljava/lang/Float;

    .end local v5    # "v":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 459
    .restart local v5    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    .line 460
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "v":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 461
    .restart local v5    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v7, v5, Ljava/lang/Long;

    if-eqz v7, :cond_5

    .line 462
    check-cast v5, Ljava/lang/Long;

    .end local v5    # "v":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 463
    .restart local v5    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 464
    check-cast v5, Ljava/lang/String;

    .end local v5    # "v":Ljava/lang/Object;
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private static getAddedTime(I)Ljava/lang/String;
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 210
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Add_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 211
    .local v0, "time":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 212
    const-string v2, "-;"

    .line 214
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-int v3, v0

    invoke-static {v3}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCount()I
    .locals 7

    .prologue
    .line 654
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "uids"

    const-string v5, ":"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "uids":Ljava/lang/String;
    const/4 v0, 0x0

    .line 656
    .local v0, "count":I
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 661
    return v0

    .line 656
    :cond_0
    aget-object v1, v4, v3

    .line 657
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 658
    add-int/lit8 v0, v0, 0x1

    .line 656
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getCurrentUID()I
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurrentUID"

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getL(I)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 597
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->getA(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLastActTime(I)Ljava/lang/String;
    .locals 8
    .param p0, "uid"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 219
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Act_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 220
    .local v0, "time":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 221
    const-string v2, "-."

    .line 226
    :goto_0
    return-object v2

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->checkDon(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-int v3, v0

    invoke-static {v3}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 226
    :cond_1
    const-string v2, "\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u0442\u0435\u043c, \u043a\u0442\u043e \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u043b \u043f\u0440\u043e\u0435\u043a\u0442."

    goto :goto_0
.end method

.method public static getManipulateID(I)I
    .locals 3
    .param p0, "uid"    # I

    .prologue
    const/4 v0, -0x1

    .line 650
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ManID_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getNameAcc(I)Ljava/lang/String;
    .locals 6
    .param p0, "neededAcc"    # I

    .prologue
    const/4 v5, 0x0

    .line 513
    const-string v0, "no name"

    .line 514
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v1

    .line 515
    .local v1, "uid":I
    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCurrentUID()I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "username"

    const-string v5, "NO NAME"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " <-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    :goto_0
    return-object v0

    .line 518
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "null"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "username"

    const-string v4, "AuthFailed, try login again"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNeededUid(I)I
    .locals 8
    .param p0, "neededAcc"    # I

    .prologue
    .line 500
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCount()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 501
    .local v0, "accounts":[Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "uids"

    const-string v6, ":"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "uids":Ljava/lang/String;
    const/4 v1, 0x0

    .line 503
    .local v1, "count":I
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 509
    aget-object v4, v0, p0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 503
    :cond_0
    aget-object v2, v5, v4

    .line 504
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 505
    aput-object v2, v0, v1

    .line 506
    add-int/lit8 v1, v1, 0x1

    .line 503
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static getP(I)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 600
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->getB(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProfilePhoto(I)Ljava/lang/String;
    .locals 6
    .param p0, "neededAcc"    # I

    .prologue
    const/4 v5, 0x0

    .line 525
    const-string v0, ""

    .line 526
    .local v0, "link":Ljava/lang/String;
    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v1

    .line 527
    .local v1, "uid":I
    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCurrentUID()I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 528
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 530
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "null"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSecret(I)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 593
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "secret"

    const-string v2, "noData"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSid(I)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 590
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sid"

    const-string v2, "noData"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static goChangeAcc(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uid"    # I

    .prologue
    .line 406
    invoke-static {}, Lcom/vkcoffee/android/MAC;->positiveChangeAcc()V

    .line 407
    invoke-static {}, Lcom/vkcoffee/android/MAC;->backupAndClearCurrentAcc()V

    .line 408
    invoke-static {p1}, Lcom/vkcoffee/android/MAC;->applyNewAcc(I)V

    .line 409
    invoke-static {p1}, Lcom/vkcoffee/android/MAC;->setLastActTime(I)V

    .line 410
    invoke-static {p1}, Lcom/vkcoffee/android/MAC;->applyConfigs(I)V

    .line 411
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->doRestart()V

    .line 413
    return-void
.end method

.method public static goCheck(Landroid/app/Activity;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "item"    # I

    .prologue
    .line 606
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 607
    .local v2, "progressDialog":Landroid/app/ProgressDialog;
    const-string v3, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0434\u0430\u043d\u043d\u044b\u0445..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 608
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 609
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 610
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 611
    .local v0, "checkReq":Lcom/loopj/android/http/RequestParams;
    const-string v3, "access_token"

    invoke-static {p1}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v4

    invoke-static {v4}, Lcom/vkcoffee/android/MAC;->getSid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v3, "fields"

    const-string v4, "country"

    invoke-virtual {v0, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v3, "v"

    const-string v4, "5.29"

    invoke-virtual {v0, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v3, "sig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/method/account.getInfo?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/vkcoffee/android/MAC;->getNeededUid(I)I

    move-result v5

    invoke-static {v5}, Lcom/vkcoffee/android/MAC;->getSecret(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 616
    .local v1, "online":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "account.getInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/MAC$9;

    invoke-direct {v4, v2, p0, p1}, Lcom/vkcoffee/android/MAC$9;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;I)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 647
    return-void
.end method

.method public static loginAcc(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "l"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "editMode"    # Z

    .prologue
    .line 668
    new-instance v8, Landroid/app/Dialog;

    invoke-direct {v8, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/vkcoffee/android/MAC;->auth:Landroid/app/Dialog;

    .line 670
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 671
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030052

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 673
    .local v0, "dialoglayout":Landroid/view/View;
    sget-object v8, Lcom/vkcoffee/android/MAC;->auth:Landroid/app/Dialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 675
    sget-object v8, Lcom/vkcoffee/android/MAC;->auth:Landroid/app/Dialog;

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 677
    const v8, 0x7f1001a2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 679
    const-string v8, "#5181B8"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 682
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 683
    const v8, 0x7f10019c

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 684
    .local v3, "t":Landroid/widget/EditText;
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 685
    .local v7, "view":Ljava/lang/String;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    if-lt v1, v8, :cond_3

    .line 688
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 689
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 690
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setClickable(Z)V

    .line 691
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 693
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 695
    .end local v1    # "i":I
    .end local v3    # "t":Landroid/widget/EditText;
    .end local v7    # "view":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 696
    const v8, 0x7f10019d

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 697
    .restart local v3    # "t":Landroid/widget/EditText;
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 700
    .end local v3    # "t":Landroid/widget/EditText;
    :cond_1
    const v8, 0x7f10019f

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 701
    .local v4, "txt1":Landroid/widget/TextView;
    if-eqz p3, :cond_4

    .line 702
    const-string v8, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :goto_1
    const v8, 0x7f10019f

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/MAC$10;

    invoke-direct {v9, p1, v0, p0, p3}, Lcom/vkcoffee/android/MAC$10;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Z)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 725
    const v8, 0x7f10019e

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 726
    .local v5, "txt2":Landroid/widget/TextView;
    const-string v8, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    const v8, 0x7f10019e

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/MAC$11;

    invoke-direct {v9, v0, v5}, Lcom/vkcoffee/android/MAC$11;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    .end local v5    # "txt2":Landroid/widget/TextView;
    :cond_2
    :goto_2
    const v8, 0x7f1001a1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 738
    .local v6, "txt3":Landroid/widget/TextView;
    const-string v8, "\u041e\u0442\u043c\u0435\u043d\u0430"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    const v8, 0x7f1001a1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/MAC$12;

    invoke-direct {v9, p0}, Lcom/vkcoffee/android/MAC$12;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    sget-object v8, Lcom/vkcoffee/android/MAC;->auth:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 746
    sget-object v8, Lcom/vkcoffee/android/MAC;->auth:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setLayout(II)V

    .line 747
    return-void

    .line 686
    .end local v4    # "txt1":Landroid/widget/TextView;
    .end local v6    # "txt3":Landroid/widget/TextView;
    .restart local v1    # "i":I
    .restart local v3    # "t":Landroid/widget/EditText;
    .restart local v7    # "view":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 704
    .end local v1    # "i":I
    .end local v3    # "t":Landroid/widget/EditText;
    .end local v7    # "view":Ljava/lang/String;
    .restart local v4    # "txt1":Landroid/widget/TextView;
    :cond_4
    const-string v8, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 733
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 734
    const v8, 0x7f10019e

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private static positiveChangeAcc()V
    .locals 3

    .prologue
    .line 416
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chAcc"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    return-void
.end method

.method private static restorePreferences(ILjava/lang/String;)V
    .locals 4
    .param p0, "uid"    # I
    .param p1, "mainKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 371
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "null"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "new_auth"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "need_update_gcm"

    const-string v2, "need_update_gcm"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 374
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->copyPrefs(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 375
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    return-void
.end method

.method private static restoreStaticSett(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 389
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GENERAL"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->copyPrefs(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 390
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "STATIC"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->generalSet(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 391
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "STATIC"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    return-void
.end method

.method private static sayNewAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 750
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "newAuth"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 751
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 752
    return-void
.end method

.method private static sayNewAuthWithEdit(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 755
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "newAuthEdit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 756
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/TransientAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 757
    return-void
.end method

.method private static setAddedTime(I)V
    .locals 6
    .param p0, "uid"    # I

    .prologue
    .line 189
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    return-void
.end method

.method public static setCurrentUID(I)V
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 256
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    const-string v1, "CurrentUID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method

.method private static setLastActTime(I)V
    .locals 6
    .param p0, "uid"    # I

    .prologue
    .line 196
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Act_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    return-void
.end method

.method public static setNewMainManipulateID(I)V
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 429
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ManID_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    return-void
.end method

.method public static setNewManipulateID(I)V
    .locals 6
    .param p0, "uid"    # I

    .prologue
    .line 426
    invoke-static {}, Lcom/vkcoffee/android/MAC;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ManID_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method

.method public static viewAccs(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 102
    const-string v3, "\u0410\u043a\u043a\u0443\u043d\u0442\u043e\u0432 \u043d\u0435\u0442"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 129
    :goto_0
    return-void

    .line 105
    :cond_0
    const-class v3, Lcom/vkcoffee/android/AuthActivity;

    if-eqz v3, :cond_1

    .line 106
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkcoffee/android/MAC;->ACTIVE:Z

    .line 108
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCount()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 109
    .local v0, "accounts":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 113
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "alert":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v3, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0430\u043a\u043a\u0430\u0443\u043d\u0442"

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    new-instance v3, Lcom/vkcoffee/android/MAC$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/MAC$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c"

    new-instance v4, Lcom/vkcoffee/android/MAC$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/MAC$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 110
    .end local v1    # "alert":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :cond_2
    invoke-static {v2}, Lcom/vkcoffee/android/MAC;->getNameAcc(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
