.class final Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;
.super Lcom/vkcoffee/android/ui/holder/UserHolder;
.source "GiftSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UserHolder"
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V
    .locals 6
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 376
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 377
    const v2, 0x7f030190

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/UserHolder;-><init>(Landroid/view/ViewGroup;IZZZ)V

    .line 378
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;->mActionButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;->mData:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->deleteRecipient(Lcom/vkcoffee/android/UserProfile;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
