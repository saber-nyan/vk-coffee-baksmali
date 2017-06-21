.class Lcom/vkcoffee/android/PhotoViewer$4$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer$4;->fitSystemWindows(Landroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/PhotoViewer$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/PhotoViewer$4;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$4$1;->this$1:Lcom/vkcoffee/android/PhotoViewer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4$1;->this$1:Lcom/vkcoffee/android/PhotoViewer$4;

    invoke-virtual {v0}, Lcom/vkcoffee/android/PhotoViewer$4;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$4$1;->this$1:Lcom/vkcoffee/android/PhotoViewer$4;

    invoke-virtual {v0}, Lcom/vkcoffee/android/PhotoViewer$4;->requestLayout()V

    .line 313
    const/4 v0, 0x1

    return v0
.end method
