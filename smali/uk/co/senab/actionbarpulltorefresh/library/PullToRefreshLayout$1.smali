.class Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;
.super Ljava/lang/Object;
.source "PullToRefreshLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

.field private viewVisible:Z


# direct methods
.method constructor <init>(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V
    .locals 1
    .param p1, "this$0"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .prologue
    .line 49
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->viewVisible:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 13

    .prologue
    const/4 v7, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 54
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .local v2, "loc":[I
    new-array v4, v7, [I

    fill-array-data v4, :array_1

    .line 56
    .local v4, "ploc":[I
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v6, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getLocationOnScreen([I)V

    .line 57
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 59
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v12

    aget v7, v2, v11

    iget-object v8, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v8}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getWidth()I

    move-result v8

    aget v9, v2, v12

    add-int/2addr v8, v9

    iget-object v9, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v9}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->getHeight()I

    move-result v9

    aget v10, v2, v11

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .local v5, "tRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    aget v6, v4, v12

    aget v7, v4, v11

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    aget v9, v4, v12

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    aget v10, v4, v11

    add-int/2addr v9, v10

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    .local v3, "pRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 63
    .local v1, "isOnScreen":Z
    iget-boolean v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->viewVisible:Z

    if-eq v1, v6, :cond_0

    .line 64
    if-eqz v1, :cond_1

    .line 65
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-static {v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->access$000(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    move-result-object v6

    invoke-virtual {v6, v11}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setRefreshing(Z)V

    .line 66
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-static {v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->access$000(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    move-result-object v6

    invoke-virtual {v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->minimizeHeader()V

    .line 70
    :goto_0
    iput-boolean v1, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->viewVisible:Z

    .line 78
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "isOnScreen":Z
    .end local v2    # "loc":[I
    .end local v3    # "pRect":Landroid/graphics/Rect;
    .end local v4    # "ploc":[I
    .end local v5    # "tRect":Landroid/graphics/Rect;
    :cond_0
    return v11

    .line 68
    .restart local v0    # "decorView":Landroid/view/View;
    .restart local v1    # "isOnScreen":Z
    .restart local v2    # "loc":[I
    .restart local v3    # "pRect":Landroid/graphics/Rect;
    .restart local v4    # "ploc":[I
    .restart local v5    # "tRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v6, p0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout$1;->this$0:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-static {v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->access$000(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    move-result-object v6

    invoke-virtual {v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->hideHeaderView()V

    goto :goto_0

    .line 55
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
