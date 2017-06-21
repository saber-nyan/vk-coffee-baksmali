.class public Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SquareGalleryHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private photos:[Lcom/vkcoffee/android/Photo;

.field recyclerHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;Lcom/vkcoffee/android/ui/holder/RecyclerHolder;)V
    .locals 1
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "recyclerHolder"    # Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->photos:[Lcom/vkcoffee/android/Photo;

    .line 74
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 75
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->recyclerHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    .line 76
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->photos:[Lcom/vkcoffee/android/Photo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->photos:[Lcom/vkcoffee/android/Photo;

    array-length v0, v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0300a2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 98
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f1000d9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/widget/VKImageView;

    .line 99
    .local v2, "imageView":Lcom/vkcoffee/android/ui/widget/VKImageView;
    iget-object v7, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->photos:[Lcom/vkcoffee/android/Photo;

    aget-object v3, v7, p2

    .line 100
    .local v3, "photo":Lcom/vkcoffee/android/Photo;
    const/16 v7, 0x1e0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 101
    .local v6, "width":I
    invoke-virtual {v3, v6}, Lcom/vkcoffee/android/Photo;->getImageByWidth(I)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    .line 102
    .local v1, "image":Lcom/vkcoffee/android/Photo$Image;
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 104
    iget-object v7, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->recyclerHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    iget-object v8, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    const v9, 0x7f0202da

    invoke-virtual {v7, v2, v8, v9}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 105
    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/VKImageView;->getOnAttachStateChangeListeners()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "changeListeners":Ljava/util/List;, "Ljava/util/List<Landroid/view/View$OnAttachStateChangeListener;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v7}, Lcom/vkcoffee/android/ui/widget/VKImageView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 109
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v4, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    iget-object v7, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->photos:[Lcom/vkcoffee/android/Photo;

    invoke-static {v4, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 111
    invoke-static {p0, p1, v4, p2, v1}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;Landroid/view/ViewGroup;Ljava/util/List;ILcom/vkcoffee/android/Photo$Image;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-object v5
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$instantiateItem$705(Landroid/view/ViewGroup;Ljava/util/List;ILcom/vkcoffee/android/Photo$Image;Landroid/view/View;)V
    .locals 3
    .param p5, "v"    # Landroid/view/View;

    .prologue
    .line 112
    new-instance v0, Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;

    invoke-direct {v2, p0, p5, p4}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;-><init>(Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;Landroid/view/View;Lcom/vkcoffee/android/Photo$Image;)V

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/vkcoffee/android/PhotoViewer;-><init>(Landroid/app/Activity;Ljava/util/List;ILcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;)V

    .line 134
    .local v0, "photoViewer":Lcom/vkcoffee/android/PhotoViewer;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->photos:[Lcom/vkcoffee/android/Photo;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->setDisplayTotal(I)V

    .line 135
    invoke-virtual {v0}, Lcom/vkcoffee/android/PhotoViewer;->show()V

    .line 136
    return-void
.end method

.method public setPhotos([Lcom/vkcoffee/android/Photo;)V
    .locals 1
    .param p1, "photos"    # [Lcom/vkcoffee/android/Photo;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->photos:[Lcom/vkcoffee/android/Photo;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->photos:[Lcom/vkcoffee/android/Photo;

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->notifyDataSetChanged()V

    .line 83
    :cond_0
    return-void
.end method
