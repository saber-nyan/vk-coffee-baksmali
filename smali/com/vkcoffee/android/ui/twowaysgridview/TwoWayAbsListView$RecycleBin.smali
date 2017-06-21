.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    .prologue
    .line 3176
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3190
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;)Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    .prologue
    .line 3176
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 3415
    iget-object v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 3416
    .local v3, "maxViews":I
    iget v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3417
    .local v8, "viewTypeCount":I
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3418
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 3419
    aget-object v4, v5, v1

    .line 3420
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3421
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 3422
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 3423
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 3424
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V

    .line 3423
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 3418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3427
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 4
    .param p1, "scrap"    # Landroid/view/View;

    .prologue
    .line 3336
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .line 3337
    .local v0, "lp":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 3362
    :cond_0
    :goto_0
    return-void

    .line 3343
    :cond_1
    iget v1, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    .line 3344
    .local v1, "viewType":I
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3345
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 3346
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .line 3351
    :cond_2
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 3352
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3353
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3359
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    if-eqz v2, :cond_0

    .line 3360
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 3355
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3356
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3242
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 3243
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3244
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3245
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 3246
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V

    .line 3245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3249
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_0
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3250
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 3251
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 3252
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3253
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 3254
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V

    .line 3253
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3258
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 3268
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 3269
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3271
    :cond_0
    iput p2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 3273
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3274
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 3275
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v4, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3276
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    .line 3278
    .local v3, "lp":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 3281
    aput-object v1, v0, v2

    .line 3274
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3284
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 3294
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 3295
    .local v1, "index":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3296
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 3297
    aget-object v2, v0, v1

    .line 3298
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 3301
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 3309
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3310
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3311
    .local v0, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3312
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 3313
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3327
    .end local v0    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "size":I
    :cond_0
    :goto_0
    return-object v3

    .line 3318
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 3319
    .local v2, "whichScrap":I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 3320
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v4, v2

    .line 3321
    .restart local v0    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3322
    .restart local v1    # "size":I
    if-lez v1, :cond_0

    .line 3323
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 7

    .prologue
    .line 3216
    iget v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 3217
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3218
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3219
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 3220
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 3219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3223
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_0
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3224
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 3225
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 3226
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3227
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 3228
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 3227
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3224
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3232
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_2
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3433
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3434
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3443
    :cond_0
    return-void

    .line 3436
    :cond_1
    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3437
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3438
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 3439
    aget-object v1, v2, v0

    .line 3440
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3368
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3369
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    if-eqz v10, :cond_1

    move v2, v8

    .line 3370
    .local v2, "hasListener":Z
    :goto_0
    iget v10, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v10, v8, :cond_2

    move v4, v8

    .line 3372
    .local v4, "multipleScraps":Z
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3373
    .local v5, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 3374
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 3375
    aget-object v6, v0, v3

    .line 3376
    .local v6, "victim":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 3377
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;

    iget v7, v8, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$LayoutParams;->viewType:I

    .line 3379
    .local v7, "whichScrap":I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 3381
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3383
    const/4 v8, -0x2

    if-eq v7, v8, :cond_0

    .line 3384
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-static {v8, v6, v9}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$1500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;Z)V

    .line 3374
    .end local v7    # "whichScrap":I
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v4    # "multipleScraps":Z
    .end local v5    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "victim":Landroid/view/View;
    :cond_1
    move v2, v9

    .line 3369
    goto :goto_0

    .restart local v2    # "hasListener":Z
    :cond_2
    move v4, v9

    .line 3370
    goto :goto_1

    .line 3389
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "multipleScraps":Z
    .restart local v5    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6    # "victim":Landroid/view/View;
    .restart local v7    # "whichScrap":I
    :cond_3
    if-eqz v4, :cond_4

    .line 3390
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 3392
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3393
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3395
    if-eqz v2, :cond_0

    .line 3396
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 3407
    .end local v6    # "victim":Landroid/view/View;
    .end local v7    # "whichScrap":I
    :cond_5
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->pruneScrapViews()V

    .line 3408
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 3451
    iget v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 3452
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3453
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3454
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 3455
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3458
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3459
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 3460
    iget-object v8, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 3461
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3462
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 3463
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3462
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3459
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3468
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3469
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 3470
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 3471
    aget-object v7, v0, v2

    .line 3472
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 3473
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3470
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3476
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 3202
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 3203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3206
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 3207
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 3208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 3207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3210
    :cond_1
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3211
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3212
    iput-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3213
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 3235
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
