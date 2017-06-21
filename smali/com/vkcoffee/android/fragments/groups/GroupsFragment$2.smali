.class Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 153
    const/4 v3, 0x1

    .line 154
    .local v3, "z":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_4

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 159
    .local v2, "ns":Z
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$3(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z

    move-result v5

    if-eq v2, v5, :cond_3

    .line 161
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v5, v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$4(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;Z)V

    .line 162
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$3(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-virtual {v5, v6, v6}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setPagerCurrentItem(IZ)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .line 166
    .local v0, "groupsFragment":Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$3(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 167
    const/4 v4, 0x0

    .line 171
    .local v4, "z2":Z
    :goto_1
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setTabsVisible(Z)V

    .line 172
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .line 173
    .local v1, "groupsFragment2":Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$3(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    const/4 v3, 0x0

    .line 176
    :cond_2
    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->setSwipeEnabled(Z)V

    .line 178
    .end local v0    # "groupsFragment":Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
    .end local v1    # "groupsFragment2":Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
    .end local v4    # "z2":Z
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$5(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->updateFilter(Ljava/lang/String;)V

    .line 179
    return-void

    .line 157
    .end local v2    # "ns":Z
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "ns":Z
    goto :goto_0

    .line 169
    .restart local v0    # "groupsFragment":Lcom/vkcoffee/android/fragments/groups/GroupsFragment;
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "z2":Z
    goto :goto_1
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 149
    return-void
.end method
