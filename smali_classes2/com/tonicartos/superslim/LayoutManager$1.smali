.class Lcom/tonicartos/superslim/LayoutManager$1;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonicartos/superslim/LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/superslim/LayoutManager;

.field final synthetic val$position:I

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/tonicartos/superslim/LayoutManager;Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tonicartos/superslim/LayoutManager;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/tonicartos/superslim/LayoutManager$1;->this$0:Lcom/tonicartos/superslim/LayoutManager;

    iput-object p2, p0, Lcom/tonicartos/superslim/LayoutManager$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput p3, p0, Lcom/tonicartos/superslim/LayoutManager$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    new-instance v0, Lcom/tonicartos/superslim/LayoutManager$1$1;

    iget-object v1, p0, Lcom/tonicartos/superslim/LayoutManager$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 417
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tonicartos/superslim/LayoutManager$1$1;-><init>(Lcom/tonicartos/superslim/LayoutManager$1;Landroid/content/Context;)V

    .line 463
    .local v0, "smoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    iget v1, p0, Lcom/tonicartos/superslim/LayoutManager$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 464
    iget-object v1, p0, Lcom/tonicartos/superslim/LayoutManager$1;->this$0:Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {v1, v0}, Lcom/tonicartos/superslim/LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 465
    return-void
.end method
