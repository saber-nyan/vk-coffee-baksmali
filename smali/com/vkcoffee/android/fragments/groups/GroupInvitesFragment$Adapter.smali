.class Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.source "GroupInvitesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/GroupInvitation;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->access$800(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/GroupInvitation;

    iget-object v0, v0, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    iget-object v0, v0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 159
    new-instance v0, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;-><init>(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->access$600(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->access$700(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;)Lcom/vkcoffee/android/functions/VoidF2Int;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;->attach(Lcom/vkcoffee/android/functions/VoidF1;Lcom/vkcoffee/android/functions/VoidF2Int;)Lcom/vkcoffee/android/ui/holder/GroupInvitationHolder;

    move-result-object v0

    return-object v0
.end method
