.class Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$5;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "InstalledGameSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->doRemoveApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.games.RELOAD_INSTALLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 131
    return-void
.end method
