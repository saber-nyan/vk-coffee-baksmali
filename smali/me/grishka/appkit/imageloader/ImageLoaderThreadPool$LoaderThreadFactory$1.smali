.class Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory$1;
.super Ljava/lang/Thread;
.source "ImageLoaderThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;
    .param p2, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory$1;->this$0:Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageLoaderThread #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory$1;->this$0:Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;->access$104(Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool$LoaderThreadFactory$1;->setName(Ljava/lang/String;)V

    .line 47
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 48
    return-void
.end method
