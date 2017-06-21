.class public abstract Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;
.super Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.source "SectionedPhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionViewHolder;,
        Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;,
        Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    }
.end annotation


# instance fields
.field protected sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    .line 100
    return-void
.end method


# virtual methods
.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-direct {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    .line 29
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->showAlbumHeader:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    return-object v0
.end method

.method protected getItemOffsets(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;IILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "adapter"    # Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .param p2, "positionInAdapter"    # I
    .param p3, "absPosition"    # I
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 49
    instance-of v0, p1, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 50
    const/high16 v0, -0x3fc00000    # -3.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p4, Landroid/graphics/Rect;->top:I

    .line 52
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getItemOffsets(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;IILandroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method protected needLineBreakAfter(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    .line 40
    .local v0, "s":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    iget v2, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->end:I

    if-ne v2, p1, :cond_0

    .line 41
    const/4 v1, 0x1

    .line 44
    .end local v0    # "s":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
