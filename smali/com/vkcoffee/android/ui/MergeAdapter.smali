.class public Lcom/vkcoffee/android/ui/MergeAdapter;
.super Landroid/widget/BaseAdapter;
.source "MergeAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;
    }
.end annotation


# instance fields
.field protected dataSetObserver:Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;

.field protected noItemsText:Ljava/lang/String;

.field protected pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->dataSetObserver:Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;

    .line 34
    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->dataSetObserver:Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;-><init>(Lcom/vkcoffee/android/ui/MergeAdapter;Lcom/vkcoffee/android/ui/MergeAdapter$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->dataSetObserver:Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->dataSetObserver:Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 48
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter(I)Landroid/widget/ListAdapter;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 80
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 82
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 89
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :goto_1
    return-object v0

    .line 86
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 87
    goto :goto_0

    .line 89
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAdapterAt(I)Landroid/widget/ListAdapter;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "total":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 99
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 100
    goto :goto_0

    .line 102
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 103
    const/4 v1, 0x1

    .line 106
    :cond_1
    return v1
.end method

.method public getImageCountForItem(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 112
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 114
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 115
    instance-of v3, v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    if-eqz v3, :cond_0

    .line 116
    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .end local v0    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v2

    .line 123
    .end local v1    # "size":I
    :cond_0
    return v2

    .line 121
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v1    # "size":I
    :cond_1
    sub-int/2addr p1, v1

    .line 122
    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 129
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 131
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 132
    instance-of v3, v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    if-eqz v3, :cond_0

    .line 133
    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .end local v0    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v2

    .line 140
    .end local v1    # "size":I
    :cond_0
    return-object v2

    .line 138
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v1    # "size":I
    :cond_1
    sub-int/2addr p1, v1

    .line 139
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 57
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 59
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 60
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 66
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :goto_1
    return-object v2

    .line 63
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 64
    goto :goto_0

    .line 66
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 266
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 267
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 269
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 270
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 276
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :goto_1
    return-wide v2

    .line 273
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 274
    goto :goto_0

    .line 276
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "typeOffset":I
    const/4 v1, -0x1

    .line 185
    .local v1, "result":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 186
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 188
    .local v2, "size":I
    if-ge p1, v2, :cond_1

    .line 189
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    add-int v1, v3, v4

    .line 199
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_0
    return v1

    .line 193
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_1
    sub-int/2addr p1, v2

    .line 194
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v3, v5

    .line 195
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 6
    .param p1, "section"    # I

    .prologue
    .line 280
    const/4 v2, 0x0

    .line 282
    .local v2, "position":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 283
    .local v1, "piece":Landroid/widget/ListAdapter;
    instance-of v4, v1, Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_2

    move-object v4, v1

    .line 284
    check-cast v4, Landroid/widget/SectionIndexer;

    invoke-interface {v4}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 285
    .local v3, "sections":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 287
    .local v0, "numSections":I
    if-eqz v3, :cond_0

    .line 288
    array-length v0, v3

    .line 291
    :cond_0
    if-ge p1, v0, :cond_1

    .line 292
    check-cast v1, Landroid/widget/SectionIndexer;

    .line 293
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 302
    .end local v0    # "numSections":I
    .end local v3    # "sections":[Ljava/lang/Object;
    :goto_1
    return v4

    .line 294
    .restart local v0    # "numSections":I
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v3    # "sections":[Ljava/lang/Object;
    :cond_1
    if-eqz v3, :cond_2

    .line 295
    sub-int/2addr p1, v0

    .line 299
    .end local v0    # "numSections":I
    .end local v3    # "sections":[Ljava/lang/Object;
    :cond_2
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 300
    goto :goto_0

    .line 302
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 306
    const/4 v1, 0x0

    .line 308
    .local v1, "section":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 309
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 311
    .local v3, "size":I
    if-ge p1, v3, :cond_1

    .line 312
    instance-of v5, v0, Landroid/widget/SectionIndexer;

    if-eqz v5, :cond_0

    .line 313
    check-cast v0, Landroid/widget/SectionIndexer;

    .line 314
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    add-int/2addr v4, v1

    .line 331
    .end local v3    # "size":I
    :cond_0
    return v4

    .line 319
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v3    # "size":I
    :cond_1
    instance-of v6, v0, Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_2

    .line 320
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    .line 322
    .local v2, "sections":[Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 323
    array-length v6, v2

    add-int/2addr v1, v6

    .line 328
    .end local v2    # "sections":[Ljava/lang/Object;
    :cond_2
    sub-int/2addr p1, v3

    .line 329
    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v3, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 338
    .local v1, "piece":Landroid/widget/ListAdapter;
    instance-of v4, v1, Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_0

    .line 339
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "curSections":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 342
    array-length v7, v0

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v2, v0, v4

    .line 343
    .local v2, "section":Ljava/lang/Object;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "curSections":[Ljava/lang/Object;
    .end local v2    # "section":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 350
    const/4 v4, 0x0

    .line 353
    :goto_1
    return-object v4

    :cond_2
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 240
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 241
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 243
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 245
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 257
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :goto_1
    return-object v2

    .line 248
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 249
    goto :goto_0

    .line 251
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 252
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v2, "text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 257
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "total":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 167
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 168
    goto :goto_0

    .line 170
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 145
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 146
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 148
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 149
    instance-of v2, v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    if-eqz v2, :cond_0

    .line 150
    check-cast v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .end local v0    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1, p2, p3}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    .line 157
    .end local v1    # "size":I
    :cond_0
    return-void

    .line 155
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v1    # "size":I
    :cond_1
    sub-int/2addr p1, v1

    .line 156
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 218
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 219
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 221
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 222
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    .line 228
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :goto_1
    return v2

    .line 225
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    .restart local v1    # "size":I
    :cond_0
    sub-int/2addr p1, v1

    .line 226
    goto :goto_0

    .line 228
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setNoItemsText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    .line 71
    return-void
.end method
