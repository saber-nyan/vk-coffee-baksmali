.class Lcom/vkcoffee/android/ui/GifView$AnimationRunner$1;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/GifView$AnimationRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/GifView$AnimationRunner;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/GifView$AnimationRunner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/GifView$AnimationRunner;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/vkcoffee/android/ui/GifView$AnimationRunner$1;->this$1:Lcom/vkcoffee/android/ui/GifView$AnimationRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/ui/GifView$AnimationRunner$1;->this$1:Lcom/vkcoffee/android/ui/GifView$AnimationRunner;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkcoffee/android/ui/GifView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/GifView;->requestLayout()V

    .line 271
    return-void
.end method
