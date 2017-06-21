.class public Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;
.super Lcom/vkcoffee/android/fragments/PostListFragment;
.source "SuggestedPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SuggestedPostListFragment$Builder;
    }
.end annotation


# instance fields
.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 42
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallGet;

    iget v1, p0, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->uid:I

    const-string/jumbo v2, "suggests"

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/vkcoffee/android/api/wall/WallGet;-><init>(IIILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;Landroid/app/Fragment;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 50
    return-void
.end method

.method protected getListReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "postponed"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->uid:I

    .line 25
    const v0, 0x7f08052e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->setTitle(I)V

    .line 26
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 27
    const v0, 0x7f0802fb

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SuggestedPostListFragment;->setEmptyText(I)V

    .line 28
    return-void
.end method
