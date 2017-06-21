.class Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GroupInvitesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->accept(Lcom/vkcoffee/android/api/GroupInvitation;Lcom/vkcoffee/android/data/Groups$JoinType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

.field final synthetic val$invite:Lcom/vkcoffee/android/api/GroupInvitation;

.field final synthetic val$position:I

.field final synthetic val$type:Lcom/vkcoffee/android/data/Groups$JoinType;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/GroupInvitation;Lcom/vkcoffee/android/data/Groups$JoinType;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->val$invite:Lcom/vkcoffee/android/api/GroupInvitation;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->val$type:Lcom/vkcoffee/android/data/Groups$JoinType;

    iput p5, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->val$position:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 141
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->decreaseInvites()V

    .line 142
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->val$invite:Lcom/vkcoffee/android/api/GroupInvitation;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->val$type:Lcom/vkcoffee/android/data/Groups$JoinType;

    sget-object v2, Lcom/vkcoffee/android/data/Groups$JoinType;->DECLINE:Lcom/vkcoffee/android/data/Groups$JoinType;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/vkcoffee/android/api/GroupInvitation;->sent:Ljava/lang/Boolean;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->access$500(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemChanged(I)V

    .line 146
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$3;->success(Ljava/lang/Boolean;)V

    return-void
.end method
