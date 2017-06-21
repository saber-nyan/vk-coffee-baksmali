.class Lcom/vkcoffee/android/AudioAttachView$AnimatableLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AudioAttachView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioAttachView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatableLayerDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioAttachView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/AudioAttachView;[Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/vkcoffee/android/AudioAttachView$AnimatableLayerDrawable;->this$0:Lcom/vkcoffee/android/AudioAttachView;

    .line 382
    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioAttachView$AnimatableLayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioAttachView$AnimatableLayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 388
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioAttachView$AnimatableLayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 393
    return-void
.end method
