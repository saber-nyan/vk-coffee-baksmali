.class public Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$2$1$$Lambda$1;
.super Ljava/lang/Object;
.source "GifViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/gifs/GifViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifViewer$2$1$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$2$1$$Lambda$1;->arg$1:Ljava/lang/Runnable;

    .line 716
    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 719
    new-instance v0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$2$1$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$2$1$$Lambda$1;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$2$1$$Lambda$1;->arg$1:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 724
    return-void
.end method
