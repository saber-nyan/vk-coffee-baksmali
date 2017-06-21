.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->bindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

.field final synthetic val$content:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;->val$content:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 284
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4$1;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$4;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
