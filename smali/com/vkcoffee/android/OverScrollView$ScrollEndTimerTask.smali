.class Lcom/vkcoffee/android/OverScrollView$ScrollEndTimerTask;
.super Ljava/util/TimerTask;
.source "OverScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/OverScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollEndTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/OverScrollView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/OverScrollView;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/vkcoffee/android/OverScrollView$ScrollEndTimerTask;->this$0:Lcom/vkcoffee/android/OverScrollView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/OverScrollView;Lcom/vkcoffee/android/OverScrollView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/OverScrollView;
    .param p2, "x1"    # Lcom/vkcoffee/android/OverScrollView$1;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/OverScrollView$ScrollEndTimerTask;-><init>(Lcom/vkcoffee/android/OverScrollView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/OverScrollView$ScrollEndTimerTask;->this$0:Lcom/vkcoffee/android/OverScrollView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/OverScrollView;->postScrollEnd()V

    .line 209
    return-void
.end method
