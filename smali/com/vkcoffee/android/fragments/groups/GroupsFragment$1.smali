.class Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    .line 56
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 70
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 88
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 56
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "i":I
    :sswitch_0
    const-string v3, "com.vkcoffee.android.GROUP_INVITES_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const-string v3, "com.vkcoffee.android.GROUP_INVITES_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const/4 v2, 0x1

    .line 60
    .local v2, "z":Z
    goto :goto_0

    .line 56
    .end local v2    # "z":Z
    :sswitch_1
    const-string v3, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    const-string v3, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->doLoadData()V

    goto :goto_1

    .line 75
    :pswitch_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$0(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)I

    move-result v3

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumGroupInvitations()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 76
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumGroupInvitations()I

    move-result v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$1(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;I)V

    .line 77
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->getPagerCurrentItem()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$0(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)I

    move-result v3

    if-nez v3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setPagerCurrentItem(IZ)V

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$2(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V

    goto :goto_1

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x31ee0040 -> :sswitch_0
        0x5a490112 -> :sswitch_1
    .end sparse-switch

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
