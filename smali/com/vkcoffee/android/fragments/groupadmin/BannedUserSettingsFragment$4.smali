.class Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "BannedUserSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

.field private final synthetic val$i:I

.field private final synthetic val$i2:I

.field private final synthetic val$str:Ljava/lang/String;

.field private final synthetic val$z:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;Landroid/content/Context;ILjava/lang/String;IZ)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$i:I

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$str:Ljava/lang/String;

    iput p5, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$i2:I

    iput-boolean p6, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$z:Z

    .line 231
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 233
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "ban_admin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 234
    .local v2, "wasBanned":Z
    if-nez v2, :cond_0

    .line 235
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v1}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 236
    .local v1, "me":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "username"

    const-string v5, "DELETED"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "usersex"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/vkcoffee/android/UserProfile;->f:Z

    .line 238
    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    iput v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 239
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "ban_admin"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "ban_date"

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    .end local v1    # "me":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$i:I

    if-lez v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "ban_end_date"

    iget v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$i:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "ban_comment"

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$str:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "ban_reason"

    iget v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$i2:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "ban_comment_visible"

    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->val$z:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_CHANGED:Ljava/lang/String;

    :goto_1
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "group_id"

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v3, "profile"

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 254
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "_dialog"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->dismiss()V

    .line 259
    :goto_2
    return-void

    .line 245
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->access$0(Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string v4, "ban_end_date"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_2
    sget-object v3, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_ADDED:Ljava/lang/String;

    goto :goto_1

    .line 257
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method
