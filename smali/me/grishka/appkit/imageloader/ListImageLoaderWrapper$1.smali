.class Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prevPos:D

.field final synthetic this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 32
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 36
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v4

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getVisibleItemCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 37
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v4

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getFirstVisiblePosition()I

    move-result v4

    int-to-double v2, v4

    .line 38
    .local v2, "pos":D
    const/4 v1, 0x0

    .line 39
    .local v1, "topItem":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v4

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getVisibleItemCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 40
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v4

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v5

    invoke-interface {v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v0

    invoke-interface {v4, v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getItemView(I)Landroid/view/View;

    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_0

    .line 46
    :cond_2
    if-nez v1, :cond_4

    .line 65
    .end local v0    # "i":I
    .end local v1    # "topItem":Landroid/view/View;
    .end local v2    # "pos":D
    :cond_3
    :goto_1
    return v8

    .line 47
    .restart local v0    # "i":I
    .restart local v1    # "topItem":Landroid/view/View;
    .restart local v2    # "pos":D
    :cond_4
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v4

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 51
    :goto_2
    iget-wide v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->prevPos:D

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_6

    .line 52
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4, v8}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$102(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Z)Z

    .line 54
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$200(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 55
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v4

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$200(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 56
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4, v9}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$202(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 58
    :cond_5
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$100(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 59
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    new-instance v5, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;

    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-direct {v5, v6, v9}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;-><init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;)V

    invoke-static {v4, v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$202(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 60
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v4

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$200(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :cond_6
    iput-wide v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;->prevPos:D

    goto :goto_1

    .line 50
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    goto :goto_2
.end method
