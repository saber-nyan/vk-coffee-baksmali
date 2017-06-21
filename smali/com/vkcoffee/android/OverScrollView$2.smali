.class Lcom/vkcoffee/android/OverScrollView$2;
.super Ljava/lang/Object;
.source "OverScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/OverScrollView;->postScrollEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/OverScrollView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/OverScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/OverScrollView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/vkcoffee/android/OverScrollView$2;->this$0:Lcom/vkcoffee/android/OverScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/OverScrollView$2;->this$0:Lcom/vkcoffee/android/OverScrollView;

    iget-object v0, v0, Lcom/vkcoffee/android/OverScrollView;->onScrollEndListener:Lcom/vkcoffee/android/OverScrollView$OnScrollEndListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/OverScrollView$2;->this$0:Lcom/vkcoffee/android/OverScrollView;

    iget-object v0, v0, Lcom/vkcoffee/android/OverScrollView;->onScrollEndListener:Lcom/vkcoffee/android/OverScrollView$OnScrollEndListener;

    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView$2;->this$0:Lcom/vkcoffee/android/OverScrollView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/OverScrollView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/OverScrollView$2;->this$0:Lcom/vkcoffee/android/OverScrollView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/OverScrollView;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/OverScrollView$OnScrollEndListener;->onScrollEnd(II)V

    .line 200
    :cond_0
    return-void
.end method
