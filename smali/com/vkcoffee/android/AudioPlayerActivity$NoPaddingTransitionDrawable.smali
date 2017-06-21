.class Lcom/vkcoffee/android/AudioPlayerActivity$NoPaddingTransitionDrawable;
.super Landroid/graphics/drawable/TransitionDrawable;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPaddingTransitionDrawable"
.end annotation


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 185
    return-void
.end method


# virtual methods
.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "pad"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    return v0
.end method
