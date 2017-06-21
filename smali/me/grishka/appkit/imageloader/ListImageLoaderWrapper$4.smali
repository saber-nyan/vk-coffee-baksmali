.class Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$4;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 152
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$4;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    iput-object p2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$4;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$4;->this$0:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 156
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$4;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 157
    const/4 v0, 0x1

    return v0
.end method
