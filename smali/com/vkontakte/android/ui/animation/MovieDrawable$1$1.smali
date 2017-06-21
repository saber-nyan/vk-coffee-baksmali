.class Lcom/vkontakte/android/ui/animation/MovieDrawable$1$1;
.super Ljava/lang/Object;
.source "MovieDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/animation/MovieDrawable$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/animation/MovieDrawable$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1$1;->this$1:Lcom/vkontakte/android/ui/animation/MovieDrawable$1;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1$1;->this$1:Lcom/vkontakte/android/ui/animation/MovieDrawable$1;

    invoke-static {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->access$0(Lcom/vkontakte/android/ui/animation/MovieDrawable$1;)Lcom/vkontakte/android/ui/animation/MovieDrawable;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mReadyCallback:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1$1;->this$1:Lcom/vkontakte/android/ui/animation/MovieDrawable$1;

    invoke-static {v1}, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->access$0(Lcom/vkontakte/android/ui/animation/MovieDrawable$1;)Lcom/vkontakte/android/ui/animation/MovieDrawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
