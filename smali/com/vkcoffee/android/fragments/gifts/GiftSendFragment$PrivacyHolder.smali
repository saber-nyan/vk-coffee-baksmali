.class final Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GiftSendFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PrivacyHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 347
    const v0, 0x7f030098

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 348
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 349
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;->bind(Ljava/lang/Void;)V

    return-void
.end method

.method public bind(Ljava/lang/Void;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Void;

    .prologue
    .line 352
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 355
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mPrivacyEnabled:Z

    .line 356
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
