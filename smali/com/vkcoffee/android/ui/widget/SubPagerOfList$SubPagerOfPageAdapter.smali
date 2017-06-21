.class public Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SubPagerOfList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/SubPagerOfList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubPagerOfPageAdapter"
.end annotation


# instance fields
.field baseAdapters:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field final divider:Landroid/graphics/drawable/Drawable;

.field final itemHeight:I

.field final onScrollListeners:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemHeight"    # I
    .param p3, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;",
            ">;I",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "baseAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 287
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->views:Landroid/util/SparseArray;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->onScrollListeners:Ljava/util/List;

    .line 299
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    .line 300
    iput p2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->itemHeight:I

    .line 301
    iput-object p3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->divider:Landroid/graphics/drawable/Drawable;

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ILandroid/graphics/drawable/Drawable;Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfList$1;

    .prologue
    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;-><init>(Ljava/util/List;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public clearIsShowFirstItemMode()V
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->setIsShowFirstItemMode(Z)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->invalidateViews()V

    .line 321
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 362
    move-object v0, p3

    check-cast v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    .line 363
    .local v0, "item":Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 364
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 365
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->onScrollListeners:Ljava/util/List;

    iget-object v2, v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewByPosition(I)Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 348
    move-object v0, p1

    check-cast v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .line 349
    .local v0, "pager":Lcom/vkcoffee/android/ui/widget/SubPagerOfList;
    new-instance v1, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->itemHeight:I

    invoke-direct {v1, v0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;-><init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;I)V

    .line 350
    .local v1, "view":Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->onScrollListeners:Ljava/util/List;

    iget-object v3, v1, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->isShowFirstItemMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->setIsShowFirstItemMode(Z)V

    .line 352
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->setAdapter(Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;)V

    .line 353
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->addView(Landroid/view/View;)V

    .line 357
    return-object v1
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    .line 326
    .local v1, "view":Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;
    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getListAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->isShowFirstItemMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->setIsShowFirstItemMode(Z)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "view":Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;
    :cond_0
    return-void
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 343
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->onScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 377
    .local v0, "onScrollListener":Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_0

    .line 379
    .end local v0    # "onScrollListener":Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->onScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 383
    .local v0, "onScrollListener":Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 385
    .end local v0    # "onScrollListener":Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "baseAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    .line 306
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->notifyDataSetChanged()V

    .line 307
    return-void
.end method

.method public setIsShowFirstItemMode(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->baseAdapters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->setIsShowFirstItemMode(Z)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$SubPagerOfPageAdapter;->invalidateViews()V

    .line 314
    return-void
.end method
