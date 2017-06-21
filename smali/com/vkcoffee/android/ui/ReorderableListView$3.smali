.class Lcom/vkcoffee/android/ui/ReorderableListView$3;
.super Ljava/lang/Object;
.source "ReorderableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/ReorderableListView;->touchEventsEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/ReorderableListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ReorderableListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ReorderableListView;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ReorderableListView$3;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ReorderableListView$3;->this$0:Lcom/vkcoffee/android/ui/ReorderableListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/ReorderableListView;->invalidate()V

    .line 397
    return-void
.end method
