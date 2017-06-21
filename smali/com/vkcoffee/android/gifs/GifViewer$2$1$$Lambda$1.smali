.class final synthetic Lcom/vkcoffee/android/gifs/GifViewer$2$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$2$1$$Lambda$1;->arg$1:Ljava/lang/Runnable;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer$2$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer$2$1$$Lambda$1;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$2$1$$Lambda$1;->arg$1:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
