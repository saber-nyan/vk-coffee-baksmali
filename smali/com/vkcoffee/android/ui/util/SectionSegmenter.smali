.class public Lcom/vkcoffee/android/ui/util/SectionSegmenter;
.super Ljava/lang/Object;
.source "SectionSegmenter.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/util/Segmenter;


# instance fields
.field private final mData:Ljava/util/List;

.field private final mPositionToSegmentProjection:Landroid/util/SparseIntArray;

.field private final mSegmentItemsCount:Landroid/util/SparseIntArray;

.field private final mSegmentToPositionProjection:Landroid/util/SparseIntArray;

.field private final mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSegmentsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegments:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mData:Ljava/util/List;

    .line 19
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentToPositionProjection:Landroid/util/SparseIntArray;

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mPositionToSegmentProjection:Landroid/util/SparseIntArray;

    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentItemsCount:Landroid/util/SparseIntArray;

    return-void
.end method

.method private addItem(Ljava/lang/Object;II)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "positionNumber"    # I
    .param p3, "sectionNumber"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mPositionToSegmentProjection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    return-void
.end method

.method private getSegmentIndex(II)I
    .locals 2
    .param p1, "position"    # I
    .param p2, "fallback"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentToPositionProjection:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mPositionToSegmentProjection:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 1
    .param p1, "data"    # Ljava/util/List;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->clear()V

    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    return-void
.end method

.method public addSection(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "data"    # Ljava/util/List;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addSection(Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 46
    return-void
.end method

.method public addSection(Ljava/util/List;Ljava/lang/CharSequence;II)V
    .locals 5
    .param p1, "data"    # Ljava/util/List;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 30
    iget-object v3, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 31
    .local v2, "sectionNumber":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 33
    .local v0, "positionNumber":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegments:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v3, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentToPositionProjection:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    iget-object v3, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentItemsCount:Landroid/util/SparseIntArray;

    sub-int v4, p4, p3

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget v3, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentsCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentsCount:I

    .line 38
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "positionNumber":I
    .local v1, "positionNumber":I
    invoke-direct {p0, p2, v0, v2}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addItem(Ljava/lang/Object;II)V

    .line 39
    :goto_0
    if-ge p3, p4, :cond_0

    .line 40
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "positionNumber":I
    .restart local v0    # "positionNumber":I
    invoke-direct {p0, v3, v1, v2}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addItem(Ljava/lang/Object;II)V

    .line 39
    add-int/lit8 p3, p3, 0x1

    move v1, v0

    .end local v0    # "positionNumber":I
    .restart local v1    # "positionNumber":I
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentToPositionProjection:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mPositionToSegmentProjection:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentItemsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentsCount:I

    .line 78
    return-void
.end method

.method public getFooter()Lcom/vkcoffee/android/ui/util/Segmenter$Footer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositionForSegment(I)I
    .locals 1
    .param p1, "segment"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentToPositionProjection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getSegment(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSegmentForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mPositionToSegmentProjection:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getSegmentIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->getSegmentIndex(II)I

    move-result v0

    return v0
.end method

.method public getSegmentItemsCount(I)I
    .locals 1
    .param p1, "segment"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentItemsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getSegmentsCount()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->mSegmentsCount:I

    return v0
.end method

.method public isHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->getSegmentIndex(II)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollToLastItem()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
