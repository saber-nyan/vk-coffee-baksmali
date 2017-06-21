.class Lcom/vkcoffee/android/background/CancellableRunnable$2;
.super Ljava/lang/Object;
.source "CancellableRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/background/CancellableRunnable;->toRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/background/CancellableRunnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/background/CancellableRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/background/CancellableRunnable;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/background/CancellableRunnable$2;->this$0:Lcom/vkcoffee/android/background/CancellableRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable$2;->this$0:Lcom/vkcoffee/android/background/CancellableRunnable;

    invoke-static {v0}, Lcom/vkcoffee/android/background/CancellableRunnable;->access$000(Lcom/vkcoffee/android/background/CancellableRunnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable$2;->this$0:Lcom/vkcoffee/android/background/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/background/CancellableRunnable;->run()V

    .line 41
    :cond_0
    return-void
.end method
