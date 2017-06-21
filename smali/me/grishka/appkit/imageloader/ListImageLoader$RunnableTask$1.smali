.class Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$1;
.super Ljava/lang/Object;
.source "ListImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;)V
    .locals 0
    .param p1, "this$1"    # Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .prologue
    .line 246
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$1;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$1;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->access$100(Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$1;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->access$100(Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method
