.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;->val$content:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    return-void

    .line 292
    .restart local v0    # "c":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int v2, v3, v4

    .line 293
    .local v2, "offset":I
    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 294
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;

    iget-object v4, v3, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;->this$1:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-static {v4, v3}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->access$300(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 287
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
