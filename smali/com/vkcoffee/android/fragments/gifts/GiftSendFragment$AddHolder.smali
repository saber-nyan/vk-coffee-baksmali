.class final Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GiftSendFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AddHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V
    .locals 5
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 251
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 252
    const v0, 0x7f030096

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    const v2, 0x7f02011e

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0xae7e48

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 254
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;->bind(Ljava/lang/Void;)V

    return-void
.end method

.method public bind(Ljava/lang/Void;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/Void;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mAddVisibility:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    return-void

    .line 257
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->addRecipient()V

    .line 262
    return-void
.end method
