.class public Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SectionHeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/lang/String;)V
    .locals 1
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->title:Ljava/lang/String;

    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->setHasStableIds(Z)V

    .line 416
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$17(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$19(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 435
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 431
    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;->bind(Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 419
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionHeaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment$SectionViewHolder;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    return-object v0
.end method
