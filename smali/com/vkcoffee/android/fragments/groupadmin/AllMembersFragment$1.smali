.class Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AllMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 43
    sget-object v4, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_ADDED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    const-string/jumbo v4, "group_id"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, "id":I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 84
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v0    # "id":I
    :cond_1
    const-string/jumbo v4, "profile"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 49
    .local v1, "newAdmin":Lcom/vkcoffee/android/UserProfile;
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 50
    .local v3, "uid":I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$000(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 51
    .local v2, "p":Lcom/vkcoffee/android/UserProfile;
    iget v5, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v5, v3, :cond_2

    .line 52
    iget-object v4, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "role"

    iget-object v6, v1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v7, "role"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->updateList()V

    .line 57
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$100(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 58
    .restart local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    iget v5, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v5, v3, :cond_4

    .line 59
    iget-object v4, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "role"

    iget-object v6, v1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v7, "role"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->updateList()V

    goto :goto_0

    .line 64
    .end local v0    # "id":I
    .end local v1    # "newAdmin":Lcom/vkcoffee/android/UserProfile;
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v3    # "uid":I
    :cond_5
    sget-object v4, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_REMOVED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const-string/jumbo v4, "group_id"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .restart local v0    # "id":I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 69
    const-string/jumbo v4, "user_id"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 70
    .restart local v3    # "uid":I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$200(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 71
    .restart local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    iget v5, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v5, v3, :cond_6

    .line 72
    iget-object v4, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "role"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 76
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_7
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$300(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 77
    .restart local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    iget v5, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v5, v3, :cond_8

    .line 78
    iget-object v4, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "role"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 82
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_9
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->updateList()V

    goto/16 :goto_0
.end method
