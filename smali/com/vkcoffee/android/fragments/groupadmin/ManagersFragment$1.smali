.class Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 29
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    iget-boolean v6, v6, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->loaded:Z

    if-nez v6, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    sget-object v6, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_ADDED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 33
    const-string/jumbo v6, "group_id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, "id":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 37
    const-string/jumbo v6, "profile"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 38
    .local v2, "newAdmin":Lcom/vkcoffee/android/UserProfile;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->access$000(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->updateList()V

    goto :goto_0

    .line 40
    .end local v1    # "id":I
    .end local v2    # "newAdmin":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    sget-object v6, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_CHANGED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 41
    const-string/jumbo v6, "group_id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 42
    .restart local v1    # "id":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 45
    const-string/jumbo v6, "profile"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/UserProfile;

    .line 46
    .local v5, "user":Lcom/vkcoffee/android/UserProfile;
    const/4 v0, 0x0

    .line 47
    .local v0, "i":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->access$100(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 48
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget v8, v5, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v7, v8, :cond_4

    .line 49
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->access$200(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->updateList()V

    goto/16 :goto_0

    .line 52
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_1

    .line 55
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v5    # "user":Lcom/vkcoffee/android/UserProfile;
    :cond_5
    sget-object v6, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_ADMIN_REMOVED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    const-string/jumbo v6, "group_id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .restart local v1    # "id":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 60
    const-string/jumbo v6, "user_id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 61
    .local v4, "uid":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->access$300(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 62
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v7, v4, :cond_6

    .line 63
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->access$400(Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
