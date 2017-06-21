.class Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentTitleViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private button:Landroid/widget/TextView;

.field private text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 3

    .prologue
    .line 726
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 727
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030146

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 724
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->text:Landroid/widget/TextView;

    .line 728
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->button:Landroid/widget/TextView;

    .line 730
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->button:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "i":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->onClick:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 737
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->button:Landroid/widget/TextView;

    .line 738
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 739
    const/16 v0, 0x8

    .line 741
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v2

    if-gez v2, :cond_1

    .line 743
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->button:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->buttonText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :cond_1
    return-void

    .line 736
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->text:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->button:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->onButtonClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->onButtonClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$ContentTitleInfoItem;->onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
