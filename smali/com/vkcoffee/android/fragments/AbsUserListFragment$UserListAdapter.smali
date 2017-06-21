.class public Lcom/vkcoffee/android/fragments/AbsUserListFragment$UserListAdapter;
.super Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.source "AbsUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UserListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AbsUserListFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/AbsUserListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/AbsUserListFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AbsUserListFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AbsUserListFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AbsUserListFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AbsUserListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->access$300(Lcom/vkcoffee/android/fragments/AbsUserListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AbsUserListFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AbsUserListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->access$200(Lcom/vkcoffee/android/fragments/AbsUserListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AbsUserListFragment$UserListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AbsUserListFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AbsUserListFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->getHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AbsUserListFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AbsUserListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->access$100(Lcom/vkcoffee/android/fragments/AbsUserListFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onAction(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AbsUserListFragment$UserListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AbsUserListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->access$000(Lcom/vkcoffee/android/fragments/AbsUserListFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method
