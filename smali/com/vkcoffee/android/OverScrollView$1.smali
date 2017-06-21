.class Lcom/vkcoffee/android/OverScrollView$1;
.super Ljava/lang/Object;
.source "OverScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/OverScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    .line 79
    iput-object p1, p0, Lcom/vkcoffee/android/OverScrollView$1;->this$0:Lcom/vkcoffee/android/OverScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/OverScrollView$1;->this$0:Lcom/vkcoffee/android/OverScrollView;

    const/4 v1, 0x0

    const v2, 0x98967f

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/OverScrollView;->scrollTo(II)V

    .line 82
    return-void
.end method
