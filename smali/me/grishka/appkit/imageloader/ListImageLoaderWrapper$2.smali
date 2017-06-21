.class Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$2;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 68
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$2;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEverythingChanged()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$2;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 72
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$2;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$400(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;II)V

    .line 77
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$2;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$400(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;II)V

    .line 82
    return-void
.end method
