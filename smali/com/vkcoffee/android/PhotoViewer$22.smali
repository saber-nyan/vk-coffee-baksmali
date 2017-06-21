.class Lcom/vkcoffee/android/PhotoViewer$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->toggleControls()V
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
    .line 1100
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$22;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$22;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->access$2602(Lcom/vkcoffee/android/PhotoViewer;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 1104
    return-void
.end method
