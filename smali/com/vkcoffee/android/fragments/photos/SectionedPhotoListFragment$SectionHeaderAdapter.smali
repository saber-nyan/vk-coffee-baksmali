.class public Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "SectionedPhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SectionHeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;->title:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;->bind(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 81
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;-><init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;)V

    return-object v0
.end method
