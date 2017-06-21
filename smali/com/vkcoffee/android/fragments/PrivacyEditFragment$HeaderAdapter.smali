.class Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "PrivacyEditFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PrivacyEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

.field final title:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Landroid/view/View;)V
    .locals 0
    .param p2, "title"    # Landroid/view/View;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 595
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;->title:Landroid/view/View;

    .line 596
    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 623
    const/4 v0, 0x4

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 613
    const/16 v0, 0x1e

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 609
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 600
    new-instance v0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter$1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;->title:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;Landroid/view/View;)V

    return-object v0
.end method
