.class final Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GiftSendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 361
    const v0, 0x7f030097

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 362
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->bind(Ljava/lang/Void;)V

    return-void
.end method

.method public bind(Ljava/lang/Void;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/Void;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-boolean v1, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSendEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSendText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->sendGift()V

    .line 372
    return-void
.end method
