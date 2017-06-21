.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeVisualFragment.java"


# instance fields
.field alertFirstStart:Landroid/app/AlertDialog;

.field alertIcon:Landroid/app/AlertDialog;

.field public disable:I

.field public enable:I

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    .line 597
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->enable:I

    .line 598
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 599
    const-string v0, "com.vkcoffee.android"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->selectLang(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->menuEdit(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->checkDepency()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->selectFontSize(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;I)V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->iconChoiceInternal(I)V

    return-void
.end method

.method private checkDepency()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 352
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showCount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "selectCount"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 354
    const-string v0, "fontCount"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 359
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "jeremy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "jeremy"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 362
    const-string v0, "doubleTap"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 363
    const-string v0, "menuZone"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 364
    const-string v0, "normalSwipe"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 389
    :goto_1
    return-void

    .line 356
    :cond_0
    const-string v0, "fontCount"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 357
    const-string v0, "selectCount"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "doubleTap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "menuZone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "normalSwipe"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 368
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_3

    .line 369
    :cond_2
    const-string v0, "jeremy"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 371
    const-string v0, "doubleTap"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 372
    const-string v0, "menuZone"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 373
    const-string v0, "normalSwipe"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 374
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "jeremy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    .line 375
    const-string v0, "jeremy"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 378
    const-string v0, "doubleTap"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 379
    const-string v0, "menuZone"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 380
    const-string v0, "normalSwipe"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 383
    :cond_4
    const-string v0, "jeremy"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 385
    const-string v0, "doubleTap"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 386
    const-string v0, "menuZone"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 387
    const-string v0, "normalSwipe"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private dpi()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 521
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 523
    .local v0, "DPI":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 525
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    .local v1, "UI":Landroid/app/AlertDialog$Builder;
    const-string v6, "UI Editor"

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 527
    new-instance v3, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 528
    .local v3, "seek":Landroid/widget/SeekBar;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 529
    .local v2, "linear":Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 530
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 531
    .local v4, "text":Landroid/widget/TextView;
    const-string v6, "\u041f\u043e\u043a\u0430 \u0432\u0432\u043e\u0434\u0438\u0442\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0432\u0440\u0443\u0447\u043d\u0443\u044e, \u043f\u043e\u043b\u0437\u0443\u043d\u043e\u043a \u0434\u043b\u044f \u0442\u0435\u0441\u0442\u043e\u0432."

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 535
    const/16 v6, 0x32

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 537
    new-instance v5, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$20;

    invoke-direct {v5, p0, v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$20;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/widget/TextView;)V

    .line 555
    .local v5, "yourSeekBarListener":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 556
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 558
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    const-string v6, "DPI"

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 564
    const-string v6, "Go"

    new-instance v7, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$21;

    invoke-direct {v7, p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$21;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 577
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 579
    return-void
.end method

.method private iconChoiceInternal(I)V
    .locals 6
    .param p1, "choice"    # I

    .prologue
    const/4 v5, 0x1

    .line 603
    if-nez p1, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 605
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->enable:I

    .line 604
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 607
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 608
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 607
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 610
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 611
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 610
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 613
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 614
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 613
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 616
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 617
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 616
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 686
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e, \u043f\u043e\u043d\u0430\u0434\u043e\u0431\u0438\u0442\u0441\u044f \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u043b\u0430\u0443\u043d\u0447\u0435\u0440 \u0432\u0440\u0443\u0447\u043d\u0443\u044e \u0434\u043b\u044f \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u0430. \u0415\u0441\u043b\u0438 \u0442\u0430\u043a\u043e\u0439 \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438 \u043d\u0435\u0442, \u0442\u043e \u043f\u0435\u0440\u0435\u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 688
    return-void

    .line 619
    :cond_1
    if-ne p1, v5, :cond_2

    .line 620
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 621
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 620
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 623
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 624
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->enable:I

    .line 623
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 626
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 627
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 626
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 629
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 630
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 629
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 632
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 633
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 632
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 635
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 636
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 637
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 636
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 639
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 640
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 639
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 642
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 643
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->enable:I

    .line 642
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 645
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 646
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 645
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 648
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 649
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 648
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 652
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 653
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 654
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 653
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 656
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 657
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 656
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 659
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 660
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 659
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 662
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 663
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->enable:I

    .line 662
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 665
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 666
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 665
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 669
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 671
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 670
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 673
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 674
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 673
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 676
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 677
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 676
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 679
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 680
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->disable:I

    .line 679
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 682
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 683
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->enable:I

    .line 682
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0
.end method

.method private menuEdit(Landroid/app/Activity;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v12, -0x2

    .line 479
    const/4 v1, 0x0

    .line 481
    .local v1, "dragListAdapter":Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 482
    .local v6, "listEdit":Landroid/app/Dialog;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 484
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 485
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0301a4

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, "dialoglayout":Landroid/view/View;
    new-instance v10, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$19;

    invoke-direct {v10, p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$19;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/app/Activity;)V

    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 497
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 498
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-boolean v10, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v10, :cond_0

    const v10, 0x7f0f0052

    :goto_0
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 501
    new-instance v7, Ljava/util/TreeMap;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->getList()Ljava/util/HashMap;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 502
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 505
    .local v9, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 506
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 511
    const v10, 0x7f1001bf

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/coffeeexternal/DragListView;

    .line 513
    .local v2, "dragListView":Lcom/vkcoffee/android/coffeeexternal/DragListView;
    new-instance v1, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;

    .end local v1    # "dragListAdapter":Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;
    invoke-direct {v1, p1, v5}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 515
    .restart local v1    # "dragListAdapter":Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;
    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 516
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 517
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v12, v12}, Landroid/view/Window;->setLayout(II)V

    .line 518
    return-void

    .line 498
    .end local v2    # "dragListView":Lcom/vkcoffee/android/coffeeexternal/DragListView;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_0
    const v10, 0x7f0f0051

    goto :goto_0

    .line 507
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v9    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 508
    .local v8, "me2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private selectFontSize(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 267
    const/4 v5, 0x0

    .line 268
    .local v5, "item":I
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v12, "Count"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "font"

    const/16 v13, 0x8

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 269
    const/4 v5, 0x0

    .line 277
    :cond_0
    :goto_0
    const-string v2, "8"

    .line 278
    .local v2, "eight":Ljava/lang/String;
    const-string v9, "10"

    .line 279
    .local v9, "ten":Ljava/lang/String;
    const-string v10, "12"

    .line 280
    .local v10, "twelve":Ljava/lang/String;
    const-string v3, "14"

    .line 282
    .local v3, "fourteen":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v8, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "8"

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v11, "8"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v11, "10"

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v11, "10"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v11, "12"

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v11, "12"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v11, "14"

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v11, "14"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v11, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0440\u0430\u0437\u043c\u0435\u0440 \u0448\u0440\u0438\u0444\u0442\u0430"

    invoke-virtual {v1, v11}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 299
    new-instance v7, Landroid/widget/NumberPicker;

    invoke-direct {v7, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 300
    .local v7, "numberPicker":Landroid/widget/NumberPicker;
    const/high16 v11, 0x60000

    invoke-virtual {v7, v11}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 301
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 302
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 303
    invoke-virtual {v7, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 305
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [Ljava/lang/String;

    .line 307
    .local v6, "items":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v4, v11, :cond_4

    .line 311
    invoke-virtual {v7, v6}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 314
    const v11, 0x7f08031e

    new-instance v12, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$15;

    invoke-direct {v12, p0, v7, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$15;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/widget/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v11, v12}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 345
    return-void

    .line 270
    .end local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .end local v2    # "eight":Ljava/lang/String;
    .end local v3    # "fourteen":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "items":[Ljava/lang/String;
    .end local v7    # "numberPicker":Landroid/widget/NumberPicker;
    .end local v8    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "ten":Ljava/lang/String;
    .end local v10    # "twelve":Ljava/lang/String;
    :cond_1
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v12, "Count"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "font"

    const/16 v13, 0x8

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_2

    .line 271
    const/4 v5, 0x1

    .line 272
    goto/16 :goto_0

    :cond_2
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v12, "Count"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "font"

    const/16 v13, 0x8

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_3

    .line 273
    const/4 v5, 0x2

    .line 274
    goto/16 :goto_0

    :cond_3
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v12, "Count"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "font"

    const/16 v13, 0x8

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_0

    .line 275
    const/4 v5, 0x3

    goto/16 :goto_0

    .line 308
    .restart local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .restart local v2    # "eight":Ljava/lang/String;
    .restart local v3    # "fourteen":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "items":[Ljava/lang/String;
    .restart local v7    # "numberPicker":Landroid/widget/NumberPicker;
    .restart local v8    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "ten":Ljava/lang/String;
    .restart local v10    # "twelve":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v6, v4

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private selectLang(Landroid/app/Activity;)V
    .locals 12
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x0

    .line 409
    const-string v2, "English"

    .line 410
    .local v2, "eng":Ljava/lang/String;
    const-string v7, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    .line 411
    .local v7, "rus":Ljava/lang/String;
    const-string v8, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    .line 413
    .local v8, "ukr":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v6, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "English"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    const-string v9, "English"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v9, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    const-string v9, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const-string v9, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const-string v9, "\u0423\u043a\u0440\u0430\u0457\u043d\u0441\u044c\u043a\u0430"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v9, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u044f\u0437\u044b\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    invoke-virtual {v1, v9}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 427
    new-instance v5, Landroid/widget/NumberPicker;

    invoke-direct {v5, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 428
    .local v5, "numberPicker":Landroid/widget/NumberPicker;
    const/high16 v9, 0x60000

    invoke-virtual {v5, v9}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 429
    invoke-virtual {v5, v11}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 430
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 432
    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v10, "en"

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 433
    invoke-virtual {v5, v11}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 439
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v4, v9, [Ljava/lang/String;

    .line 441
    .local v4, "items":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_2

    .line 445
    invoke-virtual {v5, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 448
    const v9, 0x7f08031e

    new-instance v10, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;

    invoke-direct {v10, p0, v5, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$18;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/widget/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v9, v10}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 476
    return-void

    .line 434
    .end local v3    # "i":I
    .end local v4    # "items":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v10, "uk"

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 435
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 437
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 442
    .restart local v3    # "i":I
    .restart local v4    # "items":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v4, v3

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearSett(Landroid/app/Activity;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 392
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v1, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 394
    const-string v1, "\u0412\u044b \u0442\u043e\u0447\u043d\u043e \u0445\u043e\u0442\u0438\u0442\u0435 \u0441\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043c\u0435\u043d\u044e?"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 395
    const v2, 0x7f0805c0

    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$16;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$16;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 401
    const v2, 0x7f0800b7

    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$17;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$17;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 406
    return-void
.end method

.method public iconChoise()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 691
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "iconChoice"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 692
    .local v1, "item":I
    const/4 v3, 0x5

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u041e\u0431\u044b\u0447\u043d\u043e\u0435 \u0438\u043c\u044f \u0438 \u0438\u043a\u043e\u043d\u043a\u0430 \u043c\u043e\u0434\u0430"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u0418\u043c\u044f \u043c\u043e\u0434\u0430 \u0438 \u043e\u0431\u044b\u0447\u043d\u0430\u044f \u0438\u043a\u043e\u043d\u043a\u0430"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "VK Coffee"

    aput-object v4, v2, v3

    const-string v3, "VK Coffee Material"

    aput-object v3, v2, v5

    .line 693
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 694
    .local v0, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v3, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0438\u0439 \u0432\u0430\u0440\u0438\u0430\u043d\u0442 \u0438\u043a\u043e\u043d\u043a\u0438"

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 695
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 696
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$23;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$23;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    .line 695
    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 701
    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$24;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 753
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertIcon:Landroid/app/AlertDialog;

    .line 755
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 756
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->addPreferencesFromResource(I)V

    .line 60
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->checkDepency()V

    .line 62
    const-string v0, "selectLangApp"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    const-string v0, "VKCoffee_icon"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 75
    const-string v0, "menuListEdit"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    const-string v0, "delMenu"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    const-string v0, "clearMenSett"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 125
    const-string v0, "colorNavBar"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$6;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$6;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 145
    const-string v0, "colorNavBar"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 146
    const-string v0, "colorNavBar"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430 Android Lollipop \u0438 \u0432\u044b\u0448\u0435"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    const-string v0, "firstStart"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$7;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$7;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    const-string v0, "showCount"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$8;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$8;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v0, "selectCount"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$9;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$9;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    const-string v0, "fontCount"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$10;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$10;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 186
    const-string v0, "warn"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "<center><b>\u0412\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u044c\u043d\u043e \u0432\u0447\u0438\u0442\u044b\u0432\u0430\u0439\u0442\u0435\u0441\u044c \u0432 \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435, \u044d\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0438\u0440\u0443\u0439\u0442\u0435 \u0438 \u0432\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0442\u043e, \u0447\u0442\u043e \u0412\u0430\u043c \u043d\u0440\u0430\u0432\u0438\u0442\u0441\u044f \u0431\u043e\u043b\u044c\u0448\u0435 \u0432\u0441\u0435\u0433\u043e.</b></center>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    const-string v0, "jeremy"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "\u041e\u043d \u0431\u044b\u043b VK Coffee \u0432\u0435\u0440\u0441\u0438\u0438 2.38 \u0438 \u043c\u043d\u043e\u0433\u0438\u043c \u043f\u043e\u043b\u044e\u0431\u0438\u043b\u0441\u044f. \u041f\u043e\u0445\u043e\u0436\u0438\u0439 \u0432 \u043e\u0444\u0438\u0446\u0438\u0430\u043b\u044c\u043d\u043e\u0439 \u0432\u0435\u0440\u0441\u0438\u0438 3.6 \u043d\u043e \u0441\u0442\u0430\u0431\u0438\u043b\u044c\u043d\u0435\u0435. <b>\u041e\u0442\u043b\u0438\u0447\u043d\u043e \u0440\u0430\u0431\u043e\u0442\u0430\u0435\u0442 \u043d\u0430 Android \u043d\u0438\u0436\u0435 Lollipop, \u043d\u043e \u0434\u043b\u044f Lollipop \u0438 \u0432\u044b\u0448\u0435 \u0441\u0442\u0430\u0442\u0443\u0441\u0431\u0430\u0440 \u043d\u0435 \u043a\u0440\u0430\u0441\u0438\u0442\u0441\u044f.</b>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    const-string v0, "jeremy"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$11;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$11;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string v0, "normalSwipe"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$12;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$12;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    const-string v0, "menuZone"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$13;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$13;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 245
    const-string v0, "doubleTap"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$14;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$14;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    return-void
.end method

.method public selectAlertLang()V
    .locals 5

    .prologue
    .line 582
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v2, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 584
    const-string v2, "\u042d\u043b\u0435\u043c\u0435\u043d\u0442\u044b \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u0438 VK Coffee \u043e\u0441\u0442\u0430\u043d\u0443\u0442\u0441\u044f \u043d\u0430 \u0440\u0443\u0441\u0441\u043a\u043e\u043c \u044f\u0437\u044b\u043a\u0435"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 585
    const-string v3, "OK"

    .line 586
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$22;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$22;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    .line 585
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 591
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 593
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 595
    return-void
.end method

.method public selectFirstStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 760
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "firstOpenApp"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 761
    .local v1, "item":I
    const/16 v3, 0x9

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c"

    aput-object v4, v2, v3

    const-string v3, "\u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "\u041e\u0442\u0432\u0435\u0442\u044b"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "\u0413\u0440\u0443\u043f\u043f\u044b"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u0410\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u0417\u0430\u043a\u043b\u0430\u0434\u043a\u0438"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    aput-object v4, v2, v3

    .line 762
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 763
    .local v0, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v3, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0438\u0439 \u0440\u0430\u0437\u0434\u0435\u043b \u043f\u0440\u0438 \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u0438 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 764
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 765
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$25;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$25;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    .line 764
    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 770
    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$26;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment$26;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 833
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertFirstStart:Landroid/app/AlertDialog;

    .line 835
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeVisualFragment;->alertFirstStart:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 836
    return-void
.end method
