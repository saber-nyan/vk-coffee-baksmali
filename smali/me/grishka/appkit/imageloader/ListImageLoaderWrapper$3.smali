.class Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$3;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

.field updated:Z


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V
    .locals 1
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 143
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$3;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$3;->updated:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$3;->updated:Z

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$3;->updated:Z

    .line 149
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$3;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$500(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V

    goto :goto_0
.end method
