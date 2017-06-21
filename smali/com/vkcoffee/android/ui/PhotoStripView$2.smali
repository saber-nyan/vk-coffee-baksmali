.class Lcom/vkcoffee/android/ui/PhotoStripView$2;
.super Ljava/lang/Object;
.source "PhotoStripView.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ViewImageLoader$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoStripView;->getTargetFor(I)Lme/grishka/appkit/imageloader/ViewImageLoader$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/PhotoStripView;

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoStripView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/PhotoStripView;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoStripView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoStripView;

    iput p2, p0, Lcom/vkcoffee/android/ui/PhotoStripView$2;->val$item:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoStripView;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoStripView;

    iget v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView$2;->val$item:I

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 174
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView$2;->this$0:Lcom/vkcoffee/android/ui/PhotoStripView;

    iget v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView$2;->val$item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 169
    return-void
.end method
