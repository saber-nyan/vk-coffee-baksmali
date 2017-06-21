.class Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->lambda$new$353(Lcom/vkcoffee/android/UserProfile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102000c

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$300(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v1, "result":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 132
    .local v2, "userProfile":Lcom/vkcoffee/android/UserProfile;
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vkcoffee/android/UserProfile;->isSelected:Z

    .line 133
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 136
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$300(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 138
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/util/ArrayList;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const v7, 0x102000c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$802(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$902(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$900(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08046b

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    const v0, 0x7f08013b

    invoke-interface {p2, v5, v7, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 117
    invoke-interface {p2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 118
    return v6
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 145
    .local v1, "userProfile":Lcom/vkcoffee/android/UserProfile;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/vkcoffee/android/UserProfile;->isSelected:Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 148
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$1100(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->notifyDataSetChanged()V

    .line 149
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 150
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->access$902(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 151
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
