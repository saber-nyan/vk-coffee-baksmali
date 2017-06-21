.class Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ManagerEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;

    .line 286
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_REMOVED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;)Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;)Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->access$1(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 292
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;)Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_dialog"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;)Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->dismiss()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5$1;->this$1:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$5;)Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
