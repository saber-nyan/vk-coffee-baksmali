.class Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;
.super Lcom/vkcoffee/android/ui/holder/UserHolder;
.source "SuggestionsImportedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/UserHolder",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;Landroid/view/ViewGroup;)V
    .locals 6
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 199
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    .line 200
    const v2, 0x7f03017c

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    .line 201
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    .line 205
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->mActionButton:Landroid/view/View;

    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    return-void

    .line 205
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 197
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->onItemClick(Lcom/vkcoffee/android/UserProfile;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->mActionButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->onInviteClick(Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0
.end method
