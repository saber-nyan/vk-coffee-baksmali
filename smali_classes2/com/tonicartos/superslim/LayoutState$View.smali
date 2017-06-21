.class public Lcom/tonicartos/superslim/LayoutState$View;
.super Ljava/lang/Object;
.source "LayoutState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/superslim/LayoutState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View"
.end annotation


# instance fields
.field public final view:Landroid/view/View;

.field public final wasCached:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "wasCached"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    .line 68
    iput-boolean p2, p0, Lcom/tonicartos/superslim/LayoutState$View;->wasCached:Z

    .line 69
    return-void
.end method


# virtual methods
.method public getLayoutParams()Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tonicartos/superslim/LayoutState$View;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    return-object v0
.end method
