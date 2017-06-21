.class Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;


# direct methods
.method private constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .param p2, "x1"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;-><init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v0, v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$600(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;I)V

    .line 372
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v0, v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$102(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Z)Z

    .line 373
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$202(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 374
    return-void
.end method
