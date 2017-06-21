.class Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$1;
.super Ljava/lang/Object;
.source "ViewImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    .prologue
    .line 132
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$1;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$1;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->access$200(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask$1;->this$0:Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->access$200(Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method
