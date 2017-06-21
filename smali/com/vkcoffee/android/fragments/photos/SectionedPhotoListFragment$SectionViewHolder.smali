.class public Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "SectionedPhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SectionViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;)V
    .locals 3
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;

    .prologue
    const/4 v2, 0x0

    .line 102
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;

    .line 103
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0300c2

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;->onBind(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method
