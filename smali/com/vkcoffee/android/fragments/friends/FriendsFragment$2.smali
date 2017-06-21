.class Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 242
    const/4 v3, 0x1

    .line 243
    .local v3, "z":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_4

    .line 244
    :cond_0
    const/4 v2, 0x0

    .line 248
    .local v2, "ns":Z
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$4(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Z

    move-result v5

    if-eq v2, v5, :cond_3

    .line 250
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v5, v2}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$5(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;Z)V

    .line 251
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$4(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-virtual {v5, v6, v6}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setPagerCurrentItem(IZ)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .line 255
    .local v0, "friendsFragment":Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$4(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 256
    const/4 v4, 0x0

    .line 260
    .local v4, "z2":Z
    :goto_1
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setSwipeEnabled(Z)V

    .line 261
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    .line 262
    .local v1, "friendsFragment2":Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$4(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 263
    const/4 v3, 0x0

    .line 265
    :cond_2
    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->setTabsVisible(Z)V

    .line 267
    .end local v0    # "friendsFragment":Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
    .end local v1    # "friendsFragment2":Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
    .end local v4    # "z2":Z
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;->access$6(Lcom/vkcoffee/android/fragments/friends/FriendsFragment;)Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->updateFilter(Ljava/lang/String;)V

    .line 268
    return-void

    .line 246
    .end local v2    # "ns":Z
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "ns":Z
    goto :goto_0

    .line 258
    .restart local v0    # "friendsFragment":Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "z2":Z
    goto :goto_1
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 235
    return-void
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 238
    return-void
.end method
