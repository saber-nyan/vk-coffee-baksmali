.class Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 403
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 404
    .local v0, "fuckingMagicIboNehuiUsatAsyncTask":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 405
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOnline()V

    .line 406
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment$3;)Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/settingscoffee/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u0412\u044b \u0432 Online \u0440\u0435\u0436\u0438\u043c\u0435 :)"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 407
    return-void
.end method
