.class public abstract Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;
.super Lcom/vkcoffee/android/ui/holder/UserHolder;
.source "AbsAdminUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vkcoffee/android/UserProfile;",
        ">",
        "Lcom/vkcoffee/android/ui/holder/UserHolder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mFragment:Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;Landroid/view/ViewGroup;I)V
    .locals 6
    .param p1, "fragment"    # Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;, "Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder<TT;>;"
    const/4 v3, 0x1

    .line 53
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    .line 54
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->mFragment:Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;

    .line 55
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 59
    .local p0, "this":Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;, "Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;, "Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder<TT;>;"
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    .local p0, "this":Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;, "Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onClick(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->mActionButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->mFragment:Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->mAction:Lcom/vkcoffee/android/functions/VoidF2;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->mFragment:Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->mAction:Lcom/vkcoffee/android/functions/VoidF2;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-interface {v0, p1, v1}, Lcom/vkcoffee/android/functions/VoidF2;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method
