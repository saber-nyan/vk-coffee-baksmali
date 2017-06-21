.class Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "InfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

.field final synthetic val$newTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;->val$newTitle:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.RELOAD_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$1200(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 496
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_TITLE_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$7;->val$newTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 499
    return-void
.end method
