.class public Lcom/vkcoffee/android/barcode/DecodeRunnable;
.super Ljava/lang/Object;
.source "DecodeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final camera:Landroid/hardware/Camera;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final height:I

.field private final previewBuffer:[B

.field private resultListener:Lcom/vkcoffee/android/barcode/DecodeResultListener;

.field private running:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/vkcoffee/android/barcode/DecodeRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera;Lcom/vkcoffee/android/barcode/DecodeResultListener;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "listener"    # Lcom/vkcoffee/android/barcode/DecodeResultListener;

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->activity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->camera:Landroid/hardware/Camera;

    .line 61
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 62
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 63
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iput v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->height:I

    .line 64
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->width:I

    .line 65
    iget v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->height:I

    iget v3, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->width:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->previewBuffer:[B

    .line 66
    iput-boolean v4, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->running:Z

    .line 67
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 68
    iput-object p3, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->resultListener:Lcom/vkcoffee/android/barcode/DecodeResultListener;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->running:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/barcode/DecodeRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->running:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/barcode/DecodeRunnable;)[B
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->previewBuffer:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Lcom/vkcoffee/android/barcode/DecodeResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->resultListener:Lcom/vkcoffee/android/barcode/DecodeResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .prologue
    .line 44
    iget v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->width:I

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/barcode/DecodeRunnable;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .prologue
    .line 44
    iget v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->height:I

    return v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/barcode/DecodeRunnable;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/barcode/DecodeRunnable;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->handler:Landroid/os/Handler;

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->running:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f100015

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 84
    new-instance v0, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/barcode/DecodeRunnable$DecodeHandler;-><init>(Lcom/vkcoffee/android/barcode/DecodeRunnable;)V

    iput-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->handler:Landroid/os/Handler;

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/barcode/DecodeRunnable;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 86
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 87
    return-void
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f100017

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vkcoffee/android/barcode/DecodeRunnable;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f100064

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    return-void
.end method
