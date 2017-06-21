.class Lcom/vkcoffee/android/gifs/GifViewer$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GifViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/gifs/GifViewer$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/gifs/GifViewer$2;

.field private final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer$2;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$2$1;->this$1:Lcom/vkcoffee/android/gifs/GifViewer$2;

    iput-object p2, p0, Lcom/vkcoffee/android/gifs/GifViewer$2$1;->val$after:Ljava/lang/Runnable;

    .line 358
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$2$1;->val$after:Ljava/lang/Runnable;

    .line 361
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    invoke-static {v0}, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$2$1$$Lambda$1;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/ViewUtils;->post(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method
