.class public abstract Lcom/vkcoffee/android/background/CancellableRunnable;
.super Ljava/lang/Object;
.source "CancellableRunnable.java"


# instance fields
.field private isCanceled:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->isCanceled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/background/CancellableRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/background/CancellableRunnable;

    .prologue
    .line 3
    iget-boolean v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->isCanceled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/background/CancellableRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/background/CancellableRunnable;
    .param p1, "x1"    # Z

    .prologue
    .line 3
    iput-boolean p1, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->isCanceled:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->isCanceled:Z

    .line 10
    return-void
.end method

.method public getIsCanceled()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->isCanceled:Z

    return v0
.end method

.method public abstract run()V
.end method

.method public toOnceRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/vkcoffee/android/background/CancellableRunnable$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/background/CancellableRunnable$1;-><init>(Lcom/vkcoffee/android/background/CancellableRunnable;)V

    iput-object v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public toRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/vkcoffee/android/background/CancellableRunnable$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/background/CancellableRunnable$2;-><init>(Lcom/vkcoffee/android/background/CancellableRunnable;)V

    iput-object v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/background/CancellableRunnable;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method
