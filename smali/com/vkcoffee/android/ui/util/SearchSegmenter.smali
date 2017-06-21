.class public Lcom/vkcoffee/android/ui/util/SearchSegmenter;
.super Ljava/lang/Object;
.source "SearchSegmenter.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/util/Segmenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;,
        Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;,
        Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/ui/util/Segmenter;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final mCount:I

.field mCurrentSearchRequest:Lme/grishka/appkit/api/APIRequest;

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field mExecuting:Z

.field final mFooter:Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

.field final mGenerator:Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final mGlobalSearchData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field mGlobalTitle:Ljava/lang/CharSequence;

.field final mHandler:Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;

.field mListener:Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field mLocalSearchData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field mMoreAvailable:Z

.field mOffset:I

.field mQuery:Ljava/lang/String;

.field mSearchIndexer:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/fragments/friends/SearchIndexer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;I)V
    .locals 2
    .param p1    # Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider",
            "<-TT;>;",
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    .local p1, "provider":Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider<-TT;>;"
    .local p2, "generator":Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator<TT;>;"
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mHandler:Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;

    .line 29
    new-instance v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mFooter:Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    .line 39
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mMoreAvailable:Z

    .line 40
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mExecuting:Z

    .line 100
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;-><init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mSearchIndexer:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    .line 101
    iput-object p2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGenerator:Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;

    .line 102
    iput p3, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mCount:I

    .line 103
    return-void
.end method

.method static empty(Ljava/util/Collection;)Z
    .locals 1
    .param p0, "collection"    # Ljava/util/Collection;

    .prologue
    .line 273
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "list"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 106
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 108
    return-void
.end method

.method public bind(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mData:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mSearchIndexer:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->bind(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mSearchIndexer:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->build()V

    .line 121
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mSearchIndexer:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mSearchIndexer:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->clear()V

    .line 253
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mData:Ljava/util/List;

    .line 254
    return-void
.end method

.method public getFooter()Lcom/vkcoffee/android/ui/util/Segmenter$Footer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mMoreAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mFooter:Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)TD;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    const/4 v1, 0x0

    .line 221
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 222
    .local v0, "localSize":I
    :goto_0
    if-ge p1, v0, :cond_1

    .line 223
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 228
    :goto_1
    return-object v1

    .line 221
    .end local v0    # "localSize":I
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 225
    .restart local v0    # "localSize":I
    :cond_1
    if-ne p1, v0, :cond_2

    .line 226
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->getSegment(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 159
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    const/4 v0, 0x0

    .line 160
    .local v0, "count":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 167
    :cond_1
    return v0
.end method

.method public getPositionForSegment(I)I
    .locals 1
    .param p1, "segment"    # I

    .prologue
    .line 198
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSegment(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 233
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSegmentForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 209
    .local v0, "localSize":I
    :goto_0
    if-lt p1, v0, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 208
    .end local v0    # "localSize":I
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 209
    .restart local v0    # "localSize":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getSegmentIndex(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 215
    .local v0, "localSize":I
    :goto_0
    if-lt p1, v0, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .end local v0    # "localSize":I
    :cond_1
    return v0

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSegmentItemsCount(I)I
    .locals 1
    .param p1, "segment"    # I

    .prologue
    .line 184
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 193
    :goto_0
    return v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSegmentsCount()I
    .locals 2

    .prologue
    .line 172
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    const/4 v0, 0x0

    .line 173
    .local v0, "count":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    add-int/lit8 v0, v0, 0x1

    .line 179
    :cond_1
    return v0
.end method

.method public isHeader(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->empty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 239
    .local v0, "localSize":I
    :goto_0
    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 238
    .end local v0    # "localSize":I
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onScrollToLastItem()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mMoreAvailable:Z

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mOffset:I

    iget v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mCount:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->runSearchRequest(II)V

    .line 115
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method runSearchRequest(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 49
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mExecuting:Z

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mCurrentSearchRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mCurrentSearchRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mFooter:Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->mState:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    sget-object v1, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Loading:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    if-eq v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mFooter:Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    sget-object v1, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Loading:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    iput-object v1, v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->mState:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mExecuting:Z

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGenerator:Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mQuery:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;->getSearchRequest(Ljava/lang/String;II)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;-><init>(Lcom/vkcoffee/android/ui/util/SearchSegmenter;II)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 95
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mCurrentSearchRequest:Lme/grishka/appkit/api/APIRequest;

    .line 97
    :cond_2
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 154
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->search(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "global"    # Z

    .prologue
    .line 136
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mQuery:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mSearchIndexer:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    .line 138
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mCurrentSearchRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mCurrentSearchRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v1}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 141
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mExecuting:Z

    .line 142
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 143
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mMoreAvailable:Z

    .line 144
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 145
    if-eqz p2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mHandler:Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mHandler:Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "message":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mHandler:Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public setGlobalTitle(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalTitle:Ljava/lang/CharSequence;

    .line 132
    return-object p0
.end method

.method public setLoadingListener(Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener",
            "<TT;>;)",
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter<TT;>;"
    .local p1, "listener":Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mListener:Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;

    .line 258
    return-object p0
.end method
