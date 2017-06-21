.class public Lcom/vkcoffee/android/ui/posts/PostHighlightDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "PostHighlightDrawable.java"


# instance fields
.field public extendBottom:I

.field public extendTop:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 11
    iput v0, p0, Lcom/vkcoffee/android/ui/posts/PostHighlightDrawable;->extendTop:I

    iput v0, p0, Lcom/vkcoffee/android/ui/posts/PostHighlightDrawable;->extendBottom:I

    .line 21
    return-void
.end method


# virtual methods
.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 37
    .local v0, "nrect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/vkcoffee/android/ui/posts/PostHighlightDrawable;->extendBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 38
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/vkcoffee/android/ui/posts/PostHighlightDrawable;->extendTop:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 39
    invoke-super {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 40
    return-void
.end method
