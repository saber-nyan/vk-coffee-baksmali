.class Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "InstalledGameSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6$1;->val$enable:Z

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$300(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$6$1;->val$enable:Z

    iput-boolean v1, v0, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    .line 153
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.games.RELOAD_INSTALLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 154
    return-void
.end method
