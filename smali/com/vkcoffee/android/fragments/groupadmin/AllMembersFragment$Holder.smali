.class Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$Holder;
.super Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;
.source "AllMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "fragment"    # Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 256
    const v0, 0x7f0300ae

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;I)V

    .line 257
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 4
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 262
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$Holder;->mActionButton:Landroid/view/View;

    const-string/jumbo v0, "creator"

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "role"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$Holder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method
