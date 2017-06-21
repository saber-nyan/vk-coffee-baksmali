.class public Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 3

    .prologue
    .line 440
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 441
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0300c2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/view/View;)V

    .line 442
    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;->onBind(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Ljava/lang/String;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method
