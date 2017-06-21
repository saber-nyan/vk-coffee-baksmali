.class Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;
.super Ljava/lang/Object;
.source "ViewImageLoader.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ViewImageLoader$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ViewImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageViewTarget"
.end annotation


# instance fields
.field private view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 103
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;->view:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 107
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ViewImageLoader$ImageViewTarget;->view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method
