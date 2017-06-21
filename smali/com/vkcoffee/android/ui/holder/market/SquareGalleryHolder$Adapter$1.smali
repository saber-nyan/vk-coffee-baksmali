.class Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;
.super Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallbackAdapter;
.source "SquareGalleryHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->lambda$instantiateItem$705(Landroid/view/ViewGroup;Ljava/util/List;ILcom/vkcoffee/android/Photo$Image;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

.field final synthetic val$cap$3:Lcom/vkcoffee/android/Photo$Image;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;Landroid/view/View;Lcom/vkcoffee/android/Photo$Image;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->this$0:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "outClip"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 116
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->this$0:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    iget-object v5, v5, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->this$0:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    iget-object v5, v5, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    if-eq p1, v5, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v5, 0x2

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 120
    .local v3, "loc":[I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 121
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v5, v5, Lcom/vkcoffee/android/Photo$Image;->height:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v5, v5, Lcom/vkcoffee/android/Photo$Image;->width:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v5, v5, Lcom/vkcoffee/android/Photo$Image;->height:I

    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v6, v6, Lcom/vkcoffee/android/Photo$Image;->width:I

    if-ne v5, v6, :cond_3

    .line 122
    :cond_2
    aget v5, v3, v7

    aget v6, v3, v9

    aget v7, v3, v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v3, v9

    iget-object v9, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v5, v5, Lcom/vkcoffee/android/Photo$Image;->width:I

    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v6, v6, Lcom/vkcoffee/android/Photo$Image;->height:I

    if-le v5, v6, :cond_4

    .line 124
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v6, v6, Lcom/vkcoffee/android/Photo$Image;->height:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v6, v6, Lcom/vkcoffee/android/Photo$Image;->width:I

    div-int v2, v5, v6

    .line 125
    .local v2, "h":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v0, v5, 0x2

    .line 126
    .local v0, "dh":I
    aget v5, v3, v7

    aget v6, v3, v9

    add-int/2addr v6, v0

    aget v7, v3, v7

    iget-object v8, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v3, v9

    add-int/2addr v8, v0

    add-int/2addr v8, v2

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 127
    .end local v0    # "dh":I
    .end local v2    # "h":I
    :cond_4
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v5, v5, Lcom/vkcoffee/android/Photo$Image;->width:I

    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v6, v6, Lcom/vkcoffee/android/Photo$Image;->height:I

    if-ge v5, v6, :cond_0

    .line 128
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v6, v6, Lcom/vkcoffee/android/Photo$Image;->width:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$cap$3:Lcom/vkcoffee/android/Photo$Image;

    iget v6, v6, Lcom/vkcoffee/android/Photo$Image;->height:I

    div-int v4, v5, v6

    .line 129
    .local v4, "w":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 130
    .local v1, "dw":I
    aget v5, v3, v7

    add-int/2addr v5, v1

    aget v6, v3, v9

    aget v7, v3, v7

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    aget v8, v3, v9

    iget-object v9, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 119
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
