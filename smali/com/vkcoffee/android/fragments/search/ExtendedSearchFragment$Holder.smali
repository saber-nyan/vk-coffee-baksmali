.class Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;
.super Lcom/vkcoffee/android/ui/holder/UserHolder;
.source "ExtendedSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/UserHolder",
        "<",
        "Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfo:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;Landroid/view/ViewGroup;)V
    .locals 6
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    .line 334
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    .line 335
    const v2, 0x7f030193

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    .line 336
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->mInfo:Landroid/widget/TextView;

    .line 337
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;)V
    .locals 4
    .param p1, "user"    # Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 341
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 342
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;->university:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;->university:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->mInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;->commonCountStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->mInfo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;->commonCountStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 342
    goto :goto_0

    :cond_2
    move v1, v2

    .line 345
    goto :goto_1
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 330
    check-cast p1, Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->bind(Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onClick(Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->mActionButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->mData:Lcom/vkcoffee/android/UserProfile;

    check-cast v0, Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->addFriend(Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;I)V

    .line 356
    :cond_0
    return-void
.end method
