.class Lcom/vkcoffee/android/AudioPlayerActivity$22$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$22;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

.field final synthetic val$aid:I

.field final synthetic val$bmp:Landroid/graphics/Bitmap;

.field final synthetic val$oid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$22;IILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/AudioPlayerActivity$22;

    .prologue
    .line 987
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iput p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->val$aid:I

    iput p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->val$oid:I

    iput-object p4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 989
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->val$aid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->val$oid:I

    if-eq v2, v3, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$22;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$1300(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    .line 993
    .local v1, "scroller":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 996
    const v2, 0x7f100195

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 997
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1001
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 1002
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
