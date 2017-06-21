.class public Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# static fields
.field static act:Landroid/app/Activity;

.field static frg:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;


# instance fields
.field SCE:Ljava/io/File;

.field SCEdir:Ljava/lang/String;

.field public Standard:Z

.field public VKCoffee:Z

.field public VKCoffeeNameDefaultIcon:Z

.field alertIcon:Landroid/app/AlertDialog;

.field alertloginpass:Landroid/app/AlertDialog;

.field debugLabel:Ljava/lang/String;

.field public defaultNameVKCoffee:Z

.field public disable:I

.field public enable:I

.field exec:Z

.field public pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 152
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->enable:I

    .line 153
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 154
    const-string v0, "com.vkcoffee.android"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->exec:Z

    .line 140
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;I)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->iconChoiceInternal(I)V

    return-void
.end method

.method private iconChoiceInternal(I)V
    .locals 6
    .param p1, "choice"    # I

    .prologue
    const/4 v5, 0x1

    .line 228
    if-nez p1, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 230
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->enable:I

    .line 229
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 232
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 233
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 232
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 235
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 236
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 235
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 238
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 239
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 238
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 241
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 242
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 241
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e, \u043f\u043e\u043d\u0430\u0434\u043e\u0431\u0438\u0442\u0441\u044f \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u043b\u0430\u0443\u043d\u0447\u0435\u0440 \u0432\u0440\u0443\u0447\u043d\u0443\u044e \u0434\u043b\u044f \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u0430. \u0415\u0441\u043b\u0438 \u0442\u0430\u043a\u043e\u0439 \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438 \u043d\u0435\u0442, \u0442\u043e \u043f\u0435\u0440\u0435\u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 313
    return-void

    .line 244
    :cond_1
    if-ne p1, v5, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 245
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 248
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 249
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->enable:I

    .line 248
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 251
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 251
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 254
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 255
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 254
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 258
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 257
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 261
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 264
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 264
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 267
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 268
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->enable:I

    .line 267
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 270
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 270
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 273
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 274
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 273
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 277
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 278
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 281
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 282
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 281
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 284
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 285
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 284
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 287
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 288
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->enable:I

    .line 287
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 290
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 291
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 290
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 294
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 296
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".Standard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 295
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 298
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 299
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".defaultNameVKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 298
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 301
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeDefaultIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 301
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 304
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 305
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->disable:I

    .line 304
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 307
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".VKCoffeeMaterial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->enable:I

    .line 307
    invoke-virtual {v0, v1, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_0
.end method

.method private static photo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 325
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "Params"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "freePhotoRev"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 326
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "OTA"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "internalAccess"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "VERIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "helpers"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "VERIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "donnated"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "VERIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "donnatedVerifCoffee"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    const-string v1, "photoRev"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 331
    sget-object v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    const-string v1, "photoRev"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "\u0412 \u0430\u043b\u044c\u0431\u043e\u043c\u0430\u0445 \u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438 \u0431\u0443\u0434\u0443\u0442 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c\u0441\u044f \u043e\u0442 \u043d\u043e\u0432\u044b\u0445 \u043a \u0441\u0442\u0430\u0440\u044b\u043c"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    :goto_0
    return-void

    .line 337
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    const-string v1, "photoRev"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 338
    sget-object v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    const-string v1, "photoRev"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "\u0412 \u0430\u043b\u044c\u0431\u043e\u043c\u0430\u0445 \u0444\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438 \u0431\u0443\u0434\u0443\u0442 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c\u0441\u044f \u043e\u0442 \u043d\u043e\u0432\u044b\u0445 \u043a \u0441\u0442\u0430\u0440\u044b\u043c\n\n\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u0434\u043b\u044f \u0442\u0435\u0445, \u043a\u0442\u043e \u0441\u0434\u0435\u043b\u0430\u043b \u043f\u043e\u0436\u0435\u0440\u0442\u0432\u043e\u0432\u0430\u043d\u0438\u0435 \u0432 \u043f\u0440\u043e\u0435\u043a\u0442"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    const-string v1, "photoRev"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public iconChoise()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 158
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "iconChoi"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 159
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

    .line 160
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v3, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0438\u0439 \u0432\u0430\u0440\u0438\u0430\u043d\u0442 \u0438\u043a\u043e\u043d\u043a\u0438"

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 162
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 163
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;)V

    .line 162
    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->alertIcon:Landroid/app/AlertDialog;

    .line 224
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->alertIcon:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 225
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "var1"    # Landroid/app/Activity;

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 366
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 367
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 368
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "VK Coffee"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 373
    sput-object p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->frg:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    .line 374
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->act:Landroid/app/Activity;

    .line 376
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->addPreferencesFromResource(I)V

    .line 388
    const-string v0, "onlineAPI"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 415
    const-string v0, "offlineAPI"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 427
    const-string v0, "goPublic"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "LkoCiNfHy4ImXs96Fwmw6iN07JahsnrgykwYin90zn0="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 428
    const-string v0, "goPublic"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "05/09/2016\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "90ZCA86uoZVgIZM3IH9G8g=="

    invoke-static {v2}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    const-string v0, "goPublic"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 439
    const-string v0, "goProj"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$6;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 504
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Landroid/view/ViewGroup;
    .param p3, "var3"    # Landroid/os/Bundle;

    .prologue
    .line 507
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, "var4":Landroid/view/View;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 509
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 513
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 515
    return-void
.end method
