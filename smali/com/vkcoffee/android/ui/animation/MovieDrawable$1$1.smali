.class Lcom/vkcoffee/android/ui/animation/MovieDrawable$1$1;
.super Ljava/lang/Object;
.source "MovieDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1$1;->this$1:Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1$1;->this$1:Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->mReadyCallback:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1$1;->this$1:Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
