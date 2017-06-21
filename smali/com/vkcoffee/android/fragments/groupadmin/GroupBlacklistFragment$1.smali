.class Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GroupBlacklistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x7f080066

    const v6, 0x7f080065

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 33
    sget-object v8, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_ADDED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 34
    const-string/jumbo v8, "group_id"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 35
    .local v2, "id":I
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v2, v8, :cond_1

    .line 72
    .end local v2    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 38
    .restart local v2    # "id":I
    :cond_1
    const-string/jumbo v8, "profile"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    .line 39
    .local v4, "u":Lcom/vkcoffee/android/UserProfile;
    iget-object v8, v4, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v9, "ban_admin"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 40
    .local v0, "admin":Lcom/vkcoffee/android/UserProfile;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    iget-boolean v10, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v10, :cond_2

    :goto_1
    new-array v7, v12, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v10, v7, v11

    invoke-virtual {v9, v6, v7}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v8, "ban_date"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 41
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->access$000(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 42
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->updateList()V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 40
    goto :goto_1

    .line 43
    .end local v0    # "admin":Lcom/vkcoffee/android/UserProfile;
    .end local v2    # "id":I
    .end local v4    # "u":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    sget-object v8, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_CHANGED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 44
    const-string/jumbo v8, "group_id"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 45
    .restart local v2    # "id":I
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v2, v8, :cond_0

    .line 48
    const-string/jumbo v8, "profile"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    .line 49
    .restart local v4    # "u":Lcom/vkcoffee/android/UserProfile;
    iget-object v8, v4, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v9, "ban_admin"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 50
    .restart local v0    # "admin":Lcom/vkcoffee/android/UserProfile;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    iget-boolean v10, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v10, :cond_5

    :goto_2
    new-array v7, v12, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v10, v7, v11

    invoke-virtual {v9, v6, v7}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v8, "ban_date"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->access$100(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 52
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->access$200(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget v7, v4, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v6, v7, :cond_6

    .line 53
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->access$300(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_4
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->updateList()V

    goto/16 :goto_0

    .end local v1    # "i":I
    :cond_5
    move v6, v7

    .line 50
    goto :goto_2

    .line 51
    .restart local v1    # "i":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 58
    .end local v0    # "admin":Lcom/vkcoffee/android/UserProfile;
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v4    # "u":Lcom/vkcoffee/android/UserProfile;
    :cond_7
    sget-object v6, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_REMOVED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    const-string/jumbo v6, "group_id"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 60
    .restart local v2    # "id":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 63
    const-string/jumbo v6, "user_id"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 64
    .local v5, "uid":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->access$400(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 65
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v7, v5, :cond_8

    .line 66
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->access$500(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_9
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->updateList()V

    goto/16 :goto_0
.end method
