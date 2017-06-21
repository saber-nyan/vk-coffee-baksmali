.class Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.source "AdminedGroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/ui/holder/GroupHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    .line 118
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->mClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->access$200(Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    iget-object v0, v0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$new$382(Lcom/vkcoffee/android/api/Group;)V
    .locals 3
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    iget-boolean v1, v1, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->mSelectMode:Z

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "gid"

    iget v2, p1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string/jumbo v1, "name"

    iget-object v2, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "photo"

    iget-object v2, p1, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "type"

    iget v2, p1, Lcom/vkcoffee/android/api/Group;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 126
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 130
    .end local v0    # "result":Landroid/content/Intent;
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment;->openGroupDetails(Lcom/vkcoffee/android/api/Group;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/GroupHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/GroupHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 144
    new-instance v0, Lcom/vkcoffee/android/ui/holder/GroupHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/GroupHolder;-><init>(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Adapter;->mClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/GroupHolder;

    move-result-object v0

    return-object v0
.end method
