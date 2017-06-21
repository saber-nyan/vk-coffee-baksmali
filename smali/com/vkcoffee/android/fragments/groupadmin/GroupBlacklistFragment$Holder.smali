.class Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$Holder;
.super Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;
.source "GroupBlacklistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;
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
    .line 134
    const v0, 0x7f0300af

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;I)V

    .line 135
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 140
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/UserProfile;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$Holder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method
