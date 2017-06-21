.class final Lme/grishka/appkit/imageloader/ViewImageLoader$1;
.super Ljava/lang/Object;
.source "ViewImageLoader.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    sget v1, Lme/grishka/appkit/R$id;->tag_image_load_task:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;

    .line 73
    .local v0, "task":Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ViewImageLoader$LoadTask;->cancel()V

    .line 75
    sget v1, Lme/grishka/appkit/R$id;->tag_image_load_task:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    :cond_0
    return-void
.end method
