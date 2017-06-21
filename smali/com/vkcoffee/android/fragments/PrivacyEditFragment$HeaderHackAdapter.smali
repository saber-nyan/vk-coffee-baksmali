.class Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderHackAdapter;
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
    name = "HeaderHackAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderHackAdapter;->this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;Lcom/vkcoffee/android/fragments/PrivacyEditFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment$1;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderHackAdapter;-><init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)V

    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderHackAdapter;->this$0:Lcom/vkcoffee/android/fragments/PrivacyEditFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment;->access$900(Lcom/vkcoffee/android/fragments/PrivacyEditFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 577
    const/16 v0, 0x28

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 573
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 568
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;->setRes(I)Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    move-result-object v0

    return-object v0
.end method
