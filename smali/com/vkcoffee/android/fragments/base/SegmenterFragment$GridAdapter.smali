.class public abstract Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "SegmenterFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;
.implements Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;
.implements Lcom/vkcoffee/android/ui/recyclerview/FastScroller$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<TT;>;>",
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter;",
        "Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;",
        "Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;",
        "Lcom/vkcoffee/android/ui/recyclerview/FastScroller$Provider;"
    }
.end annotation


# static fields
.field protected static final TYPE_FOOTER:I = 0x2

.field protected static final TYPE_HEADER:I = 0x0

.field protected static final TYPE_ITEM:I = 0x1


# instance fields
.field private mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    .prologue
    .line 156
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 157
    new-instance v0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 168
    return-void
.end method


# virtual methods
.method public bindFooterHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "params"    # Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    .param p3, "position"    # I

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    const/4 v1, 0x1

    .line 197
    check-cast p1, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/util/Segmenter;->getFooter()Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;->bind(Lcom/vkcoffee/android/ui/util/Segmenter$Footer;)V

    .line 198
    iput-boolean v1, p2, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->isHeader:Z

    .line 199
    iput v1, p2, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->headerDisplay:I

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->access$200(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p2, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->topMargin:I

    .line 201
    invoke-virtual {p2, p3}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setFirstPosition(I)V

    .line 202
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->access$200(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->getPaddingBottom()I

    move-result v0

    goto :goto_0
.end method

.method public bindHeaderHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "params"    # Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    .param p3, "position"    # I

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    const/4 v1, 0x1

    .line 181
    check-cast p1, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p3}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getPopupText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->bind(Ljava/lang/CharSequence;)V

    .line 182
    iput-boolean v1, p2, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->isHeader:Z

    .line 183
    iput v1, p2, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->headerDisplay:I

    .line 184
    return-void
.end method

.method public bindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V
    .locals 1
    .param p2, "params"    # Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Lcom/tonicartos/superslim/GridSLM$LayoutParams;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    .local p1, "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "TVH;"
    invoke-virtual {p0, p3}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->bind(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public createFooterHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 193
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    new-instance v0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public createHeaderHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public abstract createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public drawAfter(I)Z
    .locals 11
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 292
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getItemViewType(I)I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 293
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v7, p1}, Lcom/vkcoffee/android/ui/util/Segmenter;->getSegmentIndex(I)I

    move-result v2

    .line 294
    .local v2, "lastHeaderPosition":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v7, p1}, Lcom/vkcoffee/android/ui/util/Segmenter;->getSegmentForPosition(I)I

    move-result v1

    .line 295
    .local v1, "currentSection":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v7, v1}, Lcom/vkcoffee/android/ui/util/Segmenter;->getSegmentItemsCount(I)I

    move-result v6

    .line 296
    .local v6, "segmentItemsCount":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    invoke-virtual {v7}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->getColumnsCount()I

    move-result v0

    .line 297
    .local v0, "columnsCount":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v7, v2}, Lcom/vkcoffee/android/ui/util/Segmenter;->isHeader(I)Z

    move-result v5

    .line 298
    .local v5, "segmentHasHeader":Z
    sub-int v10, p1, v2

    if-eqz v5, :cond_0

    move v7, v8

    :goto_0
    sub-int v4, v10, v7

    .line 299
    .local v4, "positionInSegment":I
    invoke-static {v6, v0}, Lcom/vkcoffee/android/ui/MathUtils;->truncate(II)I

    move-result v3

    .line 301
    .local v3, "lastRowStart":I
    if-lt v4, v3, :cond_1

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v7}, Lcom/vkcoffee/android/ui/util/Segmenter;->getSegmentsCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_1

    .line 303
    .end local v0    # "columnsCount":I
    .end local v1    # "currentSection":I
    .end local v2    # "lastHeaderPosition":I
    .end local v3    # "lastRowStart":I
    .end local v4    # "positionInSegment":I
    .end local v5    # "segmentHasHeader":Z
    .end local v6    # "segmentItemsCount":I
    :goto_1
    return v8

    .restart local v0    # "columnsCount":I
    .restart local v1    # "currentSection":I
    .restart local v2    # "lastHeaderPosition":I
    .restart local v5    # "segmentHasHeader":Z
    .restart local v6    # "segmentItemsCount":I
    :cond_0
    move v7, v9

    .line 298
    goto :goto_0

    .restart local v3    # "lastRowStart":I
    .restart local v4    # "positionInSegment":I
    :cond_1
    move v8, v9

    .line 301
    goto :goto_1

    .end local v0    # "columnsCount":I
    .end local v1    # "currentSection":I
    .end local v2    # "lastHeaderPosition":I
    .end local v3    # "lastRowStart":I
    .end local v4    # "positionInSegment":I
    .end local v5    # "segmentHasHeader":Z
    .end local v6    # "segmentItemsCount":I
    :cond_2
    move v8, v9

    .line 303
    goto :goto_1
