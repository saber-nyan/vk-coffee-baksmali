.class Lcom/vkcoffee/android/fragments/SettingsListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string v0, "com.vkcoffee.android.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->access$1(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V

    .line 77
    :cond_0
    const-string v0, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    const-string v1, "photo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->access$2(Lcom/vkcoffee/android/fragments/SettingsListFragment;Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void
.end method
