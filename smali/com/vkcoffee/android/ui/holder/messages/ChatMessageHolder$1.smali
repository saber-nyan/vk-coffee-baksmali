.class Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$1;
.super Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallbackAdapter;
.source "ChatMessageHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lambda$processAttachments$436(Ljava/util/ArrayList;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    .line 440
    invoke-direct {p0}, Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "outClip"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 442
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 443
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 444
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 445
    .local v1, "loc":[I
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 446
    aget v4, v1, v6

    aget v5, v1, v8

    aget v6, v1, v6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v1, v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 447
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1001bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, "list":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 449
    invoke-static {v3, v0}, Lme/grishka/appkit/utils/V;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 450
    .local v2, "offset":Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Point;->y:I

    if-gez v4, :cond_0

    .line 451
    iget v4, v2, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    iput v4, p3, Landroid/graphics/Rect;->top:I

    .line 453
    :cond_0
    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 454
    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    .line 458
    .end local v0    # "list":Landroid/view/View;
    .end local v1    # "loc":[I
    .end local v2    # "offset":Landroid/graphics/Point;
    :cond_1
    return-void
.end method

.method public onDismissed()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$1;->this$0:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->attachments:Landroid/view/ViewGroup;

    const v1, 0x7f10004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 462
    return-void
.end method
