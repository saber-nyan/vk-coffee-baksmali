.class Lcom/vkcoffee/android/PhotoViewer$7;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->initView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$7;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 437
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 438
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$7;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/PhotoViewer;->onPrepareDismiss()V

    .line 440
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$7;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/PhotoViewer;->dismiss()V

    .line 444
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