.end method

.method public getBlockType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 276
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getItemCount()I

    move-result v3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v2}, Lcom/vkcoffee/android/ui/util/Segmenter;->getFooter()Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_0
    sub-int v0, v3, v2

    .line 277
    .local v0, "itemCount":I
    const/4 v1, 0x0

    .line 278
    .local v1, "result":I
    if-nez p1, :cond_0

    .line 279
    or-int/lit8 v1, v1, 0x2

    .line 281
    :cond_0
    if-ne p1, v0, :cond_1

    .line 284
    :cond_1
    if-nez v1, :cond_2

    if-gt p1, v0, :cond_2

    .line 285
    or-int/lit8 v1, v1, 0x1

    .line 287
    :cond_2
    return v1

    .line 276
    .end local v0    # "itemCount":I
    .end local v1    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 261
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getImagesCountForItem(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 266
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getImageUrl(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 209
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImagesCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 205
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    const/4 v0, 0x0

    return v0
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
    .line 320
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/util/Segmenter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 308
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/util/Segmenter;->getFooter()Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/util/Segmenter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/util/Segmenter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 256
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/util/Segmenter;->getItemCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/util/Segmenter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPopupText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 313
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getItemCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 314
    add-int/lit8 p1, p1, -0x1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v1, p1}, Lcom/vkcoffee/android/ui/util/Segmenter;->getSegmentForPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/util/Segmenter;->getSegment(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    const/4 v2, 0x0

    .line 227
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->from(Landroid/view/ViewGroup$LayoutParams;)Lcom/tonicartos/superslim/GridSLM$LayoutParams;

    move-result-object v0

    .line 228
    .local v0, "params":Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->height:I

    .line 229
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->getColumnsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setNumColumns(I)V

    .line 231
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    invoke-interface {v1, p2}, Lcom/vkcoffee/android/ui/util/Segmenter;->getSegmentIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setFirstPosition(I)V

    .line 232
    iput v2, v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->bottomMargin:I

    .line 233
    iput v2, v0, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->topMargin:I

    .line 234
    sget v1, Lcom/tonicartos/superslim/GridSLM;->ID:I

    invoke-virtual {v0, v1}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setSlm(I)V

    .line 235
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 251
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 239
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_0
    check-cast p1, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, v0, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->bindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V

    goto :goto_0

    .line 243
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->bindHeaderHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V

    goto :goto_0

    .line 247
    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->bindFooterHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 214
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    packed-switch p2, :pswitch_data_0

    .line 222
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->createHeaderHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->createFooterHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setData(Lcom/vkcoffee/android/ui/util/Segmenter;)Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 0
    .param p1, "segmenter"    # Lcom/vkcoffee/android/ui/util/Segmenter;

    .prologue
    .line 171
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>.GridAdapter<TT;TVH;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->mSegmenter:Lcom/vkcoffee/android/ui/util/Segmenter;

    .line 172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->notifyDataSetChanged()V

    .line 173
    return-object p0
.end method
