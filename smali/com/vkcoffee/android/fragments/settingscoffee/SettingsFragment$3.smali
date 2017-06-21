.class Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;)Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "var1"    # Landroid/preference/Preference;

    .prologue
    .line 390
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v2, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 392
    const-string v3, "\u0412\u044b \u0442\u043e\u0447\u043d\u043e \u0445\u043e\u0442\u0438\u0442\u0435 \u0431\u044b\u0442\u044c Online?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 393
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 394
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 395
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;)V

    .line 394
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 400
    const-string v3, "\u0422\u043e\u0447\u043d\u0435\u0435 \u043d\u0435 \u0431\u044b\u0432\u0430\u0435\u0442"

    .line 401
    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;)V

    .line 400
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 410
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 411
    const/4 v2, 0x1

    return v2
.end method
