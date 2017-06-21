.class public Lcom/vkcoffee/android/ui/util/ListSegmenter;
.super Ljava/lang/Object;
.source "ListSegmenter.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/util/Segmenter;


# instance fields
.field private mData:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Ljava/util/List;)Lcom/vkcoffee/android/ui/util/ListSegmenter;
    .locals 0
    .param p1, "data"    # Ljava/util/List;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/vkcoffee/android/ui/util/ListSegmenter;->mData:Ljava/util/List;

    .line 16
    return-object p0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/ListSegmenter;->mData:Ljava/util/List;

    .line 67
    return-void
.end method

.method public getFooter()Lcom/vkcoffee/android/ui/util/Segmenter$Footer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
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
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/ListSegmenter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/ListSegmenter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/ListSegmenter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPositionForSegment(I)I
    .locals 1
    .param p1, "segment"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getSegment(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSegmentForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentItemsCount(I)I
    .locals 1
    .param p1, "segment"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/ListSegmenter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/ListSegmenter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSegmentsCount()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollToLastItem()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
