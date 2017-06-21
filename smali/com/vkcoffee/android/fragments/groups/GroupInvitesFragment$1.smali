.class Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GroupInvitesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 65
    const-string/jumbo v6, "com.vkcoffee.android.ACTION_GROUP_STATUS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    const-string/jumbo v6, "id"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    neg-int v2, v6

    .line 67
    .local v2, "id":I
    const-string/jumbo v6, "status"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 68
    .local v4, "status":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->access$000(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->access$100(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 70
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->access$200(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/api/GroupInvitation;

    .line 71
    .local v3, "invitation":Lcom/vkcoffee/android/api/GroupInvitation;
    iget-object v6, v3, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget v6, v6, Lcom/vkcoffee/android/api/Group;->id:I

    if-ne v6, v2, :cond_2

    .line 72
    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/api/GroupInvitation;->sent:Ljava/lang/Boolean;

    .line 73
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->access$300(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    .line 74
    .local v0, "adapter":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<Lcom/vkcoffee/android/api/GroupInvitation;>.GridAdapter<*>;"
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 82
    .end local v0    # "adapter":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<Lcom/vkcoffee/android/api/GroupInvitation;>.GridAdapter<*>;"
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v3    # "invitation":Lcom/vkcoffee/android/api/GroupInvitation;
    .end local v4    # "status":I
    :cond_1
    return-void

    .line 69
    .restart local v1    # "i":I
    .restart local v2    # "id":I
    .restart local v3    # "invitation":Lcom/vkcoffee/android/api/GroupInvitation;
    .restart local v4    # "status":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
