.class Lcom/vkcoffee/android/ui/URLDrawable$1;
.super Ljava/lang/Object;
.source "URLDrawable.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ViewImageLoader$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/URLDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/URLDrawable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/URLDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/URLDrawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/ui/URLDrawable$1;->this$0:Lcom/vkcoffee/android/ui/URLDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable$1;->this$0:Lcom/vkcoffee/android/ui/URLDrawable;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/URLDrawable;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable$1;->this$0:Lcom/vkcoffee/android/ui/URLDrawable;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/URLDrawable;->access$100(Lcom/vkcoffee/android/ui/URLDrawable;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable$1;->this$0:Lcom/vkcoffee/android/ui/URLDrawable;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/ui/URLDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable$1;->this$0:Lcom/vkcoffee/android/ui/URLDrawable;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/URLDrawable;->access$002(Lcom/vkcoffee/android/ui/URLDrawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/URLDrawable$1;->this$0:Lcom/vkcoffee/android/ui/URLDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/URLDrawable;->invalidateSelf()V

    .line 41
    :cond_0
    return-void
.end method
