.class Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment$Holder;
.super Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;
.source "InvitationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;
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
    .line 56
    const v0, 0x7f0300b0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;I)V

    .line 57
    return-void
.end method
