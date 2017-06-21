.class final Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GiftSendFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessageHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 316
    const v0, 0x7f03009a

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 317
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 318
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iput-object p1, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mMessage:Ljava/lang/CharSequence;

    .line 331
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->updateFinishOnTouchOutside()V

    .line 332
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 324
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;->bind(Ljava/lang/Void;)V

    return-void
.end method

.method public bind(Ljava/lang/Void;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Void;

    .prologue
    .line 321
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 327
    return-void
.end method
