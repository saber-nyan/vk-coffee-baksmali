.class Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsHeaderViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileDetailsHeaderViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)V
    .locals 3

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsHeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .line 183
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030158

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->access$700(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsHeaderViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsHeaderViewHolder;->onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;)V

    return-void
.end method
