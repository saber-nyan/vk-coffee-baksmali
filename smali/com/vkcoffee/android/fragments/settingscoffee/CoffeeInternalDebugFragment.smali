.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeInternalDebugFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getBlock1(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getFindPref()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->mthd1()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getSHA()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getEditorInteger()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getEditorString()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->ui()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->icon()V

    return-void
.end method

.method private getBlock1(Landroid/content/SharedPreferences;)V
    .locals 10
    .param p1, "gh"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v9, 0x1

    .line 301
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 302
    .local v3, "progress":Landroid/app/ProgressDialog;
    const-string v6, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430..."

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {v3, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 304
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 305
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 306
    .local v4, "showText":Landroid/widget/TextView;
    const/16 v6, 0x50

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 307
    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 309
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 310
    .local v1, "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v5, ""

    .line 311
    .local v5, "values":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 315
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 317
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    .local v0, "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 319
    const-string v7, "Preferences Values"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 320
    const-string v7, "OK"

    .line 321
    new-instance v8, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$12;

    invoke-direct {v8, p0, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$12;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/app/ProgressDialog;)V

    .line 320
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 326
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 327
    return-void

    .line 311
    .end local v0    # "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 312
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getEditorInteger()V
    .locals 7

    .prologue
    .line 417
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 418
    .local v2, "preference":Landroid/widget/EditText;
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, "key":Landroid/widget/EditText;
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 421
    .local v4, "value":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 422
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 423
    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 425
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 426
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 427
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    const-string v5, "Preference"

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 431
    const-string v5, "Key"

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 432
    const-string v5, "Value (Integer)"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 434
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    .local v3, "preferenceEditor":Landroid/app/AlertDialog$Builder;
    const-string v5, "Preference Editor"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 438
    const-string v5, "Go"

    new-instance v6, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$16;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$16;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 455
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 457
    return-void
.end method

.method private getEditorString()V
    .locals 7

    .prologue
    .line 460
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 461
    .local v2, "preference":Landroid/widget/EditText;
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, "key":Landroid/widget/EditText;
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 464
    .local v4, "value":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 465
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 466
    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 468
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 469
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 470
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    const-string v5, "Preference"

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 474
    const-string v5, "Key"

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 475
    const-string v5, "Value (String)"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 477
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    .local v3, "preferenceEditor":Landroid/app/AlertDialog$Builder;
    const-string v5, "Preference Editor"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 480
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 481
    const-string v5, "Go"

    new-instance v6, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$17;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 500
    return-void
.end method

.method private getFindPref()V
    .locals 5

    .prologue
    .line 384
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 386
    .local v1, "preference":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 389
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "ll":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    const-string v3, "Enter needed preference"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 395
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    .local v2, "preferenceEditor":Landroid/app/AlertDialog$Builder;
    const-string v3, "Finder"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 399
    const-string v3, "Go"

    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$15;

    invoke-direct {v4, p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$15;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 413
    return-void
.end method

.method private getPackageSignature()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v6, 0x0

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v4, v7, v8

    .line 574
    .local v4, "sig":Landroid/content/pm/Signature;
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 575
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 576
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 577
    .local v3, "sha":[B
    const-string v0, ""

    .line 578
    .local v0, "certFp":Ljava/lang/String;
    array-length v7, v3

    :goto_0
    if-lt v6, v7, :cond_0

    .line 584
    .end local v0    # "certFp":Ljava/lang/String;
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v3    # "sha":[B
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :goto_1
    return-object v0

    .line 578
    .restart local v0    # "certFp":Ljava/lang/String;
    .restart local v1    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "sha":[B
    .restart local v4    # "sig":Landroid/content/pm/Signature;
    :cond_0
    aget-byte v2, v3, v6

    .line 579
    .local v2, "sb":B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 578
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "certFp":Ljava/lang/String;
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "sb":B
    .end local v3    # "sha":[B
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v5

    .line 583
    .local v5, "x":Ljava/lang/Throwable;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    const-string v0, ""

    goto :goto_1
.end method

.method private getSHA()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 330
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 331
    .local v1, "progress":Landroid/app/ProgressDialog;
    const-string v4, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430..."

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 333
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 334
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 335
    .local v2, "showText":Landroid/widget/TextView;
    const/16 v4, 0x50

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 336
    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 338
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getPackageSignature()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 342
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 344
    const-string v5, "SHA"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 345
    const-string v5, "OK"

    .line 346
    new-instance v6, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$13;

    invoke-direct {v6, p0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$13;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/app/ProgressDialog;)V

    .line 345
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 352
    return-void
.end method

.method private getUserAgent()V
    .locals 6

    .prologue
    .line 359
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 360
    .local v1, "showText":Landroid/widget/TextView;
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 361
    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "USER_AGENT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nFUCKING_AD_USER_AGENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/api/APIController;->FUCKING_AD_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 367
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 368
    .local v0, "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 369
    const-string v4, "UsersAgent"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 370
    const-string v4, "OK"

    .line 371
    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$14;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$14;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    .line 370
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 376
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 377
    return-void
.end method

.method private icon()V
    .locals 6

    .prologue
    .line 250
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "heigh":Landroid/widget/EditText;
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 255
    .local v3, "width":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 256
    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 258
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 259
    .local v2, "ll":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 261
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    const-string v4, "\u041e\u0442\u0441\u0443\u043f \u0432\u0432\u0435\u0440\u0445"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 266
    const-string v4, "\u041e\u0442\u0441\u0442\u0443\u043f \u0432\u043b\u0435\u0432\u043e"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "UI":Landroid/app/AlertDialog$Builder;
    const-string v4, "Icon editor"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 272
    const-string v4, "Go"

    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$11;

    invoke-direct {v5, p0, v1, v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$11;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 296
    return-void
.end method

.method private mthd1()V
    .locals 24

    .prologue
    .line 504
    new-instance v11, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 505
    .local v11, "progress":Landroid/app/ProgressDialog;
    const-string v19, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430..."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 506
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 507
    invoke-virtual {v11}, Landroid/app/ProgressDialog;->show()V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 509
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v19, 0x40

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 510
    .local v9, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v7, 0x0

    .line 511
    .local v7, "i":I
    const-string v13, ""

    .line 512
    .local v13, "res":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_1

    .line 551
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 552
    .local v14, "showText":Landroid/widget/TextView;
    const/16 v19, 0x50

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 553
    const/high16 v19, 0x41300000    # 11.0f

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 555
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 557
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 558
    .local v2, "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    invoke-virtual {v2, v14}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 559
    const-string v20, "Cert debug Inf"

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 560
    const-string v20, "OK"

    .line 561
    new-instance v21, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$18;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$18;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/app/ProgressDialog;)V

    .line 560
    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    .line 566
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 569
    return-void

    .line 512
    .end local v2    # "alertDialog":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .end local v14    # "showText":Landroid/widget/TextView;
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 513
    .local v8, "p":Landroid/content/pm/PackageInfo;
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 514
    .local v16, "strName":Ljava/lang/String;
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 516
    .local v17, "strVendor":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 517
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ": "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "; "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 521
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 522
    .local v3, "arrSignatures":[Landroid/content/pm/Signature;
    array-length v0, v3

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v15, v3, v19

    .line 526
    .local v15, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    .line 527
    .local v12, "rawCert":[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 532
    .local v5, "certStream":Ljava/io/InputStream;
    :try_start_0
    const-string v22, "X509"

    invoke-static/range {v22 .. v22}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 533
    .local v4, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    .line 535
    .local v18, "x509Cert":Ljava/security/cert/X509Certificate;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\nSubject: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 536
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\nIssuer: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 537
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\nSerial number: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 538
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\ngetNotBefore: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 539
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\ngetNotAfter: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 540
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\n\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 522
    .end local v4    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v18    # "x509Cert":Ljava/security/cert/X509Certificate;
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 544
    :catch_0
    move-exception v6

    .line 545
    .local v6, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1
.end method

.method private ui()V
    .locals 9

    .prologue
    .line 189
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 190
    .local v2, "DPI":Landroid/widget/EditText;
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 191
    .local v3, "heigh":Landroid/widget/EditText;
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 192
    .local v4, "width":Landroid/widget/EditText;
    new-instance v5, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 194
    .local v5, "screenLayout":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 195
    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 196
    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    .line 197
    invoke-virtual {v5}, Landroid/widget/EditText;->setSingleLine()V

    .line 199
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 200
    .local v7, "ll":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    const-string v0, "DPI"

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 206
    const-string v0, "ScreenHeighDp"

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 207
    const-string v0, "ScreenWidthDp"

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 208
    const-string v0, "ScreenLayout"

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v6, "UI":Landroid/app/AlertDialog$Builder;
    const-string v0, "UI Editor"

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 214
    const-string v8, "Go"

    new-instance v0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$10;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 247
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->addPreferencesFromResource(I)V

    .line 114
    const-string v0, "key01"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "USER_AGENTS"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    const-string v0, "key01"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    const-string v0, "key11"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "VKApplication.context"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    const-string v0, "key11"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    const-string v0, "key12"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "Custom find"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    const-string v0, "key12"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    const-string v0, "key21"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "CertView"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    const-string v0, "key21"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    const-string v0, "key22"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "SHA1"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    const-string v0, "key22"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    const-string v0, "key31"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "Preference Editor (Integer)"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    const-string v0, "key31"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$6;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$6;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    const-string v0, "key32"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "Preference Editor (String)"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    const-string v0, "key32"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$7;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$7;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 168
    const-string v0, "key41"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "UI"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    const-string v0, "key41"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$8;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$8;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    const-string v0, "key42"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "Icon Generate"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    const-string v0, "key42"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$9;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment$9;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeInternalDebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 187
    return-void
.end method
